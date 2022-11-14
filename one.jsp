<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'one.jsp' starting page</title>
    
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
  		从1到1000的完美数是：
    <%    
for (int i = 1; i < 1000; i++) {// 遍历1000以内的所有整数 
int sum = 0;// 定义和变量 
for (int j = 1; j < i; j++) { 
if (i % j == 0) {// 满足是i的因子,就累加 
sum += j; 
} 
}
if (sum == i) {// 满足因子之和等于i就打印该完数 
out.print(i+"&nbsp;&nbsp;&nbsp;");
} 
} 
%>
  </body>
</html>
