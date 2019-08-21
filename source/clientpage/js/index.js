// -----------------------------------------------------------------------
// Use mouse/touch actions to create a gesture that is sent to the server
// -----------------------------------------------------------------------

var squib;
var w = window.innerWidth;
var h = window.innerHeight;

var touching = false;

var prevTime = 0;
var startTime = 0;
var maxTime = 0;

var canvas = document.getElementById("squiggle");
var c = canvas.getContext("2d");
canvas.width = w;
canvas.height = h;

var url = window.location.href;

function Gesture() {
	this.points = [];
}

// point data prototype
function Point(x, y) {
	var d = Date.now();

	this.x = x;
	this.y = y;
	this.t = d - prevTime; // delta time
	prevTime = d;

	if (this.t > maxTime) {
		maxTime = this.t;
	}
}

function pointForEvent(e) {
	if (e.type.startsWith("mouse")) {
		return new Point(e.clientX / w, e.clientY / h);
	}
	const px = e.originalEvent.touches[0].clientX;
	const py = e.originalEvent.touches[0].clientY;
	return new Point(px / w, py / h);
}

// This is where we send the stored data to Max as JSON object
function sendGesture() {
	var outObj = {
		type: "gesture",
		maxT: maxTime,
		totT: Date.now() - startTime,
		size: squib.points.length,
		data: squib.points
	};

	console.log("Total gesture time: " + outObj.totT + " ms");

	var xhr = new XMLHttpRequest();
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
	xhr.send(JSON.stringify(outObj));
	xhr.onloadend = function () {
		squib = null;
	};
}

$(document).ready(function () {
	$(".container").bind("mousedown touchstart", function (e) {
		e.preventDefault();
		squib = new Gesture();

		touching = true;
		prevTime = Date.now();
		startTime = prevTime;
		maxTime = 0;

		// for every tick, we create a new "Point" object and push
		// it onto the "squib.points" array
		squib.points.push(pointForEvent(e));
		c.beginPath();
		c.arc(e.pageX, e.pageY, 10, 0, 2 * Math.PI);
		c.fill();
	});

	$(".container").bind("mousemove touchmove", function (e) {
		e.preventDefault();
		if (touching) {
			squib.points.push(pointForEvent(e));
			c.beginPath();
			c.arc(e.pageX, e.pageY, 10, 0, 2 * Math.PI);
			c.fill();
		}
	});

	$(".container").bind("mouseup touchend", function () {
		touching = false;
		sendGesture();
		c.clearRect(0, 0, w, h);
	});
});
