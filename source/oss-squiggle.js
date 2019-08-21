// @flow

// ------------------------------------------------------------------------
//
// squiggle.js - Using http, we retrieve gesture information routed to
//               the server and output it to Max. This is meant to be
//               very simple - we basically ship out the entire request
//               body to Max and let it do its thing.
//
// ------------------------------------------------------------------------

const fs = require("fs");
const http = require("http");
const path = require("path");
const url = require("url");
const maxAPI = require("max-api");
const port = 2112;

// Thank you https://stackoverflow.com/a/29046869
function serveStatic(req, res) {
	console.log(`${req.method} ${req.url}`);

	// parse URL
	const parsedUrl = url.parse(req.url);
	// extract URL path
	let pathname = `.${parsedUrl.pathname}`;
	// based on the URL path, extract the file extention. e.g. .js, .doc, ...
	const ext = path.parse(pathname).ext || ".html";
	// maps file extention to MIME typere
	const map = {
		".ico": "image/x-icon",
		".html": "text/html",
		".js": "text/javascript",
		".json": "application/json",
		".css": "text/css",
		".png": "image/png",
		".jpg": "image/jpeg",
		".wav": "audio/wav",
		".mp3": "audio/mpeg",
		".svg": "image/svg+xml",
		".pdf": "application/pdf",
		".doc": "application/msword"
	};

	pathname = path.resolve(path.join(__dirname, "clientpage", pathname));

	fs.exists(pathname, (exist) => {
		if (!exist) {
			// if the file is not found, return 404
			res.statusCode = 404;
			res.end(`File ${pathname} not found!`);
			return;
		}

		// if is a directory search for index file matching the extention
		if (fs.statSync(pathname).isDirectory()) pathname += "/index" + ext;

		// read file from file system
		fs.readFile(pathname, (err, data) => {
			if (err) {
				res.statusCode = 500;
				res.end(`Error getting the file: ${err}.`);
			} else {
				// if the file is found, set Content-type and send data
				res.setHeader("Content-type", map[ext] || "text/plain");
				res.end(data);
			}
		});
	});
}

const requestHandler = (request, response) => {
	if (request.method === "GET") {
		serveStatic(request, response);
	}
	if (request.method === "POST") {
		let body = [];
		request.on("data", (chunk) => {
			body.push(chunk);
		}).on("end", () => {
			body = Buffer.concat(body).toString();
			try {
				let points = JSON.parse(body);
				maxAPI.outlet(points);
			} catch (err) {
				response.statusCode = 500;
				response.end(`Body should be JSON points: ${err}.`);
			}
			// at this point, `body` has the entire request body stored in it as a string
		});
		response.end("success");
	}
};

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
	if (err) {
		console.log("something bad happened", err);
	}

	console.log(`server is listening on ${port}`);
});
