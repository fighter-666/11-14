<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="style.css">
	-->
  </head>
  
  <body bgcolor="#eeceff">
<!--     请输入姓名：<input type="text" name="name" maxlength=10> <br> -->
<!--     <input type="button" onclick="javascript:window.location.href='mainpage.jsp';" value="enter"> -->

      <form action="mainpage.jsp" method="post">
    	请输入姓名:<input name="book" type="text" maxlength=10><br>
    	<input type="submit" value="enter">
    </form>
  </body>
</html>
