<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<title>blog-center</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${root}/css/bootstrap.min.css">                                      
<link rel="stylesheet" href="${root}/css/templatemo-style.css">
<script src="${root}/js/jquery-1.11.3.min.js"></script>        
<script src="${root}/js/tether.min.js"></script>
<script src="${root}/js/bootstrap.min.js"></script>
<script src="${root}/js/jquery.singlePageNav.min.js"></script>
</head>
<body>
	 <body>
        <div class="container tm-container">
            <div class="row navbar-row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 navbar-container">
                    <a href="javascript:void(0)" class="navbar-brand" id="go-to-top">TOP</a>
                    <nav class="navbar navbar-full">
                        <div class="collapse navbar-toggleable-md" id="tmNavbar">                            
                            <ul class="nav navbar-nav">
                               <li class="nav-item">
		                             <a class="nav-link" href="#tm-section-1">旅游趣事</a>
		                       </li>
		                       <li class="nav-item">
		                             <a class="nav-link" href="#tm-section-2">散文美文</a>
		                       </li>
		                       <li class="nav-item">
		                             <a class="nav-link" href="#tm-section-3">心得感悟</a>
		                       </li>
		                       <li class="nav-item">
		                             <a class="nav-link" href="#tm-section-4">联系交流</a>
		                       </li>
                            </ul>
                        </div>
                    </nav>    
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                        &#9776;
                    </button>
                </div>
            </div>
            
             <div class="tm-page-content">                
                
                <!-- #home -->
                <section id="tm-section-1" class="row tm-section">
                    <div class="tm-white-curve-left col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-6">
                        <div class="tm-white-curve-left-rec"></div>
                        <div class="tm-white-curve-left-circle"></div>
                        <div class="tm-white-curve-text">
                            <h2 class="tm-section-header blue-text">Introduction</h2>
                            <p>
                                Strip HTML5 theme is another website. Praesent consectetur dictum massa eu tincidunt. Nulla facilisi. Nam tincidunt nec diam eget sollicitudin.
                            </p>
                            <p>
                                Morbi nec felis rutrum, faucibus odio sed, ullamcorper risus. Sed id condimentum neque, at iaculis ex. Praesent faucibus viverra ante id auctor. Pellentesque at risus ut arcu blandit consectetur.
                            </p>        
                        </div>                        
                    </div>

                    <div class="tm-home-right col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-6">
                        <h2 class="tm-section-header">Our Mission</h2>
                        <p class="thin-font">We provide 100% free responsive Bootstrap themes for everyone. No credit link is required to use our templates. Nulla ligula odio, consesquat sec justo ut, dictum tempus eros. Duis finibus pulvinar felis, at sollicitudin ante. Aliquam sed augue dui.</p>
                    </div>
                </section> <!-- #home -->
                
                <c:if test="${!empty bl}">
                   <c:forEach items="${bl}" var="blog">
                      <c:if test="${!empty blog.id}">
		                 <section id="tm-section-${blog.index}" class="row tm-section">
		                     <div class="tm-flex-center col-xs-12 col-sm-6 col-md-6 col-lg-5 col-xl-6">
		                        <img src="${root}/upfile/${blog.img}" alt="Image" class="img-fluid tm-img">
		                     </div>
		
		                     <div class="tm-white-curve-right col-xs-12 col-sm-6 col-md-6 col-lg-7 col-xl-6">
		                        
		                        <div class="tm-white-curve-right-circle"></div>
		                        <div class="tm-white-curve-right-rec"></div>
		                        
		                        <div class="tm-white-curve-text">
		                            <h2 class="tm-section-header red-text">${blog.title}</h2>
		                            <p class="thin-font">${blog.text}</p>    
		                        </div>
		                     </div>
		                </section>
                      </c:if>
                      
                      <c:if test="${empty blog.id}">
                      	<section id="tm-section-${blog.index}" class="row tm-section">
		                    <div class="tm-white-curve-left col-xs-12 col-sm-6 col-md-6 col-lg-7 col-xl-6">
		                        <div class="tm-white-curve-left-rec">
		                            
		                        </div>
		                        <div class="tm-white-curve-left-circle">
		                            
		                        </div>
		                        <div class="tm-white-curve-text">
		                            <h2 class="tm-section-header red-text">${blog.title}</h2>
		                            <p class="thin-font">${blog.text}</p>   
		                         </div>
		                    </div>
		                    <div class="tm-flex-center col-xs-12 col-sm-6 col-md-6 col-lg-5 col-xl-6">
		                        <img src="${root}/upfile/${blog.img}" alt="Image" class="img-fluid tm-img">
		                    </div>
                       </section>
                      </c:if>
                   </c:forEach>
                
                </c:if>

                <!-- #contact -->
                <section id="tm-section-4" class="row tm-section">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-5 col-xl-6 tm-contact-left">
                        <h2 class="tm-section-header thin-font col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">Send a message</h2>
                        <form action="#" method="post" class="contact-form">

                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-12 col-xl-6 tm-contact-form-left">
                                <div class="form-group">
                                    <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name"  required/>
                                </div>
                                <div class="form-group">
                                    <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email"  required/>
                                </div>
                                <div class="form-group">
                                    <input type="text" id="contact_subject" name="contact_subject" class="form-control" placeholder="Subject"  required/>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-12 col-xl-6 tm-contact-form-right">
                                <div class="form-group">
                                    <textarea id="contact_message" name="contact_message" class="form-control" rows="6" placeholder="Message" required></textarea>
                                </div>
                                <button type="submit" class="btn submit-btn">Send It Now</button>
                            </div>

                        </form>   
                    </div>

                    <div class="tm-white-curve-right col-xs-12 col-sm-6 col-md-6 col-lg-7 col-xl-6">
                        
                        <div class="tm-white-curve-right-circle"></div>
                        <div class="tm-white-curve-right-rec"></div>
                        
                        <div class="tm-white-curve-text">
                            
                            <h2 class="tm-section-header green-text">Contact Us</h2>
                            <p> 好记性,不如烂笔头 </p>

                            <h3 class="tm-section-subheader green-text">Our Address</h3>
                            <address>
                                                                                          中国.上海
                            </address>
                            
                            <div class="contact-info-links-container">
                                <span class="green-text contact-info">
                                	Tel: <a href="tel:18855952572" class="contact-info-link">18855952572</a></span>
                                <span class="green-text contact-info">
                                	Email: <a href="mailto:18855952572@163.com" class="contact-info-link">18855952572@163.com</a></span>    
                            </div>
                        </div>                        
                    </div>
                </section> <!-- #contact -->

                <!-- footer -->
                <footer class="row tm-footer">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <p class="text-xs-center tm-footer-text">Copyright &copy; 2016.Company name All rights reserved</a></p>
                    </div>
                </footer>                      
            </div>
        </div>
