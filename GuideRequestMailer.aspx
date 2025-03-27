<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuideRequestMailer.aspx.cs" Inherits="GuideRequestMailer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Hope Earle - Contact</title>    
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.transitions.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
     <link href="css/Hope-Earle.css" rel="stylesheet">
    <link rel="shortcut icon" href="Image/LOGO.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="js/portBox.slimscroll.min.js"></script>
    <link href="css/portBox.css" rel="stylesheet" />
    <script src="js/portBox.js"></script>
      <script src='https://www.google.com/recaptcha/api.js'></script>
    <script>
        $(document).ready(function () {
            $("#spinner").hide();
            $('#checkedval').attr('checked', false);
            $("#checkedval").val("Off");
            $('#gmap_canvas').addClass('scrolloff');
            $('#Maplocation').on('click', function () {
                $('#gmap_canvas').removeClass('scrolloff');
            });

            $("#gmap_canvas").mouseleave(function () {
                $('#gmap_canvas').addClass('scrolloff');
            })

            if ($(window).width() < 500) {

                $('.algcenter').removeClass('algcenter');
            }

            $(".datasubmit").click(function () {
                //alert();
                ContactEmail();
            });

            setTimeout(function () {

                $("body").css("background", "#fff");
                $("#main-slider").removeClass("hite");
            }, 100);
            $(window).resize(function () {

                if ($(window).width() < 600) {

                    $('#comment').removeClass('WidthComment');
                    $('#comment').addClass('WidthComments');

                }
                else {
                    $('#comment').addClass('WidthComment');
                    $('#comment').removeClass('WidthComments');
                }



                if ($(window).width() < 500) {

                    $('.algcenter').removeClass('algcenter');

                }
            });

        });

        function Func() {
            alert();
            $("#spinner").show();
        }

    </script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-108401788-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-108401788-1');
	</script>

	<script>
	!function(f,b,e,v,n,t,s)
	{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
	n.callMethod.apply(n,arguments):n.queue.push(arguments)};
	if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
	n.queue=[];t=b.createElement(e);t.async=!0;
	t.src=v;s=b.getElementsByTagName(e)[0];
	s.parentNode.insertBefore(t,s)}(window,document,'script',
	'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '175136539706743'); 
	fbq('track', 'PageView');
	</script>
	<noscript>
	<img height="1" width="1" 
	src="https://www.facebook.com/tr?id=175136539706743&ev=PageView
	&noscript=1"/>
	</noscript>
	<!-- End Facebook Pixel Code -->
	
	
    <style>


        .textcolor {
            font-family: "corporate_s_bqregular", sans-serif;
        }

        .scrolloff {
            pointer-events: none;
        }

        #main-slider .item {
            height: 509px !important;
            background-repeat: no-repeat;
            background-position: 50% 50%;
            background-size: cover;
        }

        .logoBak {
            margin-left: 288px;
            margin-top: 27px !important;
            max-width: 86%;
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#96ffffff', endColorstr='#96ffffff',GradientType=1 );
            padding: 80px;
            border-radius: 10px;
        }
          #recaptcha-demo div {
            width: auto !important;
            height: auto !important;
            text-align: right!important;
        }

        .dasBoard {
            width: 564px;
            position: absolute;
            top: 171px !important;
            left: 415px;
            color: white !important;
        }

        #contactpages {
            padding-top: 150px;
        }

        #Mergers {
            padding: 41px 0 !important;
            background: #003851;
        }

        .Client-image {
            max-width: 100%;
            width: 800px;
            margin: auto;
        }

            .Client-image::after {
                display: block;
                position: relative;
                background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0, #fff 100%);
                margin-top: -150px;
                height: 150px;
                width: 100%;
                content: '';
            }



        .folio-overview {
            display: none;
        }

            .folio-overview:hover {
                display: block;
            }



        #ExpertiseSecCls {
            background: #ffffff;
            padding: 50px;
            border: 1px solid hsla(60, 2%, 13%, 0.18);
        }

        .ExBorderRadius {
            text-align: center;
            border-radius: 308px;
            padding: 10px 0;
            padding-left: 10px;
            padding-right: 10px;
            position: absolute;
            width: 116px;
            border: 1px solid hsla(60, 2%, 13%, 0.18);
        }

        .titileHead {
            font-family: Calibri;
            text-align: left;
            font-size: 30pt;
            color: #0e455b;
        }

        .titileHeads {
            font-family: Calibri;
            text-align: left;
            font-size: 24px !important;
            color: Black;
        }

        .EXImgsize {
            width: 50px;
        }

        .ExpertCls:hover {
            border: 1px !important;
            border-color: #808080 !important;
            box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        }

        .Justify {
            text-align: justify;
        }

        .Philocls {
            background-color: hsl(207, 40%, 27%);
            position: relative;
            top: -139px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            height: 554px;
            border-radius: 10px;
        }

        .tab1 {
            text-align: left;
            padding: 5px;
            font-size: 18px;
            border-bottom: 2px solid #e1e1e1;
            margin-bottom: 30px;
            /*cursor: pointer;*/
        }

        .tab {
            text-align: left;
            padding: 5px;
            font-size: 18px;
            border-bottom: 2px solid #e1e1e1;
            margin-bottom: 30px;
            /*cursor: pointer;*/
        }

        .hite {
            height: 700px;
            background-color: #626264;
        }
    </style>
    <style>
        .success {
            color: #0d455d !important;
            font-size: 14px;
            font-weight: 100 !imporTANT;
            font-family: "corporate_s_bqregular", sans-serif;
        }

        .error {
            color: red !important;
            font-size: 14px;
            font-weight: 100 !imporTANT;
            font-family: "corporate_s_bqregular", sans-serif;
        }

        .service-icon {
            border-radius: 4px;
            color: #fff;
            display: inline-block;
            font-size: 36px;
            height: 90px;
            line-height: 90px;
            width: 90px;
            -webkit-transition: background-color 0.2s ease;
            transition: background-color 0.2s ease;
        }


        .our-services .col-sm-4 {
            border-right: 1px solid #f2f2f2;
            border-bottom: 1px solid #f2f2f2;
            padding-bottom: 50px;
        }

            .our-services .col-sm-4:nth-child(1),
            .our-services .col-sm-4:nth-child(2),
            .our-services .col-sm-4:nth-child(3),
            .our-services .col-sm-4:nth-child(4),
            .our-services .col-sm-4:nth-child(5),
            .our-services .col-sm-4:nth-child(6) {
                border-bottom: 0;
                padding-top: 30px;
            }

            .our-services .col-sm-4:nth-child(3),
            .our-services .col-sm-4:nth-child(6) {
                border-right: 0;
            }

        .service-info h3 {
            margin-top: 35px;
        }

        #main-menu.navbar-default .navbar-nav > li:after {
            display: block;
            content: '';
            border-bottom: solid 3px #0d455c;
            transform: scaleX(0);
            transition: transform 250ms ease-in-out;
            position: relative;
            top: -10px;
        }

        .ram:active {
            color: #1ab78d !important;
        }

        .contacttext {
            background-color: #f3f3f3 !important;
        }

        .toggle {
            /*background: rgba(0,0,0,.7) !important;*/
            /*-moz-box-shadow: 0 1px 3px 0 rgba(0,0,0,.75) !important;
            box-shadow: 0 1px 3px 0 rgba(0,0,0,.75) !important;*/
        }

        .contactmesg {
            font-family: GOTHIC !important;
            font-size: 14px;
            text-align: justify !important;
        }

        .form-control {
            border-radius: 0px !important;
        }
        /*.service-icon,
        a:hover {
            background-color: #1ab78d;
        }*/

        /*.tablesdat {
            -moz-box-shadow: 1px 0 5px #888;
            -webkit-box-shadow: 1px 0 5px #888;
            box-shadow: 1px 0 5px #888;

            font-size: 15px;

            margin: 1em auto;
            padding: 0;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            overflow: hidden;
            border: 1px thin;
            border-collapse: separate;

            border-spacing: 0;
            width: 600px;
            margin: 30px;

        }*/

        /*.table1 {
            -moz-box-shadow: 1px 0 5px #888;
            -webkit-box-shadow: 1px 0 5px #888;
            box-shadow: 1px 0 5px #888;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            text-align: justify;
            margin: 1em auto;
            padding: 0;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            overflow: hidden;
            border: 1px thin;
            border-collapse: separate;
        }

        .color {
            background-color: #66F;
        }*/
    </style>
