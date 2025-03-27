jQuery(function ($) {
    'use strict';
    var careerVal = localStorage.getItem('career');
    var contactVal = localStorage.getItem('contact');
    var scrollEventS = true; if (careerVal == "true")
    { career(); }
    $(window).scroll(function (event) {
    });
    $(".scr").click(function () {
        $(".navbar-toggle").trigger('click');
    });
    $(".morebtn").click(function () {
        var idval = $(this).attr("id"); $(".user1").show();
        $(".user1").removeClass("animated zoomOut");
        $(".user1").addClass("animated zoomIn");
        $(".item1").css("display", "none");
        $(".client" + idval).show();
    });
    $(".scr").click(function () {
        $(".scroll").removeClass("active");
        $(this).addClass("active");
        $(this).parent().addClass("active");
    });
    $(".closebtn").click(function () {
        $(".user1").hide();
    }); $(".career_sub").click(function () {
        window.location.href = "index.html#get-in-touch1"; localStorage.setItem("career", "true");
    }); $(".contact_sub").click(function () {
        window.location.href = "index.html#get-in-touch";
        $(".tab").css("border-bottom", "2px solid #09a4e0");
        $(".tab1").css("border-bottom", "2px solid #e1e1e1");
        $(".careerID").hide(); $(".contactID").show();
        $(".contact").click();
    });
    $(".career").click(function () {
        debugger; $(".tab1").css("border-bottom", "2px solid #09a4e0");
        $(".tab").css("border-bottom", "2px solid #e1e1e1");
        $(".careerID").show();
        $(".contactID").hide();
        $(".iframeClass").css('display', 'block');
    }); $(".contact").click(function () {
        $(".tab").css("border-bottom", "2px solid #09a4e0");
        $(".tab1").css("border-bottom", "2px solid #e1e1e1");
        $(".careerID").hide(); $(".contactID").show();
        $(".iframeClass").css('display', 'none');
    }); $("#WhoClk").click(function () {
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
        if ($(window).scrollTop() > 50 && scrollEventS == true) {
            //$("#TopHeight").css("display", "none");
            $(".user1").hide();
            $(".navbar-fixed-top").addClass('animated slideInDown');
            $(".navbar-fixed-top").addClass('navbar-fixed-top1');
            $("#main-menu.navbar-default").addClass('main-menu.navbar-default1');
            $(".scroll a").addClass('scroll1'); $(".logoimg").attr("src", "Image/LOGO.png");
            $(".logoimg").removeClass("logoimg1"); $(".logoimg").css("width", "100px");
        }
        else {
            //$("#TopHeight").css("display", "block");
            $(".user1").hide();
            $(".navbar-fixed-top").removeClass('animated slideInDown');
            $(".navbar-fixed-top").removeClass('navbar-fixed-top1');
            $("#main-menu.navbar-default").removeClass('main-menu.navbar-default1');
            $(".scroll a").removeClass('scroll1');
            $(".logoimg").attr("src", "Image/LOGO.png");
            $(".logoimg").addClass("logoimg1");
        }
    });
    $('.navbar-collapse ul li a').on('click', function () {
        $('html, body').animate({ scrollTop: $(this.hash).offset().top - 5 }, 1000); return false;
    });
    $(document).ready(function () {
        $(".tab").click(function ()
        { $(this).css("border-bottom", "2px solid #09a4e0"); $(".tab1").css("border-bottom", "2px solid #e1e1e1"); $(".careerID").hide(); $(".contactID").show(); }); $(".tab1").click(function () { $(this).css("border-bottom", "2px solid #09a4e0"); $(".tab").css("border-bottom", "2px solid #e1e1e1"); $(".careerID").show(); $(".contactID").hide(); }); var hashVal = window.location.hash.substr(1); var ref = hashVal + "_link"; $(".scroll").removeClass("active"); $("." + ref).addClass("active");
    });
    function Scroll() {
        var contentTop = [];
        var contentBottom = [];
        var winTop = $(window).scrollTop();
        var rangeTop = 200; var rangeBottom = 500;
        $('.navbar-collapse').find('.scroll a').each(function () {
            contentTop.push($($(this).attr('href')).offset().top);
            contentBottom.push($($(this).attr('href')).offset().top + $($(this).attr('href')).height());
        })
        $.each(contentTop,
            function (i) {
                alert();
                // if (winTop > contentTop[i] - rangeTop) { $('.navbar-collapse li.scroll').removeClass('active').eq(i).addClass('active'); }
            })
    };
    $('#tohash').on('click', function () {
        $('html, body').animate({ scrollTop: $(this.hash).offset().top - 5 }, 1000); return false;
    });
    $('.accordion-toggle').on('click', function () {
        $(this).closest('.panel-group').children().each(function () { $(this).find('>.panel-heading').removeClass('active'); });
        $(this).closest('.panel-heading').toggleClass('active');
    }); $(document).ready(function () {
        var time = 7;
        var $progressBar,
            $bar, $elem, isPause, tick, percentTime;
        $("#main-slider").find('.owl-carousel').owlCarousel(
            {
                slideSpeed: 10000, paginationSpeed: 10000, singleItem: true, navigation: true, navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"], afterInit: progressBar, afterMove: moved, startDragging: pauseOnDragging, transitionStyle: "fadeUp"
            });
        function progressBar(elem) {
            $elem = elem; buildProgressBar(); start();

        }
        function buildProgressBar() {
            $progressBar = $("<div>", { id: "progressBar" }); $bar = $("<div>", { id: "bar" }); $progressBar.append($bar).appendTo($elem);
        }
        function start() {
            percentTime = 0;
            isPause = false;
            tick = setInterval(interval, 50);
        };
        function interval() {
            if (isPause === false) {
                percentTime += 1 / time;
                $bar.css({ width: percentTime + "%" });
                if (percentTime >= 100) {
                    $elem.trigger('owl.next')
                }
            }
        }
        function pauseOnDragging() {
            isPause = true;
        }
        function moved() {
            clearTimeout(tick); start();
        }
    });
    new WOW().init();
    smoothScroll.init();
    $(window).load(function () {
        'use strict'; var $portfolio_selectors = $('.portfolio-filter >li>a'); var $portfolio = $('.portfolio-items'); $portfolio.isotope({ itemSelector: '.portfolio-item', }); $portfolio_selectors.on('click', function () { $portfolio_selectors.removeClass('active'); $(this).addClass('active'); var selector = $(this).attr('data-filter'); $portfolio.isotope({ filter: selector }); return false; });
    });
    $(document).ready(function () {
        $('.progress-bar').bind('inview', function (event, visible, visiblePartX, visiblePartY) { if (visible) { $(this).css('width', $(this).data('width') + '%'); $(this).unbind('inview'); } }); $.fn.animateNumbers = function (stop, commas, duration, ease) { return this.each(function () { var $this = $(this); var start = parseInt($this.text().replace(/,/g, "")); commas = (commas === undefined) ? true : commas; $({ value: start }).animate({ value: stop }, { duration: duration == undefined ? 1000 : duration, easing: ease == undefined ? "swing" : ease, step: function () { $this.text(Math.floor(this.value)); if (commas) { $this.text($this.text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")); } }, complete: function () { if (parseInt($this.text()) !== stop) { $this.text(stop); if (commas) { $this.text($this.text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")); } } } }); }); }; $('.animated-number').bind('inview', function (event, visible, visiblePartX, visiblePartY) { var $this = $(this); if (visible) { $this.animateNumbers($this.data('digit'), false, $this.data('duration')); $this.unbind('inview'); } });
    });
    var form = $('#main-contact-form');
    form.submit(function (event) {
        event.preventDefault(); var form_status = $('<div class="form_status"></div>'); $.ajax({ url: $(this).attr('action'), beforeSend: function () { form.prepend(form_status.html('<p><i class="fa fa-spinner fa-spin"></i> Email is sending...</p>').fadeIn()); } }).done(function (data) { form_status.html('<p class="text-success">Thank you for contact us. As early as possible  we will contact you</p>').delay(3000).fadeOut(); });
    });
    $("a[rel^='prettyPhoto']").prettyPhoto({ social_tools: false });
    var latitude = $('#google-map').data('latitude');
    var longitude = $('#google-map').data('longitude');
   // function initialize_map() {
   //     var myLatlng = new google.maps.LatLng(latitude, longitude); var mapOptions = { zoom: 14, scrollwheel: false, center: myLatlng }; var map = new google.maps.Map(document.getElementById('google-map'), mapOptions); var marker = new google.maps.Marker({ position: myLatlng, map: map });
   // }
   // google.maps.event.addDomListener(window, 'load', initialize_map);
});
function career() {
    $(".tab1").css("border-bottom", "2px solid #09a4e0"); $(".tab").css("border-bottom", "2px solid #e1e1e1"); $(".careerID").show(); $(".contactID").hide(); $(".iframeClass").css('display', 'block'); localStorage.setItem('career', 'false');
}
function mobilemenu() {
    alert(1);
}