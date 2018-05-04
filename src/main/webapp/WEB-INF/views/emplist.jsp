<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="content-wrapper">
	<div class="container-fluid">

		사번으로 검색 : 
			<form action="selectbyempno.htm">
				<input type="text" id="src_empno" name="src_empno">
				<input type ="submit" value = "검색">			
			</form>	
		<input class="btn btn-primary" type="button" id="emp_btn" value="전체검색">
		<input class="btn btn-primary" data-toggle="modal"
			data-target="#myModal1" type="button" id="mamodal1" value="추가">

		<br> <br> 부서번호로 검색 : <select name="deptno"
			id="search_deptno">
		</select> <br> <br>

		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i> Emp
			</div>

			<div class="card-body">
				<div class="table-responsive" id="targetdiv">
					<div align=center>
						<h2>Line Memo List</h2>
						<table style="width:100%" border=>
							<tr>
								<th>EMPNO</th>
								<th>ENAME</th>
								<th>JOB</th>
								<th>MGR</th>
								<th>HIREDATE</th>
								<th>SAL</th>
								<th>COMM</th>
								<th>DEPTNO</th>
							</tr>
							<c:forEach var="emp" items="${list}">
								<tr>
									<td>${emp.empno}</td>
									<td>${emp.ename}</td>
									<td>${emp.job}</td>
									<td>${emp.mgr}</td>
									<td>${emp.hiredate}</td>
									<td>${emp.sal}</td>
									<td>${emp.comm}</td>
									<td>${emp.deptno}</td>
									<td><a href="memberedit.htm?empno=${emp.empno}">[수정]</a></td>
									<td><a href="memberdelete?empno=${emp.empno}">[삭제]</a></td>

								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!-- end - targetdiv -->
			</div>

		</div>



	</div>
</div>


<!-- 추가하기 -->
<div id="myModal1" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Sign Up</h4>
			</div>
			<form action="EmpInsertServlet">
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<label for="exampleInputName">empno</label> <input
								class="form-control" name="empno" type="text"
								placeholder="Enter empno">
						</div>
						<div class="col-md-6">
							<label for="exampleInputLastName">ename</label> <input
								class="form-control" name="ename" type="text"
								placeholder="Enter ename">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<label for="exampleInputEmail1">job</label> <input
								class="form-control" name="job" type="text"
								placeholder="Enter job">
						</div>
						<div class="col-md-6">
							<label for="exampleInputPassword1">mgr</label> <input
								class="form-control" name="mgr" type="text"
								placeholder="Enter mgr">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<label for="exampleConfirmPassword">hiredate</label> <input
								class="form-control" name="hiredate" type="text"
								placeholder="Enter hiredate">
						</div>
						<div class="col-md-6">
							<label for="exampleInputPassword1">sal</label> <input
								class="form-control" name="sal" type="text"
								placeholder="Enter sal">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<label for="exampleConfirmPassword">comm</label> <input
								class="form-control" name="comm" type="text"
								placeholder="Enter comm">
						</div>
						<div class="col-md-6">
							<label for="exampleInputPassword1">deptno</label> <input
								class="form-control" name="deptno" type="text"
								placeholder="Enter deptno">
						</div>
					</div>
				</div>

				<input type="submit" value="추가하기" class="btn btn-primary btn-block">

			</form>
		</div>
	</div>
</div>



