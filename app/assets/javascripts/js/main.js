
$(document).ready(function() {

    $(".new,.girl,.boy,.baby,.brands").fadeOut(0);

    $(".nav").mouseleave(function(){
        $(".nav").stop()
        $(".nav").fadeOut()

    })
    $("#content aside").mouseleave(function(){
        $("#content aside").stop()
        $("#content aside").fadeIn(0)

    })


// Menu


    $(".childrenNav").fadeOut(0)
    $("header").mouseleave(function(){
        $(".childrenNav").stop()
        $(".childrenNav").fadeOut()


    })

    if($(window).width()>769){
        $("#new a").click(function(){
            window.location.replace('/sites/products?category=1');
        })

        $("#girl").click(function(){
            window.location.replace('/sites/products?category=2');
        })

        $("#boy").click(function(){
            window.location.replace('/sites/products?category=3');
        })

        $("#baby").click(function(){
            window.location.replace('/sites/products?category=4');
        })

        $("#brands").click(function(){
            window.location.replace('/sites/products?category=5');
        })

        $("#member").mouseenter(function(){
            $(".childrenNav:eq(0)").stop()
            $(".childrenNav:eq(0)").fadeIn()
            $(".childrenNav:not(.childrenNav:eq(0))").fadeOut(0);
        })


    }
    $("#proList").mouseenter(function(){
        $(".childrenNav:eq(1)").stop()
        $(".childrenNav:eq(1)").fadeIn()
        $(".childrenNav:not(.childrenNav:eq(1))").fadeOut(0);
    });
    $(".moblieCover").css("display","none")
    $(".moblieCover,.mobileUser,.moblieCover .proList,.moblieCover .mobileSearch").fadeOut(0)
    if($(window).width()<769){

        $("#new").click(function(){
            $(".new").stop()
            $(".new").fadeToggle(0)
            $(".nav:not(.new)").fadeOut(0);
        })

        $("#girl").click(function(){
            $(".girl").stop()
            $(".girl").fadeToggle(0)
            $(".nav:not(.girl)").fadeOut(0);
        })

        $("#boy").click(function(){
            $(".boy").stop()
            $(".boy").fadeToggle(00)
            $(".nav:not(.boy)").fadeOut(0);
        })

        $("#baby").click(function(){
            $(".baby").stop()
            $(".baby").fadeToggle(0)
            $(".nav:not(.baby)").fadeOut(0);
        })

        $("#brands").click(function(){
            $(".brands").stop()
            $(".brands").fadeToggle(0)
            $(".nav:not(.brands)").fadeOut(0);
        })



        $(".grandsonNav").slideUp(0)
        for(i=0;i<$(".grandsonNav").length;i++){

            $(".subject:eq("+i+")").click({id:i},function(e){

                var $t = $(".grandsonNav:eq("+e.data.id+")");

                if ($t.is(':visible')){
                    $t.slideUp();
                    $(".subject a i:eq("+e.data.id+")").addClass('bt-caret-left').removeClass('bt-caret-down');
                }
                else{
                    $t.slideDown();
                    $(".subject a i:eq("+e.data.id+")").addClass('bt-caret-down').removeClass('bt-caret-left');
                }



            })
        }

        $(".navSearch .bt-shopping-cart").click(function () {
            $(".moblieCover,.moblieCover .proList").fadeIn();
            $(".moblieCover").css("display","block")
            $(".moblieCover .mobileUser,.moblieCover .mobileSearch").fadeOut(0)
        })
        $(".navSearch .bt-user").click(function () {
            $(".moblieCover").css("display","block")
            $(".moblieCover,.moblieCover .mobileUser").fadeIn()
            $(".moblieCover .proList,.moblieCover .mobileSearch").fadeOut(0)
        })
        $(".navSearch .bt-search").click(function () {
            $(".moblieCover").css("display","block")
            $(".moblieCover,.moblieCover .mobileSearch").fadeIn()
            $(".moblieCover .proList,.moblieCover .mobileUser").fadeOut(0)
        })


        $(".moblieCover .bt-times").click(function(){
            $(".moblieCover").fadeOut()
            $(".moblieCover").css("display","none")

        })
        $(".mobileUser .login").click(function(){
            $(".moblieCover").fadeOut()
            $(".moblieCover").css("display","none")

        })


        $("footer article span").slideUp(0)
        $("footer").mouseleave(function(){
            $("footer article span").stop()
            $("footer article span").slideUp()

        })

        for(i=0;i<$("footer article .subject").length;i++){

            $("footer article .subject:eq("+i+")").click({id:i},function(e){
                $("footer article span").stop()
                $("footer article span:not(footer article span:eq("+e.data.id+"))").slideUp(300)
                $("footer article span:eq("+e.data.id+")").slideToggle(300)


            })


        }



    }
    // ----------------------------------------------------




    // back to top

    $("#back").fadeOut(0);

    $(window).scroll(function(){
        if($(window).scrollTop()==0){

            $("#back").stop()
            $("#back").fadeOut()
            $("header").removeClass(".boxShadow")


        }else{
            $("header").addClass(".boxShadow")
            $("#back").fadeIn()

        }
    })
    $("#back").hover(function(){

        $("#back").css("opacity","0.8")
    },function(){

        $("#back").css("opacity","1.0")
    })

    $("#back").click(function(){
        $("html,body").animate({scrollTop:"0px"})
    })
    // --------------------------------------------------------


    //reload on every screen size change
    var windowWidth = $(window).width();

    $(window).resize(function() {
        if(windowWidth != $(window).width()){
            window.location.reload();
            return;
        }
    });

    // --------------------------------------------------------



    //footerSlideUp
    fh=$("footer").height()-$("#footerBar").height()-10
    $("footer").animate({bottom:""+-fh+"px"},0);
    $("#footerBar").click(function(){
        if($("#footerBar i").hasClass('bt-caret-up'))//mouseWheel icon change
        {
            $("#footerBar i").addClass('bt-caret-down').removeClass('bt-caret-up');
            $("footer").animate({bottom:"0px"});

        }
        else
        {
            $("#footerBar i").addClass('bt-caret-up').removeClass('bt-caret-down');
            $("footer").animate({bottom:""+-fh+"px"});
            if($(window).width()<768){
                $("footer article span").slideUp(0)
            }
        };
    })
    // --------------------------------------------------------


    //OnlineService
    $("#feedback-tab").click(function() {
        $("#feedback-form").toggle("slide");
    });

    $("#feedback-form form").on('submit', function(event) {
        var $form = $(this);
        $.ajax({
            type: $form.attr('method'),
            url: $form.attr('action'),
            data: $form.serialize(),
            success: function() {
                $("#feedback-form").toggle("slide").find("textarea").val('');
            }
        });
        event.preventDefault();
    });
    // --------------------------------------------------------


    //Login
    $(".login").fancybox({
        width : '100%',
        maxWidth:'590px',
        height:'100%',
        padding:'0px',
        type: 'iframe',
        openEffect : 'elastic',
        openSpeed  : 150,
        closeEffect : 'elastic',
        closeSpeed  : 150,
    });



});