<script>     
        var bigNavbarHeight = 90;
        var smallNavbarHeight = 68;
        var navbarHeight = bigNavbarHeight;                 
    
        $(document).ready(function(){

            var topOffset = 180;

            $(window).scroll(function(){
               
                if($(this).scrollTop() > topOffset) {
                    $(".navbar-container").addClass("sticky");
                }
                else {
                    $(".navbar-container").removeClass("sticky");
                }

            });

            /* Single page nav
            -----------------------------------------*/

            if($(window).width() < 992) {
                navbarHeight = smallNavbarHeight;
            }

            $('#tmNavbar').singlePageNav({
               'currentClass' : "active",
                offset : navbarHeight
            });

            $('#tmNavbar').on("click", "a", null, function () {
                $('#tmNavbar').collapse('hide');               
            });

            // Handle nav offset upon window resize
            $(window).resize(function(){
                if($(window).width() < 992) {
                    navbarHeight = smallNavbarHeight;
                } else {
                    navbarHeight = bigNavbarHeight;
                }

                $('#tmNavbar').singlePageNav({
                    'currentClass' : "active",
                    offset : navbarHeight
                });
            });
            
            $('#go-to-top').each(function(){
                $(this).click(function(){ 
                    $('html,body').animate({ scrollTop: 0 }, 'slow');
                    return false; 
                });
            });
            
        });
    
</script>             

    </body>
</html>