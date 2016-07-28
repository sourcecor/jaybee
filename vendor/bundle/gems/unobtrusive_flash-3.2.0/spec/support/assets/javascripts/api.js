//=require jquery_ujs
//=require unobtrusive_flash
//=require ajax_caller
//=require_self

// simple handler to log all flashes into a variable accessible from the test suite
loggingFlashHandler = function(e, params) {
  if (typeof(window.flashMessages) == 'undefined') window.flashMessages = [];
  window.flashMessages.push(params);
};

$(window).bind('rails:flash', loggingFlashHandler);
