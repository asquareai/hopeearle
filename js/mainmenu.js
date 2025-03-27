jQuery(function($) {'use strict';

	// Navigation Scroll
	$(window).scroll(function(event) {
		//Scroll();
	});
	$("#WhoClk").click(function () {
	    $("#minus1").show();
	    $(".plus1").hide();
	    $("#minus3").hide();
	    $(".plus3").show();
	    $("#minus2").hide();
	    $(".plus2").show();
	    $("#demo").show(300);
	    $("#demo1").hide(300);
	    $("#demo2").hide(300);
	});
	$("#minus1").click(function () {
	    $("#minus1").hide();
	    $(".plus1").show();
	    $("#demo").hide(300);
	});

	$("#KeyClk").click(function () {
	    $("#minus2").show();
	    $(".plus2").hide();
	    $("#minus1").hide();
	    $(".plus1").show();
	    $("#minus3").hide();
	    $(".plus3").show();
	    $("#demo").hide(300);
	    $("#demo1").show(300);
	    $("#demo2").hide(300);
	});
	$("#minus2").click(function () {
	    $("#minus2").hide();
	    $(".plus2").show();
	    $("#demo1").hide(300);
	});


	$("#BigQClk").click(function () {
	    $("#minus3").show();
	    $(".plus3").hide();
	    $("#minus2").hide();
	    $(".plus2").show();
	    $("#minus1").hide();
	    $(".plus1").show();

	    $("#demo").hide(300);
	    $("#demo1").hide(300);
	    $("#demo2").show(300);
	});

	$("#minus3").click(function () {
	    $("#minus3").hide();
	    $(".plus3").show();
	    $("#demo2").hide(300);
	});

	$(window).bind('scroll', function () {
	    //var heightVal = $(window).height() - 100;
	    //if($(window).scrollTop()>10)
	    //{
	    //    debugger;
	    //    $(".navbar-fixed-top").addClass('animated slideInDown');
	    //    $(".navbar-fixed-top").addClass('navbar-fixed-top1');
	    //  //  $("#main-menu.navbar-default").addClass('main-menu.navbar-default1');
	    //    $(".scroll a").addClass('scroll1');
	    //    $(".logoimg").attr("src", "images/logo.png");
	    //    $(".logoimg").removeClass("logoimg1");
	    //    $(".logoimg").css("width", "100px");

	    //}
	    //else
	    //{
	    //    $(".navbar-fixed-top").removeClass('animated slideInDown');
	    //    $(".navbar-fixed-top").removeClass('navbar-fixed-top1');
	    //    $("#main-menu.navbar-default").removeClass('main-menu.navbar-default1');
	    //    $(".scroll a").removeClass('scroll1');
	    //    $(".logoimg").attr("src", "images/logo.png");
	    //    $(".logoimg").addClass("logoimg1");
	    //}


	});

	
	$('.navbar-collapse ul li a').on('click', function() {  
		$('html, body').animate({scrollTop: $(this.hash).offset().top - 5}, 1000);
		return false;
	});


	$(document).ready(function () {
	    $(".tab").click(function () {
	        $(this).css("border-bottom", "2px solid #09a4e0");
	        $(".tab1").css("border-bottom", "2px solid #e1e1e1");
	    });
	    $(".tab1").click(function () {
	        $(this).css("border-bottom", "2px solid #09a4e0");
	        $(".tab").css("border-bottom", "2px solid #e1e1e1");
	    });
	});


	// User define function
	//function Scroll() {
	//	var contentTop      =   [];
	//	var contentBottom   =   [];
	//	var winTop      =   $(window).scrollTop();
	//	var rangeTop    =   200;
	//	var rangeBottom =   500;
	//	$('.navbar-collapse').find('.scroll a').each(function(){
	//		contentTop.push( $( $(this).attr('href') ).offset().top);
	//		contentBottom.push( $( $(this).attr('href') ).offset().top + $( $(this).attr('href') ).height() );
	//	})
	//	$.each( contentTop, function(i){
	//		if ( winTop > contentTop[i] - rangeTop ){
	//			$('.navbar-collapse li.scroll')
	//			.removeClass('active')
	//			.eq(i).addClass('active');			
	//		}
	//	})
	//};

	$('#tohash').on('click', function(){
		$('html, body').animate({scrollTop: $(this.hash).offset().top - 5}, 1000);
		return false;
	});

	// accordian
	$('.accordion-toggle').on('click', function(){
		$(this).closest('.panel-group').children().each(function(){
		$(this).find('>.panel-heading').removeClass('active');
		 });

	 	$(this).closest('.panel-heading').toggleClass('active');
	});

	//Slider
	$(document).ready(function() {
		var time = 7; // time in seconds

	 	var $progressBar,
	      $bar, 
	      $elem, 
	      isPause, 
	      tick,
	      percentTime;
	 
	    //Init the carousel
	    $("#main-slider").find('.owl-carousel').owlCarousel({
	      slideSpeed : 500,
	      paginationSpeed : 500,
	      singleItem : true,
	      navigation : true,
			navigationText: [
			"<i class='fa fa-angle-left'></i>",
			"<i class='fa fa-angle-right'></i>"
			],
	      afterInit : progressBar,
	      afterMove : moved,
	      startDragging : pauseOnDragging,
	      //autoHeight : true,
	      transitionStyle : "fadeUp"
	    });
	 
	    //Init progressBar where elem is $("#owl-demo")
	    function progressBar(elem){
	      $elem = elem;
	      //build progress bar elements
	      buildProgressBar();
	      //start counting
	      start();
	    }
	 
	    //create div#progressBar and div#bar then append to $(".owl-carousel")
	    function buildProgressBar(){
	      $progressBar = $("<div>",{
	        id:"progressBar"
	      });
	      $bar = $("<div>",{
	        id:"bar"
	      });
	      $progressBar.append($bar).appendTo($elem);
	    }
	 
	    function start() {
	      //reset timer
	      percentTime = 0;
	      isPause = false;
	      //run interval every 0.01 second
	      tick = setInterval(interval, 10);
	    };
	 
	    function interval() {
	      if(isPause === false){
	        percentTime += 1 / time;
	        $bar.css({
	           width: percentTime+"%"
	         });
	        //if percentTime is equal or greater than 100
	        if(percentTime >= 100){
	          //slide to next item 
	          $elem.trigger('owl.next')
	        }
	      }
	    }
	 
	    //pause while dragging 
	    function pauseOnDragging(){
	      isPause = true;
	    }
	 
	    //moved callback
	    function moved(){
	      //clear interval
	      clearTimeout(tick);
	      //start again
	      start();
	    }
	});

	//Initiat WOW JS
	new WOW().init();
	//smoothScroll
	smoothScroll.init();

	// portfolio filter
	$(window).load(function(){'use strict';
		var $portfolio_selectors = $('.portfolio-filter >li>a');
		var $portfolio = $('.portfolio-items');
		$portfolio.isotope({
			itemSelector : '.portfolio-item',
			layoutMode : 'fitRows'
		});
		
		$portfolio_selectors.on('click', function(){
			$portfolio_selectors.removeClass('active');
			$(this).addClass('active');
			var selector = $(this).attr('data-filter');
			$portfolio.isotope({ filter: selector });
			return false;
		});
	});

	$(document).ready(function() {
		//Animated Progress
		$('.progress-bar').bind('inview', function(event, visible, visiblePartX, visiblePartY) {
			if (visible) {
				$(this).css('width', $(this).data('width') + '%');
				$(this).unbind('inview');
			}
		});

		//Animated Number
		$.fn.animateNumbers = function(stop, commas, duration, ease) {
			return this.each(function() {
				var $this = $(this);
				var start = parseInt($this.text().replace(/,/g, ""));
				commas = (commas === undefined) ? true : commas;
				$({value: start}).animate({value: stop}, {
					duration: duration == undefined ? 1000 : duration,
					easing: ease == undefined ? "swing" : ease,
					step: function() {
						$this.text(Math.floor(this.value));
						if (commas) { $this.text($this.text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")); }
					},
					complete: function() {
						if (parseInt($this.text()) !== stop) {
							$this.text(stop);
							if (commas) { $this.text($this.text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")); }
						}
					}
				});
			});
		};

		$('.animated-number').bind('inview', function(event, visible, visiblePartX, visiblePartY) {
			var $this = $(this);
			if (visible) {
				$this.animateNumbers($this.data('digit'), false, $this.data('duration')); 
				$this.unbind('inview');
			}
		});
	});

	// Contact form
	var form = $('#main-contact-form');
	form.submit(function(event){
		event.preventDefault();
		var form_status = $('<div class="form_status"></div>');
		$.ajax({
			url: $(this).attr('action'),
			beforeSend: function(){
				form.prepend( form_status.html('<p><i class="fa fa-spinner fa-spin"></i> Email is sending...</p>').fadeIn() );
			}
		}).done(function(data){
			form_status.html('<p class="text-success">Thank you for contact us. As early as possible  we will contact you</p>').delay(3000).fadeOut();
		});
	});

	//Pretty Photo
	$("a[rel^='prettyPhoto']").prettyPhoto({
		social_tools: false
	});

	//Google Map
	var latitude = $('#google-map').data('latitude');
	var longitude = $('#google-map').data('longitude');
	function initialize_map() {
		var myLatlng = new google.maps.LatLng(latitude,longitude);
		var mapOptions = {
			zoom: 14,
			scrollwheel: false,
			center: myLatlng
		};
		var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
		var marker = new google.maps.Marker({
			position: myLatlng,
			map: map
		});
	}
	google.maps.event.addDomListener(window, 'load', initialize_map);

});