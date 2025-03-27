$(document).ready(function () {
                   
				   if($(location).attr('href').toLowerCase().indexOf('/news/') != -1){
					   $("#headerTemplate").load("../../header-nav.html");
				   }
				   else
				   {
					   $("#headerTemplate").load("./header-nav.html");
					   //document.getElementById("headerTemplate").innerHTML='<object type="text/html" data="header-nav.html"></object>';

				   }
			           
        })
		
		
		
(function($) {
    "use strict";
    
    $(window).load(function(){
	    
        //App.loader();
    });

    var App={
        init:function()
        {
            
            App.typing();
           
             	
        },
       
        typing:function()
        {
            $(".main-element1").each(function(){
                var $this = $(this);
                $this.typed({
                    strings: $this.attr('data-elements').split(','),
                    typeSpeed: 100, // typing speed
                    backDelay: 3000 // pause before backspacing
                });
            });
        },
        
       
    
			
    };
    App.init();

})(jQuery);


0

$(document).ready(function () {
    
    if ($('p:contains("Starting a new business? Getting the legal fundamentals right is crucial")').css('text-align', 'left')); {        
    }
});


/*+++++++++++++++++++++++++COMMON FUNCTIONS++++++++++++++++++++++++++++*/

/*KENBERG SLIDER*/



    //setTimeout(function () {
    //    alert(11111);
    //    $(".main-element").each(function(){
    //        var $this = $(this);
    //        alert(1111);
    //        $this.typed({
    //            strings: $this.attr('data-elements').split(','),
    //            typeSpeed: 100, // typing speed
    //            backDelay: 1000 // pause before backspacing
    //        });
    //    });
    //}, 3200);

// var fullscreenslider=function()
//  {
//      $("section.main-heading").vegas({
//	delay: 3000,
//    slides: [
//        { src: "images/bak3.jpg" },
//        { src: "images/bak2.jpg" },
//        { src: "images/bak3.jpg" },
//        { src: "images/bak4.jpg" }
//    ],animation: 'kenburns'
//});
//  }