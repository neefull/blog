<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet">
<link href="http://www.bootcss.com/p/layoutit/css/bootstrap-combined.min.css" rel="stylesheet">
<script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="//cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"></script>
<script src="http://www.bootcss.com/p/layoutit/js/jquery.ui.touch-punch.min.js"></script>
<!-- <script src=""></script> -->
<script src="http://www.bootcss.com/p/layoutit/js/jquery-ui.js"></script>
<script src="http://www.bootcss.com/p/layoutit/js/jquery.htmlClean.js"></script>
</head>
<body>
	<div class="container-fluid">
		<hr>
		<a class="btn btn-primary" href="${root}/blog">返回主页</a>
		<hr>
		<div class="row-fluid">
			<div class="span8">
				<h3>欢迎:${user} 登录!</h3>
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>编号</th>
							<th>标题</th>
							<th>详情</th>
							<th>配图</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr class="success">
							<td>1</td>
							<td>散文</td>
							<td>01/04/2012 TB - Monthly</td>
							<td>102</td>
							<td>Default</td>
						</tr>
						<c:if test="${!empty bl}">
							<c:forEach items="${bl}" var="blog">
								<tr class="info">
									<td>${blog.indexId}</td>
									<td>${blog.title}</td>
									<td><a href="${root}/blog/detile?aid=${blog.indexId}">点击查看</a></td>
									<td>${blog.img}</td>
									<td><a href="${root}/blog/delete?aid=${blog.indexId}">删除</a></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
				<div class="row-fluid">
					<div class="span12">
						<div class="pagination">
							<ul>
								<li><a onclick="page(${cp})">上一页</a></li>
								<li><a onclick="page(${cp1})">${cp1}</a></li>
								<li><a onclick="page(${cp2})">${cp2}</a></li>
								<li><a onclick="page(${cp3})">${cp3}</a></li>
								<li><a onclick="page(${cp4})">${cp4}</a></li>
								<li><a onclick="page(${cp5})">${cp5}</a></li>
								<li><a onclick="page(${cp6})">下一页</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="span4">
				<form class="form-search">
					<input class="input-medium search-query" type="text" />
					<button type="submit" class="btn">查找</button>
				</form>
			</div>
		</div>
	</div>
<script type="text/javascript">
  function page(v){
		window.location.href="${root}/blog/page?page="+v;	  
  }
</script>
</body>
</html>