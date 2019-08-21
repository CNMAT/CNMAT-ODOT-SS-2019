'use strict';
const Max = require('max-api');

var os = require('os');
var ifaces = os.networkInterfaces();

Object.keys(ifaces).forEach(function (ifname) {

	ifaces[ifname].forEach(function (iface) {
		if ('IPv4' !== iface.family || iface.internal !== false) {
      	// skip over internal (i.e. 127.0.0.1) and non-ipv4 addresses
      	return;
    }

	//don't catch the case whereby a single interface can have multiple IPs
	//this is a demo  :P
	var ipaddy = iface.address;
	Max.outlet(ipaddy);

  });
});
 