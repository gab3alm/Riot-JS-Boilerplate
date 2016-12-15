require("expose?$!jquery");
require("materialize-css/dist/css/materialize.min.css");
require("materialize-css/dist/js/materialize.min.js");

var riot = require('riot');
var route = require('riot-route');
require('./tags/sample.tag');
require('./tags/sample2.tag');



riot.mount('*');  // mount all tags
route.start(true); // start listening for URL change

var routes = route.create();
routes('', function(){
  riot.mount('#main-viewport', 'sample');
});
