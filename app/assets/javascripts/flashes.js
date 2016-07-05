// Created by xuanyang on 6/10/16.
$(document).ready(function() {
  $(window).bind('rails:flash', function(e, params) {
    PNotify.prototype.options.styling = "jqueryui";
    new PNotify({
      title: params.type,
      text: params.message,
      type: params.type,
      addclass: "stack-modal"
    });
  });
});