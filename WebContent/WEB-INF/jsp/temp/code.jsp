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
                    <a href="${root}/blog" class="navbar-brand">主页</a>
                    <nav class="navbar navbar-full">
                        <div class="collapse navbar-toggleable-md" id="tmNavbar">                            
                            <ul class="nav navbar-nav">
                                <li class="nav-item">
		                             <a class="nav-link" href="${root}/blog/travel">旅游趣事</a>
		                       </li>
		                       <li class="nav-item">
		                             <a class="nav-link" href="${root}/blog/read">散文美文</a>
		                       </li>
		                       <li class="nav-item">
		                             <a class="nav-link" href="${root}/blog/code">代码哲学</a>
		                       </li>
		                       <li class="nav-item">
		                             <a class="nav-link" href="${root}/blog">联系交流</a>
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
				 <section id="tm-section-1" class="row tm-section2">
		             <div class="tm-white-curve-left col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-6">
		                 <div class="tm-white-curve-left-rec"></div>
		                 <div class="tm-white-curve-left-circle"></div>
		                 <div class="tm-white-curve-text">
		                     <p>
		                        For me, it is simply that one gets a greater depth of pleasure by visiting 
		                           and seeing a new world with one's own eyes.(远行总能给我们带来新的视野.)   
		                     </p> 
		                      <p>
		                        For me, it is simply that one gets a greater depth of pleasure by visiting 
		                           and seeing a new world with one's own eyes.(远行总能给我们带来新的视野.)   
		                     </p> 
		                      <p>
		                        For me, it is simply that one gets a greater depth of pleasure by visiting 
		                           and seeing a new world with one's own eyes.(远行总能给我们带来新的视野.)   
		                     </p> 
		                 </div>                        
		             </div>
		             
		             <div class="tm-flex-center col-xs-12 col-sm-6 col-md-6 col-lg-5 col-xl-6">
		                 <img src="${root}/img/nature01.jpg" alt="Image" class="img-fluid tm-img">
		             </div>
		         </section>
			
				<!-- footer -->
				<footer class="row tm-footer">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
						<p class="text-xs-center tm-footer-text">Copyright &copy;
							2016.Company name All rights reserved.</p>
					</div>
				</footer>
           </div>
            
            
            
        </div>
    </body>
</html>