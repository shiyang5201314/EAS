<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'total_finance.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<link rel="stylesheet" type="text/css" href="css/body.css">


		<link rel="stylesheet" type="text/css"
			href="css/bootstrap-theme.min.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/main.js"></script>


		<style type="text/css">
body {
	width: 100%;
}
</style>
		<script type="text/javascript">
	<%if (!com.scusw.util.CheckPrivilege.checkPrivilege(2)) {%>
			$(document).ready(function(){
				$("#cw_ckgszd").removeAttr("onclick");
				$("#cw_ckgszd").attr("disabled","disabled");
			});
		<%}%>
	
	<%if (!com.scusw.util.CheckPrivilege.checkPrivilege(3)) {%>
			$(document).ready(function(){
				$("#cw_zjzdjl").removeAttr("onclick");
				$("#cw_zjzdjl").attr("disabled","disabled");
			});
		<%}%>
	
	</script>
		<script type="text/javascript">

function check(){ 
/* 	alert("asdasd"); */
	if ( totalSubmit.theme.value == "" || totalSubmit.money.value == "") {
		alert("标题和金额不能为空");
		return false; 
	}
	if(isMoney() || isNumber(totalSubmit.money.value)){
		
		var regu = "^[ ]+$"; 
		var re = new RegExp(regu); 
		return true; 
	}
else{
return false;
} 
}

	function isMoney(){   
		var regu = "^[0-9]+[\.][0-9]{0,3}$"; 
		var re = new RegExp(regu); 
		if (re.test(totalSubmit.money.value)) { 
			return true; 
		} else { 
		alert("请输入正确的金额格式");
			return false; 
		} 
	} 
	
	function isNumber( s ){   
var regu = "^[0-9]+$"; 
var re = new RegExp(regu); 
if (s.search(re) != -1) { 
return true; 
} else { 
return false; 
} 
} 

详细出处参考：http://www.jb51.net/article/4976.htm

	</script>

	</head>

	<body>
		<center>

			<div style="">

				<table border="1" style="position: relative; height: 500px;"
					class="table table-hover">
					<tr>
						<td style="width: 40%" class="warning">
							<center>
								<br />
								<br />
								<br />
								<br />
								当前分公司余额：${totalMoney }
								<br />
								<br />
								<br />
							</center>
							<center>
								<input id="cw_ckgszd" type="button" class="btn btn-default"
									onclick="window.location.href='<%=basePath%>totalFinanceAction!historyFinance.action'"
									value="查看历史明细" />
							</center>
						</td>
						<td class="success">
							<form name="totalSubmit" action="<%=basePath%>totalFinanceAction!addFinance.action"
								method="post">
								<center>
									新增一笔收支信息
									<br />
									<br />
								</center>
								<center>
									<SPAN style="margin-left: -150px;">收支标题：</SPAN>
									<input
										id="theme"
										style="width: 200px; margin-top: -23px; margin-left: 130px; height: 25px;"
										class="form-control" type="text"
										name="financialRecords.financialFrom" />
									<br />
									<SPAN style="margin-left: -150px;">涉及金额：</SPAN>
									<input
										id="money"
										style="width: 200px; margin-top: -23px; margin-left: 130px; height: 25px;"
										class="form-control" type="text"
										name="financialRecords.financialNum" />
									<br />
									收支类型：
									<select class="btn btn-default" name="financeType">
										<option value="-1">
											支出
										</option>
										<option value="1">
											收入
										</option>
									</select>
									<br />
									<br />
									描述：
									<textarea name="financialRecords.financialRemark" rows="7"
										cols="48"></textarea>
									<br />
									<br />
								<!-- 	<input id="cw_zjzdjl" type="submit"
										class="btn btn-default btn-lg" onclick="check();" value="提交" /> -->
										<button  class="btn btn-default btn-lg" onclick="return check()">提交1</button>
										 
								</center>
							</form>
						</td>
					</tr>
				</table>
			</div>
		</center>
	</body>
</html>
