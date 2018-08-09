<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
<!--  its working only for eclipse not any browser without any eclipse refresh --%>
<!--<div><img alt="" src="C:/Users/Johny Dev PC/workspace/imageu/src/main/webapp/static/images/1.jpg"> </div> -->
<%-- its working Both eclipse and any browser with eclipse refresh  then --%> 
 <div><img width="160" height="160" src="${pageContext.request.contextPath}/static/images/${image}"></div> 

</body>
</html>