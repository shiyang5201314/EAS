<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chooseBranch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<link rel="stylesheet" type="text/css" href="css/body.css">
	
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

  </head>
  
  <body >
  <center>
		
		<div id="chobra">
		<h2>请选择分支机构:</h2>
		<form action="<%=basePath %>vocationManage!addVocation2.action" method="post" >
		<SELECT name="branchInfo.branchId" id="branch">
		
			<c:forEach items="${request.branchs }" var="b">
				<option value="${b.branchId }">${b.branchId }.${b.branchName }</option>
			</c:forEach>
			
		</SELECT>
		<input class="btn btn-default" type="submit" id="chooseBraSub" value="确定"/>
		</form>
	</div>
	</center>
  </body>
</html>
