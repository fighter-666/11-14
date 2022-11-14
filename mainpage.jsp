<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mainpage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	a{
		
	}
	a:hover{
		color:#abc645;
		text-decoration:none;
	}
</style>
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
  		<%
  		Integer count=(Integer)application.getAttribute("count");

     if(count==null)

     {

     count=new Integer(0);

     }

     count++;

     application.setAttribute("count",count);
    	ArrayList books=(ArrayList)session.getAttribute("books");
    	if(books==null){
			books=new ArrayList();
    		session.setAttribute("books",books);
    	}
    	String book=request.getParameter("book");
    	if(book!=null){
    		book=new String(book.getBytes("ISO-8859-1"),"UTF-8");
    		books.add(book);
    	}
     %>
     目前共有<%=count %>人浏览了该页面！
     他们的名字是：
     <%
     	for(int i=0;i<books.size();i++){
     		out.println(books.get(i)+",");
     	}
      %>
  </body>
</html>
