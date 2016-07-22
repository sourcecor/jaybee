$(document).ready(function () {
  $(".infoPhoto").fadeIn();
  $("#infoPhoto").focus();
  $(".infoProduct,.infoSize").fadeOut(0);
  $("#infoPhoto").click(function () {
    $(".infoPhoto").fadeIn();
    $(".infoContent div:not(.infoPhoto)").fadeOut(0);
  });
  $("#infoProduct").click(function () {
    $(".infoProduct").fadeIn();
    $(".infoContent div:not(.infoProduct)").fadeOut(0);
  });
  $("#infoSize").click(function () {
    $(".infoSize").fadeIn();
    $(".infoContent div:not(.infoSize)").fadeOut(0);
  });
  $(".chart").click(function () {
    $("#infoSize").focus();
    $(".infoSize").fadeIn();
    $(".infoContent div:not(.infoSize)").fadeOut(0);
    $("body").animate({scrollTop: "400px"});
  })

  // $(".mainImg:not(.mainImg:eq(0))").fadeOut(0);
  // for (i = 0; i < $(".proColor").length; i++) {
  //
  //   $(document).on('click', ".proColor:eq(" + i + ")", {id: i}, function (e) {
  //     $(".mainImg:eq(" + e.data.id + ")").fadeIn();
  //     $(".mainImg:not(.mainImg:eq(" + e.data.id + "))").fadeOut(0);
  //   })
  // }

  $(document).on('click', ".proColor", function (e) {
    $(this).addClass("active");
    $(this).siblings().removeClass("active");
    $(".proChart").removeClass("active");
  })

  $(document).on('click', ".proChart", function (e) {
    $(this).addClass("active");
    $(this).siblings().removeClass("active");
  })

})