</head><!--/head-->
<body id="home" class="homepage" style="background: #f4f4f4;">
     <form id="form1" runat="server">
    <div class="loader-icons" id="gifImage" runat="server" style="display: none"><img src=Image/Gif/loading.gif class=loader style="width:100px;" alt=""></div>
    <div class="loader-icon"><img src=Image/Gif/loading.gif class=loader style="width:100px" alt=""></div>
    <header id=header>
      <div id="headerTemplate">
	<!--
        <nav class="navbar navbar-default navbar-fixed-top" id="main-menu" style="background-color: hsla(0, 0%, 100%, 0.9); border-bottom-left-radius: 1em; border-bottom-right-radius: 1em; box-shadow: none !important; border: 1px solid hsla(0, 0%, 0%, 0.4) " role=banner>
            <div id="TopHeight" style="">
                <div class="row" style="">
                    <div class="col-sm-4 algcenter MobposView"> <a href="mailto:mail@hopeearle.com.au"><img class="imgsize" src="Image/Icon/mail.png" /> &nbsp;<span class="topFontCSS"><u>mail@hopeearle.com.au</u></span> </a> </div><div class="col-sm-4 col-xs-8 algcenter headeraddress">
                        <img class="imgsize" style="width:12px;" src="Image/Icon/phone.png" /> &nbsp;<span class="topFontCSS">
						Melbourne, VIC
                           
							<a class="Mouseover" style="display: inline-block;" href="tel:+61396003330">
                                <u>+61 3 9600 3330</u>
                            </a>
							
							
                        </span>
						<span class="topFontCSS">
						 <img class="imgsize" style="width:12px;visibility: hidden;" src="Image/Icon/phone.png" />
							 Bundall, QLD
							
							<a class="Mouseover"style="display: inline-block;" href="tel:+61756060001">
                                <u> +61 7 5606 0001</u>
                            </a>
							
                        </span>
                    </div><div class="col-sm-4 col-xs-4 algcenter MobposView1">
                        <a href="https://www.facebook.com/hope.earle.	yers" target="_blank">
                            <img style="width: 9px; margin-top: -4px; " src="Image/Icon/fac.png" />
                        </a> &nbsp;&nbsp; <a href="https://twitter.com/HopeEarle" target="_blank">
                            <img class="imgsize" src="Image/Icon/twit.png" />
                        </a> &nbsp;&nbsp; <a href="https://goo.gl/c9V7ZK" target="_blank">
                            <img class="imgsize" src="Image/Icon/LinkedIn.png" />
                        </a>
                    </div>
                </div>
            </div><div class=container>
                <div class=navbar-header>
                    <button class=navbar-toggle data-target=.navbar-collapse data-toggle=collapse type=button>
                        <span class=sr-only>Toggle navigation</span> <span class=icon-bar></span>
                        <span class=icon-bar></span> <span class=icon-bar></span>
                    </button> <a href=index.html class=navbar-brand><img src=Image/LOGO.png class=logoimg alt=logo></a>
                </div><div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav ">
                        <li class="scroll home1_link">
                            <a href="index.html#" class="scr sub-menuHome activelink"><b>Home</b></a>
                        </li>
                        <li class="scroll home1_link"> <a href=index.html#portfolio class="scr sub-menuPhilosophy"><b>Philosophy</b></a> </li>
                        <li class="scroll home1_link"> <a href="index.html#ExpertiseSecCls" class="scr sub-menuExpertise"><b>Expertise</b></a> </li>
                        <li class="scroll career get-in-touch1_link"><a href=index.html#PeopleContent class="scr sub-menuPeople "><b>People</b></a></li>
                        <li class="scroll career get-in-touch1_link"><a href="News.html" class="scr sub-menuNews"><b>News</b></a></li>
                        <li class="scroll contact get-in-touch_link"><a href="Contact.aspx" class="scr sub-menuContacts "><b>Contact</b></a></li>
                    </ul>
                </div>
            </div>
        </nav>-->
		</div>
    </header>


    <section id="contactpages">
        <div class="container">
            <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            </div>
            <div class="text-center our-services">
                <div class="row">


                    <div class="col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" style="margin-bottom: 41px; ">
                        <p class="titileHeadSubPage" style="position: relative; right: 4px;">Request a call back</p>
                        <div class="form-group" style="position: relative; right: 4px;">
                            <p>For any questions or queries or for a confidential, no-obligation discussion, Please <a href="tel:+61396003330" style=""><b>call us</b> </a>or complete the form below and one of our lawyers will get back to you promptly.</p>
                        </div>
                        <div class="form-group" style="position: relative; right: 4px;">
                            <p id="errorMsg" style="color:white;">aaaaa</p>
                        </div>
                        <div class="form-group row">

                            <div class="col-sm-6" style="padding: 10px; padding-right: 19px !important;">

                                <asp:TextBox runat="server" CssClass="form-control contacttext" onkeypress="return onlyAlphabets(event,this);" ID="Firstname"  placeholder="* First Name"></asp:TextBox>
                            </div>
                            <div class="col-sm-6" style="padding: 10px; padding-right: 19px !important;">

                                <asp:TextBox runat="server" class="form-control contacttext" onkeypress="return onlyAlphabets(event,this);" ID="Lastname" type="text" placeholder="* Last Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">

                            <div class="col-sm-6" style="padding: 10px; padding-right: 19px !important;">

                                <asp:TextBox runat="server" class="form-control contacttext" ID="companyname"   placeholder="Company"></asp:TextBox>
                            </div>
                            <div class="col-sm-6" style="padding: 10px; padding-right: 19px !important;">

                                <asp:TextBox runat="server" class="form-control contacttext" ID="position"  placeholder="Position"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">

                            <div class="col-sm-6" style="padding: 10px; padding-right: 19px !important;">

                                <asp:TextBox runat="server" class="form-control contacttext" ID="Phone" onkeypress="return isNumber(event)" maxlength="25"  placeholder="* Phone Number"></asp:TextBox>
                            </div>

                            <div class="col-sm-6" style="padding: 10px; padding-right: 19px !important;">

                                <asp:TextBox runat="server" class="form-control contacttext" ID="Email"  placeholder="* Email"></asp:TextBox>

                            </div>


                        </div>

                        <div class="form-group text-right" style="position: relative; right: 4px;">
                            <p id="errors" style="color: white; position: relative;">aaaaa</p>
                        </div>
                        <div class="form-group" style="position: relative; right: 6px;">

                            <textarea runat="server" class="form-control WidthComment" rows="5" id="comment" placeholder="* Type your message here" style=""></textarea>
                        </div>
                        <div class="form-group">
                            <p style="position: relative; right: 5px;">
                                <input type="checkbox" runat="server" id="checkedval" />   <span style="font-size: 13px;" class="textcolor">Subscribe to our newsletter for all the latest in legal news from Hope Earle</span>
                            </p>
                        </div>
                        <div class="form-group">

                            <p id="error" runat="server" style="position: relative; color: red; position: relative; right: 5px;"></p>

                        </div>

                        <div id="recaptcha-demo" data-sitekey="6Le5nrYUAAAAAMnHvmgHAqI6H7UOEnIIEzq01U37" data-callback="onCaptchaCallback" class="g-recaptcha"></div>
                        <div style="float: right; float: right; /* padding: 20px; */ padding-top: 13px; /* margin-left: 38px; */ position: relative; left: 7px;">
                            <button type="button" class="btn btn-primary datasubmit" style="margin-left: 144px; background-color: hsl(198, 74%, 21%); margin-right: 12px; padding: 2px !important; width: 124px; font-size: 15px !important; ">SEND ENQUIRY</button>
                            <asp:Button ID="ContactSubmit" runat="server"  style="display:none" OnClick="ContactSubmit_Click"/>
                        </div>
                        <!--   <button type="button" class="datasubmit">SEND ENQUIRY</button>-->
                    </div>
                    <!--[div id="spinner"]  [/div]-->
                    <div id="spinner"></div>

                    <div class="col-sm-6" style="margin-top: 80px;margin-bottom:10px;">
                        <div>
                            <span class="glyphicon glyphicon-map-marker" style="color: #1ab78d; position: relative; top: 9px; right: 30px;font-size: 22px; "></span>
                            
							<span class="addressFontCss" style="      font-weight: 600;  margin-right: 98px; ">MELBOURNE</span><br />
                            
							<span class="addressFontCss" style="margin-right: -15px;">Level 10, 575 Bourke Street,</span><br />
     
						   <span class="addressFontCss" style="">
                                Melbourne Victoria 3000,
                            </span>
                         
                       </div>
						
                   <div style="margin-top: 0px;margin-bottom: 22px;">

                            <span class="glyphicon glyphicon-earphone" style="color: #1ab78d;position: relative;top: 9px;right: 67px;font-size: 22px;"></span>
                             <span class="addressFontCss" style="margin-left: -32px;margin-right: 55px;"><a href="tel:+61396003330"><b>+61 3 9600 3330</b></a>
			          </span>

                        </div>



                   <div>
                            <span class="glyphicon glyphicon-map-marker" style="color: #1ab78d; position: relative; top: 9px; right: 29px;font-size: 22px; "></span>
                            
							<span class="addressFontCss" style="     font-weight: 600;   margin-right: 93px; ">GOLD  COAST</span><br />
                            
							<span class="addressFontCss" style="    margin-right: -30px;">Suite 20A, 155 Varsity Parade,</span><br />
     
						   <span class="addressFontCss" style="margin-right:-42px">
                                Varsity Lakes, Queensland 4227,
                            </span><br />
							
                            <span class="addressFontCss" style="margin-left: 3px;margin-right: 100px; ">Australia.</span><br />
            <br />
                       </div>

						    <div style="margin-top: -22px;margin-bottom:30px;">

                            <span class="glyphicon glyphicon-earphone " style="color: #1ab78d;position: relative;top: 9px;right: 33px;font-size: 22px;"></span>
                             <span class="addressFontCss" style="margin-right: 90px;"><a href="tel:61756060001"><b>+61 7 5606 0001</b></a>
			          </span>

                        </div>
                      
                        <div style="margin-top:10px;margin-bottom:30px;">

                            <span class="glyphicon glyphicon-envelope" style="position: relative;top: 9px;right: 25px;font-size: 22px;"></span>
                            <span class="addressFontCss" style="margin-right: 34px; position: relative; top: 3px; ">mail@hopeearle.com.au</span>


                        </div>
                    </div>

                </div>
            </div>




            <!--<iframe id="map_canvas1" src="https://www.google.co.in/maps/place/Chennai,+Tamil+Nadu/@13.0474098,79.9288092,10z/data=!3m1!4b1!4m5!3m4!1s0x3a5265ea4f7d3361:0x6e61a70b6863d433!8m2!3d13.0826802!4d80.2707184?hl=en" width="800" height="300" frameborder="0" style="border:0;width:100%;" allowfullscreen></iframe>-->
            <!--<div id="google-map" class="wow fadeIn" data-latitude="12.958475" data-longitude="80.244580" data-wow-duration="1000ms" data-wow-delay="400ms" ></div>-->


        </div>
    </section>


          </form>

    <!--<table border="1" style='border-collapse: collapse; border-color: rgba(128, 128, 128, 0.27); border-width: 1px;font-family:Calibri' class="tablesdat">
        <tr><td style="background-color:#eeeeee;padding: 10px;" class="firstcell"><b>First Name</b></td><td style="padding: 10px; width: 414px;" class="firstcell">FirstName </td></tr>
        <tr><td style="background-color:#eeeeee;padding: 10px;"><b>Last Name </b></td> <td style="padding: 10px; width: 414px; ">LastName </td></tr>
        <tr><td style="background-color:#eeeeee;padding: 10px;"><b>Company</b></td><td style="padding: 10px; width: 414px; ">Company </td></tr>
        <tr><td style="background-color:#eeeeee;padding: 10px;"><b>Position</b></td><td style="padding: 10px; width: 414px; "> Position </td></tr>
        <tr><td style="background-color:#eeeeee;padding: 10px;"><b>Phone Number</b></td><td style="padding: 10px; width: 414px; "> PhoneNumber </td></tr>
        <tr><td style="background-color:#eeeeee;padding: 10px;"><b>Email</b></td><td style="padding: 10px; width: 414px; ">Email</td></tr>
        <tr><td style="background-color:#eeeeee;padding: 10px;" class="firstcell"><b>Comment </b></td><td style="padding: 10px; width: 414px; " class="firstcell">  Comment  </td></tr>
    </table>-->

    <div id="Maplocation" class="Maplocation" style="display:none;">
        <div class="place"></div>
    </div>

     <div id="footerTemplate"></div>
    <!--/#footer-->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="js/portBox.slimscroll.min.js"></script>
    <script src="js/portBox.js"></script>


    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/MainJs.js"></script>
    <script src="js/common.js"></script>
    <script>
        var captchaVal = false;
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }


        function myFunction() {
            var email;

            email = document.getElementById("Email").value;

            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

            if (reg.test(Email.value) == false) {
                $("#Email").focus();
                $("#errors").removeClass("success");
                $("#errors").addClass("error");
                $("#error").html('');
                document.getElementById("errors").innerHTML = "* Invalid email address format";
                if ($("#errors").val() == "* Invalid email address format") {
                    $("#error").html('');
                }
                else {

                }
                return false;
            } else {
                $("#error").html('');
                $("#errors").html('');

            }

            return true;
        }

        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode == 32)
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }


        function ConvertRelPathToAbsPath(path) {

            var absPath = "";
            if (path.length > 0)
                absPath = window.location.protocol + '//' + location.host + "//" + path.substr(1);

            return absPath;
        }


        function Validationmsg(result)
        {
            if (result != '') {
                $.alert({
                    title: 'Alert!',
                    content: result,
                });

                return false;
            }
        }
        function ContactEmail() {
            // alert(1);


            var FirstName = $("#Firstname").val(),
                LastName = $("#Lastname").val(),
                   Email = $("#Email").val(),
                   Comment = $("#comment").val(),
                 // CheckSub = $("#checkedval").val(),
                  Position = $("#position").val(),
                  Company = $("#companyname").val(),
                PhoneNumber = $("#Phone").val();
            var error = $("#errors").html();

            var Subscriber;

            if (checkedval.checked) {
                $("#checkedval").val("On");
                Subscriber = "Yes";
            }
            else {
                $("#checkedval").val("Off");
                Subscriber = "No";

            }

            if (FirstName == "") {
            
                Validationmsg('Please enter full name');
                //$("#errorMsg").html('* Please fill in required fields');
                $("#Firstname").focus();
                return false;

            }
            else if (LastName == "") {
                
                Validationmsg('Please enter last name');
               
                $("#Lastname").focus();
                return false;
            }
            else if (PhoneNumber == "") {
               
                Validationmsg('Please enter phone number');

                return false;
                $("#Phone").focus();
            }
            else if (Email == "") {
                Validationmsg('Please enter email');
                $("#Email").focus();
                return false;
            }

             var email = document.getElementById("Email").value;

            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

            if (reg.test(Email) == false) {
                Validationmsg('Invalid email address');
                $("#comment").focus();
                return false;
            }


            else if (Comment == "") {
                Validationmsg('Please enter comment');
                $("#comment").focus();
                return false;
            }

            else if (captchaVal == false) {
                Validationmsg('Please check recaptcha');

                return false;
            }
            else {
               
                    $("#gifImage").show();
                    $("#ContactSubmit").click();

              
            }





        }

        function ConvertRelPathToAbsPath(path) {

            var absPath = "";
            if (path.length > 0)
                absPath = window.location.protocol + '//' + location.host + '/' + path.substr(1);

            return absPath;
        }

        $(document).ready(function () {
            $("#footerTemplate").load("../../footer.html");
            setTimeout(function () {
                $(".loader-icon").hide()
            }, 2e3),
            $("#BigQClk").click(function () {
                $(this).find(".minus").toggle(), $(this).find(".plus").toggle(), $(".imageAppend").attr("src", "images/main-feature.png")
            }), $(".list-group-item").click(function () { $(this).find("a").trigger("click"); var i = $(this).find("a").text(); $("#portfolio-content").text(i), $(".portBox").hide(), $(".portBox-overlay").hide() }), $(".list-group-item a").click(function () { var i = $(this).text(); $("#portfolio-content").text(i), $(".portBox").hide(), $(".portBox-overlay").hide() }), $("#KeyClk").click(function () { $(".imageAppend").attr("src", "images/eap-mac-iphone-ipad-mockup.png") }), $("#WhoClk").click(function () { $(".imageAppend").attr("src", "images/responsive_design_mood_factory.png") })
        })</script>

    <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyAFmsfWMRX-bunB_Q7uTb77_dmULLJlK04'></script>
    <div style='overflow:hidden'>

        <style>
            #spinner {
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url(Image/Gif/load.gif) 50% 50% no-repeat;
                background-color: rgba(144, 144, 144, 0.26);
                background-size: 50px 50px;
            }


            #gmap_canvas img {
                max-width: none !important;
                background: none !important;
            }
        </style>
    </div>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <script>


        $(document).ready(function () {
            generateMap();
        });

        function generateMap() {
            var Address = 'Hope Earle Hope Level 4, 406 Collins Street, Melbourne Victoria 3000, Australia.';
            $(".Maplocation").css('display', 'block');
            var embed = "<iframe style='width:100%;height:300px;' frameborder='0'   scrolling='no' marginheight='0' marginwidth='0'    src='https://maps.google.com/maps?&amp;q=" +
                encodeURIComponent(Address) + "&amp;output=embed'></iframe>";
            $('.place').html(embed);
            $('.gm-style-cc').css('display', 'none');
        };

        function onCaptchaCallback() {
            var isMobile = window.matchMedia("only screen and (max-width: 760px)");
            if (isMobile.matches) {
                $(window).scrollTop(362);
            }
            captchaVal = true;
        }
    </script>

</body>
    </html>