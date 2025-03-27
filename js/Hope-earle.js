$(document).ready(function () {
    setTimeout(function () {
        $(".loader-icon").hide()
    }, 2e3),
    $("#BigQClk").click(function () {
        $(this).find(".minus").toggle(), $(this).find(".plus").toggle(), $(".imageAppend").attr("src", "images/main-feature.png")
    }), $(".list-group-item").click(function () { $(this).find("a").trigger("click"); var i = $(this).find("a").text(); $("#portfolio-content").text(i), $(".portBox").hide(), $(".portBox-overlay").hide() }), $(".list-group-item a").click(function () { var i = $(this).text(); $("#portfolio-content").text(i), $(".portBox").hide(), $(".portBox-overlay").hide() }), $("#KeyClk").click(function () { $(".imageAppend").attr("src", "images/eap-mac-iphone-ipad-mockup.png") }), $("#WhoClk").click(function () { $(".imageAppend").attr("src", "images/responsive_design_mood_factory.png") })
})
$(document).ready(function () {
    $("#bannerText").css("margin-top", (($("#main-slider").height() / 2) - ($("#bannerText").height() / 2)));
    $(".scr").click(function () {

        $(".scr").removeClass("activelink");
        $(this).addClass("activelink");
    });
    $(".ExpertCls").click(function () {
        window.location.href = 'Expertise.html';
    });
    $(".ConsumerProducts").click(function () {
        window.location.href = 'ConsumerProducts.html';
    });
    $(".InternetECommerce").click(function () {
        window.location.href = 'InternetECommerce.html';
    });

    $(".BusinessFraud").click(function () {
        window.location.href = 'WorkplaceFraud.html';
    });
    $(".Manufacturing").click(function () {
        window.location.href = 'Manufacturing.html';
    });
    $(".RealProperty").click(function () {
        window.location.href = 'RealProperty.html';
    });

    $(".Franchising").click(function () {
        window.location.href = 'Franchising.html';
    });

    $(".NotaryServices").click(function () {
        window.location.href = 'NotaryServices.html';
    });
    $(".StartVentures").click(function () {
        window.location.href = 'StartVentures.html';
    });
    $(".Migration").click(function () {
        window.location.href = 'Migration.html';
    });
    $(".Privacy").click(function () {
        window.location.href = 'Privacy.html';
    });
    $(".Corporate").click(function () {
        window.location.href = 'Corporate.html';
    });
    $(".Dispute").click(function () {
        window.location.href = 'Dispute.html';
    });
    $(".Employment").click(function () {
        window.location.href = 'Employment.html';
    });
	 $(".FamilyLaw").click(function () {
        window.location.href = 'FamilyLaw.html';
    });

    $(".Import").click(function () {
        window.location.href = 'Import.html';
    });     
    $(window).scroll(function () {
         var scroll = $(window).scrollTop();         
         if ($(window).width() < 500) {
           //  alert(scroll);
            if (scroll > 0 && scroll < 350) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuHome").addClass("activelink");
            }
            if (scroll > 351 && scroll < 1407) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuPhilosophy").addClass("activelink");
            }
            if (scroll > 1408 && scroll < 3083) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuExpertise").addClass("activelink");
            }
            if (scroll > 3084 && scroll < 9580) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuPeople").addClass("activelink");
            }
        }
         else {

            
            if (scroll > 0 && scroll < 614) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuHome").addClass("activelink");
            }
            if (scroll > 615 && scroll < 1215) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuPhilosophy").addClass("activelink");
            }
            if (scroll > 1216 && scroll < 2437) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuExpertise").addClass("activelink");
            }
            if (scroll > 2438 && scroll < 4500) {
                $('ul.navbar-nav').find('li').find('a').removeClass("activelink");
                $(".sub-menuPeople").addClass("activelink");
            }
        }
    });
    if ($(window).width() < 500) {
        $('.algcenter').removeClass('algcenter');
    }
    setTimeout(function () {
        $("body").css("background", "#fff");
        $("#main-slider").removeClass("hite");
    }, 100);
    $(window).resize(function () {
        $("#bannerText").css("margin-top", (($("#main-slider").height() / 2) - ($("#bannerText").height() / 2)));
        if ($(window).width() < 500) {
            $('.algcenter').removeClass('algcenter');
        }
    });
});
function peopleClick() {
    window.location.href = "robert-downing.html";
}
function jameshreflinkClick() {
    window.location.href = "james-ewan-hope.html";
}
function philliphreflinkClick() {
    window.location.href = "philip-earle.html";
}
function stephenhreflinkClick() {
    window.location.href = "stephen-newman.html";
}

function ASHLEYNGIONhreflinkClick() {
    window.location.href = "ashley-ngion.html";
}
function alancornellhreflinkClick() {
    window.location.href = "alan-cornell.html";
}
function RossClick() {
    window.location.href = "ross-hodgens.html";
}
function ClairehreflinkClick() {
    window.location.href = "claire-munro-smith.html";
}
function monahreflinkClick() {
    window.location.href = "mona-chaudhary.html";
}

function ClickNewsKnow() {
    window.location.href = "News.html";
}
function LouiselinkClick() {
    window.location.href = "Louise-Holden.html";
}
function MelindaClick() {
    window.location.href = "Melinda-Spendlove.html";
}
function LauraNewmanClick() {
    window.location.href = "Laura-Newman.html";
}
function davidClick() {
    window.location.href = "David-De-Alwis.html";
}
function LauraNichollsClick() {
    window.location.href = "Laura Nicholls.html";
}

	
