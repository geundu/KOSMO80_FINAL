<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<div class="d-flex justify-content-center">
	<div class="container">
		<div class="screen1"
			style="width: 100%; height: auto%; text-align: center; 
			background-color: E8EBEE; padding-bottom: 4px;">

<div class ="modal fade" id="selectModalXl" aria-labelledby="modalXl">
		<div class="screen3 modal-dialog modal-xl"
			style="width: 100%; height: auto%; background-color: E8EBEE;">
			<div class="container-fluid ">
				<div class="row" style="text-align: center;">
					<div class="col-md-3">
						<img src="images/doge.png"
							style="width: 200px; height: 200px; margin-top: 5%;">
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3" style="margin-top: 20%;">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">이름</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_STUDNET_NAME" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3" style="margin-top: 20%;">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학번</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								Id="A_STUDENT_NUMBER" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">대학</span>
							</div>
							<input type="text" class="form-coDntrol" readonly value=a
								id="A_COL" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학부</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_DEPT" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">학과</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_MAJOR" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">구분</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_STU_OR_PRO" aria-describedby="basic-addon3">
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="adminGetStatus">학적상태</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_REG_STATUS" aria-describedby="basic-addon3">
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="adminGetLastestReg">최근학적변동일자</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_DATE_LASTEST_REG" aria-describedby="adminGetLastestReg">
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="adminGetPassedGrade_Semester">최종 이수 학년
									및 학기</span>
							</div>
							<input type="text" class="form-control"
								readonly value=a id="A_PASSEDGRADE_SEMESTER"
								aria-describedby="adminGetPassedGrade_Semester">
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 2%; text-align: center;">
					<div class="col-md-3">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon3">입학연도</span>
							</div>
							<input type="text" class="form-control" readonly value=a
								id="A_STUDENET_ENTER_YEAR" aria-describedby="basic-addon3">
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
	</div>
</div>
