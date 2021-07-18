<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.*" %>
      <% request.setCharacterEncoding("utf-8"); StringBuilder path=new StringBuilder(request.getContextPath());
        path.append("/"); List<Map<String, Object>> scheduleList = null;
        scheduleList = (List<Map<String, Object>>) request.getAttribute("scheduleList");

          int size = 0;

          if (scheduleList != null) {
          size = scheduleList.size();

          for (int i = 0; i < size; i++) { Map<String, Object> rmap = scheduleList.get(i);
            }
            }
            %>


            <!-- screen1 시간표 -->
            <div class="d-flex justify-content-center">
              <div class="row">
                <div class="" style="height: auto%; background-color:; text-align: center; width: 375px;">
                  <h2>강의 시간표</h2>
                  <TABLE Border="1" Cellpadding="5" Cellspacing="5" id="timetable">
                    <thead>
                      <tr>
                        <th style="width: 60px; ">/</th>
                        <th style="width: 60px;">월</th>
                        <th style="width: 60px;">화</th>
                        <th style="width: 60px;">수</th>
                        <th style="width: 60px;">목</th>
                        <th style="width: 60px;">금</th>
                      <tr>
                    </thead>
                    <tbody style="font-size: medium;">
                      <TR>
                        <th>1교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>2교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>3교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>4교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>5교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>6교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>7교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>8교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>9교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                      <TR>
                        <th>10교시</th>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                        <td>
                          <div class='className'></div>
                        </td>
                      </TR>
                    </tbody>
                  </TABLE>
                </div>

                <!--오른쪽 메인프레임 시작-->

              </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <script src="./js/toggleAction.js"></script>
            <script src="./project/js/controllers.js"></script>
            <script src="./project/js/menuTemplate.js"></script>
            <script type="text/javascript">

              /* https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=newyorkinms&logNo=220773010011 참고했음 아직 수정 필요 */
              window.onload = function () { //initTable();
                //$('#timetable > tbody > tr:eq(0) > td:eq(0)').css('background','#eeeeee') 
                // $('#timetable > tbody > tr:eq(0) > td:eq(0)').attr('rowspan',4); 
                // $('#timetable > tbody > tr:eq(1) > td:eq(0)').hide(); 
                // $('#timetable > tbody > tr:eq(2) > td:eq(0)').hide(); 
                //$('#timetable > tbody > tr:eq(3) > td:eq(0)').hide();
                $('#timetable').hide();
	<%for (int i = 0; i < size; i++) {
                  Map < String, Object > rmap = scheduleList.get(i);
                  int start_time = Integer.parseInt(rmap.get("COURSE_BEGIN_TIME").toString());
                  int end_time = Integer.parseInt(rmap.get("COURSE_END_TIME").toString());
                  int num = (end_time - start_time) + 1;

                  String MON = String.valueOf(rmap.get("MON"));
                  String TUE = String.valueOf(rmap.get("TUE"));
                  String WEN = String.valueOf(rmap.get("WEN"));
                  String THU = String.valueOf(rmap.get("THU"));
                  String FRI = String.valueOf(rmap.get("FRI"));%>
                    setRowspan(<%=start_time - 1 %>, 0, <%=num %>, "<%=MON%>");
                  setRowspan(<%=start_time - 1 %>, 1, <%=num %>, "<%=TUE%>");
                  setRowspan(<%=start_time - 1 %>, 2, <%=num %>, "<%=WEN%>");
                  setRowspan(<%=start_time - 1 %>, 3, <%=num %>, "<%=THU%>");
                  setRowspan(<%=start_time - 1 %>, 4, <%=num %>, "<%=FRI%>");
	<%}%>
                  /* setRowspan(6, 2, 4, '자료구조2'); */
                  $('#timetable').show();
              } //행 , 열 , span 값 , 클래스명 
              function setRowspan(rowIndex, colIndex, spanValue, className) {
                $(
                  '#timetable > tbody > tr:eq(' + rowIndex + ') > td:eq('
                  + colIndex + ')').attr('rowspan', spanValue);
                $(
                  '#timetable > tbody > tr:eq(' + rowIndex + ') > td:eq('
                  + colIndex + ') > .className').html(className);
                for (i = 1; i < spanValue; i++) {
                  let tempIndex = rowIndex + i;
                  //alert(tempIndex) 
                  $(
                    '#timetable > tbody > tr:eq(' + tempIndex
                    + ') > td:eq(' + colIndex + ')').hide();
                }
              }
            </script>
            <!-- <script src="./project/js/controllers.js"></script>
<script src="./project/js/menuTemplate.js"></script> -->
            <!-- 오른쪽 메인 프레임 끝-->
            <!-- </div> -->
            <!-- Page Content end -->