# Created by xuanyang on 6/10/16.
$(document).ready ->
  $(window).bind 'rails:flash', (e, params) ->
    PNotify.prototype.options.styling = "fontawesome";
    new PNotify(
      title: params.type,
      text: params.message,
      type: params.type)
    return
  return