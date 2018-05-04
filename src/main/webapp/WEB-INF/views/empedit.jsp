<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="emp" value="${empedit}"></c:set>
	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header">추가하기</div>
			<div class="card-body">
				<form action="empedit.htm" method="post">
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<label for="exampleInputName">empno</label> <input
									class="form-control" name="empno" type="text"
									placeholder="Enter empno" value="${emp.empno}" readonly>
							</div>
							<div class="col-md-6">
								<label for="exampleInputLastName">ename</label> <input
									class="form-control" name="ename" type="text"
									placeholder="Enter ename" value="${emp.ename}">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<label for="exampleInputEmail1">job</label> <input
									class="form-control" name="job" type="text"
									placeholder="Enter job" value="${emp.job}">
							</div>
							<div class="col-md-6">
								<label for="exampleInputPassword1">mgr</label> <input
									class="form-control" name="mgr" type="text"
									placeholder="Enter mgr" value="${emp.mgr}">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<label for="exampleConfirmPassword">hiredate</label> <input
									class="form-control" name="hiredate" type="text"
									placeholder="Enter hiredate" value="${emp.hiredate}" readonly>
							</div>
							<div class="col-md-6">
								<label for="exampleInputPassword1">sal</label> <input
									class="form-control" name="sal" type="text"
									placeholder="Enter sal" value="${emp.sal }">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<label for="exampleConfirmPassword">comm</label> <input
									class="form-control" name="comm" type="text"
									placeholder="Enter comm" value="${emp.comm}">
							</div>
							<div class="col-md-6">
								<label for="exampleInputPassword1">deptno</label> <input
									class="form-control" name="deptno" type="text"
									placeholder="Enter deptno" value="${emp.deptno}">
							</div>
						</div>
					</div>

					<input type="submit" value="수정하기" class="btn btn-primary btn-block">
					<input type="button" onclick="location.href='tables.jsp'"
						value="취소" class="btn btn-primary btn-block">

				</form>
			</div>
		</div>
	</div>