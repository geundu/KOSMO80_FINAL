<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %> 
<%
	request.setCharacterEncoding("utf-8");
  
StringBuilder path = new StringBuilder(request.getContextPath());
path.append("/");
List<Map<String,Object>> scheduleList = null;
scheduleList = (List<Map<String,Object>>)request.getAttribute("scheduleList");
int size = 0;

Map<String,Object> tmap = scheduleList.get(0);

if (scheduleList != null) {
	size = scheduleList.size();
	for(int i=0;i<size;i++){
	Map<String, Object> rmap = scheduleList.get(i);
	
	
	}
}
out.print("로우수:"+size);
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
			<table border="1">
				<tr width=50px;>
					<th>시간</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
				</tr>
<%
	int start = 9;
	String imsi="";
for(int i=0;i<size;i++){
	Map<String,Object> rmap = scheduleList.get(i);

%>				
				<tr>
					<td>
<%
	if(start<10){
		imsi="0"+start++ +":00";
	}else{
		imsi=start++ +":00";
	}
	out.print(imsi);
	
	String MON = String.valueOf(rmap.get("MON"));
	if(MON.equals("null")){MON=" ";}
	String THU = String.valueOf(rmap.get("THU"));
	if(THU.equals("null")){THU=" ";}
	String WEN = String.valueOf(rmap.get("WEN"));
	if(WEN.equals("null")){WEN=" ";}
	String THI = String.valueOf(rmap.get("THI"));
	if(THI.equals("null")){THI=" ";}
	String FRI = String.valueOf(rmap.get("FRI"));
	if(FRI.equals("null")){FRI=" ";}

	
	
	
	
%>					
					</td>
					<td><%=MON %></td>
					<td><%=THU %></td>
					<td><%=WEN %></td>
					<td><%=THI %></td>
					<td><%=FRI %></td>
</td>                     
				</tr>
<%
}
%>
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