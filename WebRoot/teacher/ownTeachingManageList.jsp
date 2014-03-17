<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'commonTeacherList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
    	<center>
    			<table border="1">
    				<tr>
    					<td>时间</td><td>审核状态</td><td>教学计划</td><td>教案</td><td>总结</td>
    					<td colspan="5">操作</td>
    				</tr>
    				<c:forEach items="${ownTeachingManageInfos}" var="t">
    				<tr> 
    					<td>${t.setTime}</td>
    					<td>${t.examState}</td>
    					<td>${t.teachPlan}</td>
    					<td>${t.lessonPlan}</td>
    					<td>${t.teacherSummary}</td>
    					<td>
    						<form action="teacherAct!uploadLessonPlan.action" method="post" enctype="multipart/form-data" >   
    						<input type="hidden" name="teachingManage.teachingManageId" value="${t.teachingManageId}"/>
    						<input type="hidden" name="course.courseId" value="${course.courseId}"/>
							<input type="file"  name="file"/>  
         					<input type="submit" value="上传教案计划">  
     						</form> 
     					</td>
     					<td>
    						<form action="teacherAct!uploadTeacherSummary.action" method="post" enctype="multipart/form-data" >   
    						<input type="hidden" name="teachingManage.teachingManageId" value="${t.teachingManageId}"/>
    						<input type="hidden" name="course.courseId" value="${course.courseId}"/>
							<input type="file"  name="file"/>  
         					<input type="submit" value="上传教案计划">  
     						</form> 
     					</td>
    					<td><a href="${t.teachPlan}">下载教学计划</a></td>
    					<td><a href="${t.lessonPlan}">下载教案</a></td>
    					<td><a href="${t.teacherSummary}">下载总结</a></td>
    				</tr>
    				</c:forEach>
    			</table>
    			<form action="teacherAct!uploadTeachPlan.action" method="post" enctype="multipart/form-data" >   
    			<input type="hidden" name="course.courseId" value="${course.courseId}"/>
					<input type="file"  name="file"/><br />  
         			<input type="submit" value="上传教学计划">  
     			</form>  
    	</center>
  </body>
</html>