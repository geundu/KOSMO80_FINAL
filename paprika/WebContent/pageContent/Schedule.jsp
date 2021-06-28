<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>


<!-- Page Content start -->
 <!-- <div id="content" class="p-4 p-md-5">  -->
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid" stlye="float:left;">

          <button type="button" id="sidebarCollapse" class="btn btn-primary">
            <i class="fa fa-bars"></i>
            <span class="sr-only">토글 버튼 위치(글씨출력 x)</span>
          </button>

          <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
          </button>
          <!-- Page Content Header Start -->
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav">
              <!-- 현재보고있는 nav item은 calss active를 줄것. -->
              <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="http://localhost:9010/project/frameForm.jsp">Pprk.Main()</a></li>
  </ol>
              
              </nav>
              
<!--               <li class="nav-item active">
                <a class="nav-link" href="#">Page Content Header menu -1</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Page Content Header menu -2</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Page Content Header menu -3</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Page Content Header menu -4</a>
              </li>
            </ul> -->
          </div>
          <!-- Page Content Header end -->
        </div>
      </nav>
<!-- screen1 시간표 -->
<div class="d-flex justify-content-center">
	<div class="row">
		<div class="" style="height: auto%; background-color: ; text-align:center;">
			<h2>강의 시간표</h2>
			<table width=auto% height="600"
				style="color: #121212; border: 1px solid #000; margin: 10px; text-align: center;"
				st>

				<tr width=50px;>
					<th></th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
				</tr>
				<tr>
					<th>9</th>
					<td></td>
					<td rowspan="2"
						style="background-color: #ecc369; boarder: solid, #000000, 1px;">Practical
						English A2</td>
					<td rowspan="2" style="background-color: #f08676">해부생리학2</td>
					<td rowspan="2" style="background-color: #70a5e9">Practical
						English A4</td>
					<td rowspan="2" style="background-color: #75ca87">다문화가족건강</td>
				</tr>
				<tr>
					<th>10</th>
					<td></td>
				</tr>
				<tr>
					<th>11</th>
					<td style="background-color: #f08676">해부생리학2</td>
					<td></td>
					<td></td>
					<td></td>
					<td rowspan="2" style="background-color: #d397ed">창조와 몰입</td>
				</tr>
				<tr>
					<th>12</th>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>1</th>
					<td></td>
					<td rowspan="2" style="background-color: #a6c96f">삶과 철학</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>2</th>
					<td></td>
					<td rowspan="2" style="background-color: #7ad1c0">인간행동과심리</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>3</th>
					<td></td>
					<td></td>
					<td rowspan="2" style="background-color: #fbaa69">문학의이해</td>
					<td></td>
				</tr>
				<tr>
					<th>4</th>
					<td></td>
					<td></td>
					<td></td>
					<td rowspan="3" style="background-color: #9d86e0">의료보건글쓰기</td>
				</tr>
				<tr>
					<th>5</th>
					<td></td>
					<td></td>
					<td></td>
					<td rowspan="2" style="background-color: #f08676">노인심리학</td>
				</tr>
				<tr>
					<th>6</th>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>

		<!--오른쪽 메인프레임 시작-->
<div class=""
	style="height: auto%; width: auto%; background-color: ; text-align:center;">
	<h3>메모장</h3>
	<div class="form-group" style="width:600px;" >
		<textarea class="form-control" id="notePadForm" rows="25" placeholder="메모할 내용을 입력해주세요"></textarea>
	</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="./js/toggleAction.js"></script>

<script src="./project/js/controllers.js"></script>
<script src="./project/js/menuTemplate.js"></script>
<!-- 오른쪽 메인 프레임 끝-->
<!-- </div> -->
<!-- Page Content end -->