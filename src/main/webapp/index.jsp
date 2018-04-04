<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
</head>
<body>

	<div class="container" align="center">
		<div class="row">
			<div class="col-md-12">
				<h1>SSM 整合小实例--员工管理</h1>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="emps_table">
					<thead>
						<tr>
							<th>
								<input type="checkbox" id="check_all"/>
							</th>
							<th>编号</th>
							<th>姓名</th>
							<th>性别</th>
							<th>电子邮箱</th>
							<th>联系电话</th>
							<th>部门</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="employee">
							<tr>
								<td><input type='checkbox' class='check_item'/></td>
								<td>${employee.id }</td>
								<td>${employee.name }</td>
								<td>${employee.gender }</td>
								<td>${employee.email }</td>
								<td>${employee.tel }</td>
								<td>${employee.department.name }</td>
								<td>
									<button class="btn btn-primary btn-sm edit_btn">
										<span class="glyphicon glyphicon-pencil">编辑</span>
									</button>&nbsp;&nbsp;
									<button class="btn btn-danger btn-sm delete_btn">
										<span class="glyphicon glyphicon-trash">删除</span>
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>