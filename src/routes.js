var riot = require('riot');
var route = require('riot-route');

riot.mount('*');
route(function(scene){
  switch(scene){
    case 'sample2':
    riot.mount('#main-viewport', 'sample2');
    break;
    default:
    // root of website
    riot.mount('#main-viewport', 'sample');
    break;
  }
});

route.base('#');
route.start(true);