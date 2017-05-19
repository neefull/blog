<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${root}/js/tether.min.js"></script>
<script src="${root}/js/jquery.singlePageNav.min.js"></script>
<link rel="stylesheet" href="${root}/css/templatemo-style.css">
<link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet">
<script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/jquery.form/4.2.1/jquery.form.min.js"></script>
<style type="text/css">
.form-bg{
    background: #00b4ef;
}
.form-horizontal{
    background: #fff;
    padding-bottom: 40px;
    border-radius: 15px;
    text-align: center;
}
.form-horizontal .heading{
    display: block;
    font-size: 35px;
    font-weight: 700;
    padding: 35px 0;
    border-bottom: 1px solid #f0f0f0;
    margin-bottom: 30px;
}
.form-horizontal .form-group{
    padding: 0 40px;
    margin: 0 0 25px 0;
    position: relative;
}
.form-horizontal .form-control{
    background: #f0f0f0;
    border: none;
    border-radius: 20px;
    box-shadow: none;
    padding: 0 20px 0 45px;
    height: 40px;
    transition: all 0.3s ease 0s;
}
.form-horizontal .form-control:focus{
    background: #e0e0e0;
    box-shadow: none;
    outline: 0 none;
}
.form-horizontal .form-group i{
    position: absolute;
    top: 12px;
    left: 60px;
    font-size: 17px;
    color: #c8c8c8;
    transition : all 0.5s ease 0s;
}
.form-horizontal .form-control:focus + i{
    color: #00b4ef;
}
.form-horizontal .fa-question-circle{
    display: inline-block;
    position: absolute;
    top: 12px;
    right: 60px;
    font-size: 20px;
    color: #808080;
    transition: all 0.5s ease 0s;
}
.form-horizontal .fa-question-circle:hover{
    color: #000;
}
.form-horizontal .main-checkbox{
    float: left;
    width: 20px;
    height: 20px;
    background: #11a3fc;
    border-radius: 50%;
    position: relative;
    margin: 5px 0 0 5px;
    border: 1px solid #11a3fc;
}
.form-horizontal .main-checkbox label{
    width: 20px;
    height: 20px;
    position: absolute;
    top: 0;
    left: 0;
    cursor: pointer;
}
.form-horizontal .main-checkbox label:after{
    content: "";
    width: 10px;
    height: 5px;
    position: absolute;
    top: 5px;
    left: 4px;
    border: 3px solid #fff;
    border-top: none;
    border-right: none;
    background: transparent;
    opacity: 0;
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
}
.form-horizontal .main-checkbox input[type=checkbox]{
    visibility: hidden;
}
.form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
    opacity: 1;
}
.form-horizontal .text{
    float: left;
    margin-left: 7px;
    line-height: 20px;
    padding-top: 5px;
    text-transform: capitalize;
}
.form-horizontal .btn{
    float: right;
    font-size: 14px;
    color: #fff;
    background: #00b4ef;
    border-radius: 30px;
    padding: 10px 25px;
    border: none;
    text-transform: capitalize;
    transition: all 0.5s ease 0s;
}
@media only screen and (max-width: 479px){
    .form-horizontal .form-group{
        padding: 0 25px;
    }
    .form-horizontal .form-group i{
        left: 45px;
    }
    .form-horizontal .btn{
        padding: 10px 20px;
    }
}
</style>

<title>后台管理</title>
</head>
<body>
	<div class="container">
	<hr>
    <a class="btn btn-primary" href="${root}/blog">返回主页</a>
    <hr>
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" role="form" id="managerform">
                <span class="heading">管理员验证</span>
                <div class="form-group">
                    <input type="text" class="form-control" name="name" placeholder="用户名:root">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" name="pwd" placeholder="pwd:123">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span>
                    <button id="ajaxSubmit" type="button" class="btn btn-default">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
var root="${root}";

$(function(){       //异步提交表单      
	$("#ajaxSubmit").on("click",function(){         
		$("#managerform").ajaxSubmit({           
			type:'post',           
			url:'${root}/login/login',           
			success:function(data){ 
				console.log(data);
				if(data=='list'){
				   alert("登录成功!");
				   window.location.href="${root}/login/list"
				} else {
					alert("登录失败!");
				}
			 },           
			error:function(XmlHttpRequest,textStatus,errorThrown){            
				console.log(XmlHttpRequest);             
				console.log(textStatus);             
				console.log(errorThrown);           
				}         
			});       
		});     
	}); 

function test(){
	var uf=$("#inputfile").val();
	$.ajax({
          url:"${root}/blog/upFile",//提交地址
          data:{inputfile:uf},
          type:"POST",
          enctype: 'multipart/form-data',
          success:function(re){
        	  console.log(re);
          }
      });
}


</script>
	
</body>
</html>