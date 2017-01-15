
(function (root, factory) {
  if ( typeof define === 'function' && define.amd ) {
    define([], factory(root));
  } else if ( typeof exports === 'object' ) {
    module.exports = factory(root);
  } else {
    root.smoothScroll = factory(root);
  }
})(typeof global !== 'undefined' ? global : this.window || this.global, function (root) {

  'use strict';



  var supports = 'querySelector' in document && 'addEventListener' in root;
  var settings, eventTimeout, fixedHeader, headerHeight, animationInterval;

  var defaults = {
    selector: '[data-scroll]',
    selectorHeader: '[data-scroll-header]',
    speed: 1000,
    easing: 'easeInOutCubic',
    offset: 0,
    updateURL: true,
    callback: function(){}
  };
