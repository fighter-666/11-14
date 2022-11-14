<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'two.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="pink">
  		<div>
  			<span style="float:left">
  			 <a href="one.jsp">第一题 </a>
  			</span>
  			<span style="margin-left:600px">
  			 <a href="two.jsp">第二题 </a>
  			</span>
  			<span style="float:right">
  			 <a href="three.jsp">第三题 </a>
  			</span>
  		</div><br>
    九九乘法表如下： <br>
   		<% for(int i=1;i<=9;i++){ %>
<tr>
<% for(int j=1;j<=i;j++){ %> 
<td><%out.println(i+"*"+j+"="+(j*i)+"  "); %> </td>
</tr>
<% } %>
<br>
<% } %>
  </body>
</html>
