$(document).ready(function(){

// Banner
$('section.distractful').distractful({
        parallax: true,         // true || false
        parallaxScroll: 225,    // How far the div will move. Default, no movement. lower num = faster
        controls: true,         // moving || true || false. use false to hide
        scrollSpeed: 1000,      // int. Default: 1000 (1 second)
        easing: 'easeInOutExpo',// false || 'easingFunctionName. Use an easing function. Requires Easing library. Set to 'false' to disable, will use jQuery animate
        auto: true,             // true  || false. default false. Turn on auto-play sliding.
        autoDirection: 'right', // right || left. default right. Which direction does the auto-play go
        pauseTime: 5000,        // int. How long until next slide. Default: 5000
        hoverPause: false,       // true || false. default false. Hover over distractful to stop auto-play
        showPagers: true,       // true || false. default true. Show the pagers
        touch:false,             // true || false. default true. Turn on touch events for mobile
        imageLoaded: function(){
            console.log('images loaded, ready to slide')
        },
        slideComplete: function(){
            console.log('slide done sliding')
        },
        slideRight: function(){
            console.log('slide right done')
        },
        slideLeft: function(){
            console.log('slide left done')
        },
        beforeSlide: function(){
            console.log('loaded before sliding')
        }
    });
	
  // ----------------------------------------------------
   
   

})    