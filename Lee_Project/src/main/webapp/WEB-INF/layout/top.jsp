<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>	
<c:set var="root" value="<%=request.getContextPath() %>"/>
<style type="text/css">
	div.topbgimg{
		position: absolute;
		width: 90%;
		height: 100px;
		padding: 0px;
    	border: 0;
   		padding: 0; 
   		background-image: url('image/bg_gnb.png');
    	background-position: center;
    	background-size: cover;
		min-height : 5%;
		margin-left: 5%;
	}
ul, li {
  margin: 0;
  padding: 0;
  list-style: none;
}

#main-menu > li {
  float: left;
  position: relative;
}

#main-menu > li > a {
  font-size: 20pt;
  color: rgba(255,255,255,0.85);
  text-align: center;
  text-decoration: none;
  letter-spacing: 0.05em;
  display: block;
  padding: 14px 36px;
  border-right: 1px solid rgba(0,0,0,0.15);
  text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
  padding-left: 38px;
}

#main-menu > li:nth-child(1) > a {
  border-left: 1px solid rgba(0,0,0,0.15);
}

#sub-menu {
  position: absolute;
  background: #5c3c21;
  opacity: 0;
  visibility: hidden;
  transition: all 0.15s ease-in;
  width: 150px;
}

#sub-menu > li {
  padding: 16px 28px;
}

#sub-menu > li >  a {
  text-decoration: none;
}

#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}

#sub-menu > li >  a:hover {
 text-decoration: underline;
}

</style>
</head>
<body>
<div class="topbgimg">
<br>
<ul id="main-menu">
  <li>
  	<a href="#">MENU</a>
  	<ul id="sub-menu">
  		<li><a href="#">파스타</a></li>
  		<li><a href="#">리조또</a></li>
  		<li><a href="#">스테이크</a></li>
  	</ul>
  </li>
    <li>
  	<a href="#">STORE</a>
  	  	<ul id="sub-menu">
  		<li><a href="#">파스타</a></li>
  		<li><a href="#">리조또</a></li>
  		<li><a href="#">스테이크</a></li>
  	</ul>
  </li>
    <li>
  	<a href="${root }/main.do">KIWAN PROJECT</a>
  </li>
    <li>
  	<a href="#">COMMUNITY</a>
  	  	<ul id="sub-menu">
  		<li><a href="#">파스타</a></li>
  		<li><a href="#">리조또</a></li>
  		<li><a href="#">스테이크</a></li>
  	</ul>
  </li>
  <li>
  	<a href="#">EVENT</a>
  	  	<ul id="sub-menu">
  		<li><a href="#">파스타</a></li>
  		<li><a href="#">리조또</a></li>
  		<li><a href="#">스테이크</a></li>
  	</ul>
  </li>
</ul>
</div>
</body>
</html>