<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateClass.jsp' starting page</title>
    
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
  
  <body>
  <%
  if(request.getAttribute("flush") != null ) {
  %>
  <meta http-equiv="refresh" content="0;URL=<%=basePath%>class!queryClass.action"> 
  <%} %>
   	
    <br/>	
    <center>
    <form action="<%=basePath%>class!updateClassInfo.action?classId=${request.classInfo.classId }" method="post">
    	<div style="width:300px;" class="input-group input-group-sm">
		 	 			<span class="input-group-addon">班 &nbsp; 级 名</span>
						<input type="text" value="${request.classInfo.className }" name="className" class="form-control" >
					</div>
    	
    	<div style="width:300px;" class="input-group input-group-sm">
			<span class="input-group-addon">所属年级</span>
			<select name="gradeId" class="form-control">
				<c:forEach items="${request.grade }" var="i">
			   		<option value=${i.gradeId } ${request.classInfo.gradeInfo.gradeId eq i.gradeId?"selected":"" }>
			   		${i.gradeName }
			   		</option>
			   	</c:forEach>
			   		<option value=0 ${empty request.classInfo.gradeInfo.gradeId?"selected":"" }>
			   		不属于任何年级
			   		</option>
			 </select>
		</div>
    	
    	<input class="btn btn-default" type="submit" value="提交修改">
    	
    </form>
    </center>
  </body>
</html>
