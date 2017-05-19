<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet">
<script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/jquery.form/4.2.1/jquery.form.js"></script>
<title>添加文章</title>
</head>
<body>
	<div class="container">
	    <hr>
	    <a class="btn btn-primary" href="${root}/blog">返回主页</a>
	    <hr>
		<form id="blogform" role="form" method="post" enctype="multipart/form-data">
		    <div class="form-group">
			    <label for="name">选择文章类型 :</label>
			    <select class="form-control" name="type">
			      <option value="1">旅游趣事</option>
			      <option value="2">散文美文</option>
			      <option value="3">代码哲学</option>
			    </select>
		    </div>
			<div class="form-group">
				<label for="name">文章标题 :</label> 
				<input type="text" class="form-control" id="title" name="title" placeholder="请输入名称">
			</div>
			<div class="form-group">
				<label for="name">配图 :</label> 
				<input type="file" id="inputfile" name="inputfile">
                <img id="imgShow" src="" alt="Image" class="img-fluid tm-img">
			</div>
			<div class="form-group">
				<label for="name">文本框</label>
				<textarea id="text" name="text" class="form-control" rows="3"></textarea>
			</div>
			<button id="ajaxSubmit" type="button" class="btn btn-info">提交</button>
		</form>
	</div>
<script type="text/javascript">
var root="${root}";

$(function(){       //异步提交表单      
	$("#ajaxSubmit").on("click",function(){         
		//console.log($(this));         
		$("#blogform").ajaxSubmit({           
			type:'post',           
			url:'${root}/blog/upFile',           
			success:function(data){             
				console.log(data); 
				$("#imgShow").attr('src',root+"/upfile/"+data); 

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