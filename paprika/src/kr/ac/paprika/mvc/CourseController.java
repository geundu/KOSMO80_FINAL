package kr.ac.paprika.mvc;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import kr.ac.paprika.common.HashMapBinder;

public class CourseController extends MultiActionController {
   Logger            logger      = Logger.getLogger(CourseController.class);
   private CourseLogic   courseLogic   = null;

   /**
    * 스프링으로부터 DI를 받기 위한 setter
    * 
    * @param courseLogic
    */
   public void setCourseLogic(CourseLogic courseLogic) {
      this.courseLogic = courseLogic;
   }

   /**
    * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ... 교수, 학생 분기가 있어야 함
    * 
    * @procedure
    * @PROC_STU_SELECT_ONLINE_COURSE
    * 
    * @param req
    * @P_STUDENT_NUMBER IN NUMBER
    * 
    * @param res
    * @STUDENT_NAME 학생이름
    * @SUBJECT_NAME 온라인 강좌이름
    * @PROFESSOR_NAME 교수이름
    * @ONLINE_LECTURE_CONTENT 강의설
    * 
    * @throws IOException
    * @throws ServletException
    * 
    *                          **포트 주의
    *                         http://localhost:7002/paprika/getOnlineCourseList.do?STUDENT_NUMBER=41
    */
   public void getOnlineCourseList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();
      res.setContentType("text/plain;charset=utf-8");

      hmb.bind(pMap); 
      List<Map<String, Object>> courseList = null;
      courseList = courseLogic.getOnlineCourseList(pMap);
      RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Online/Course.jsp");
      req.setAttribute("courseList", courseList);
      logger.info(courseList);
      dispatcher.forward(req, res);
   }

   /**
    * 강의조회 메서드 eg) 알고리즘 1강, 2강, ... 교수, 학생 분기가 있어야 함
    * 
    * @procedure
    * @PROC_ONLINE_LECTURE --> @PROC_STU_SELECT_ONLINE_LECTURE 로 수
    * 
    * @param req
    * @COURSE_NUMBER 강좌번
    * 
    * @param
    * @ol.ONLINE_LECTURE_FILE 강의파일 --> 페이지 양식과 달라서 빼놓
    * @ROWNUM 순번
    * @ol.ONLINE_LECTURE_TITLE 강의제목
    * @ol.ONLINE_REMARK 비고
    *
    * 
    * @throws IOException
    * @throws ServletException
    * 
    *                          **포트 주의
    *                          http://localhost:7002/paprika/getLectureList.do?STUDENT_NUMBER=41
    */
   public void getLectureList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();
      res.setContentType("text/plain;charset=utf-8");

      hmb.bind(pMap);
      List<Map<String, Object>> lectureList = null;
      lectureList = courseLogic.getLectureList(pMap);
      RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Online/Lecture.jsp");
      req.setAttribute("lectureList", lectureList);
      logger.info(lectureList);
      dispatcher.forward(req, res);
   }

   /**
    * 강의상세조회 메서드(강의동영상 여기서 조회) 교수도 강의조회 함 화면이 다르면 학생과 분기 있어야 함
    * 
    * @procedure
    * @PROC_STU_ONLINE_LECTURE_DETAIL
    * 
    * @param req
    * @P_ONLINE_LECTURE_NUMBER- 온라인강의번호
    * @P_STUDENT_NUMBER - 학생번호
    * 
    * @param res
    * @ol.ONLINE_LECTURE_FILE 강의제목
    * @ONLINE_LECTURE_VIDEO 강의영상주소
    * @HOMEWORK_FILE 업로드된 과제파일
    * 
    * @throws IOException
    * @throws ServletException
    * 
    *                          http://localhost:7002/paprika/getLectureDetail.do?ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41
    */
   public void getLectureDetail(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();
      res.setContentType("text/plain;charset=utf-8");

      hmb.bind(pMap);
      List<Map<String, Object>> lectureDetail = null;
      lectureDetail = courseLogic.getLectureDetail(pMap);
      RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Online/LectureDetail.jsp");
      req.setAttribute("lectureDetail", lectureDetail);
      dispatcher.forward(req, res);
   }

   /**
    * 과제제출 메서드
    * 
    * @procedure
    * @PROC_HOMEWORK_CUD
    * 
    * @param req
    * @TR_CODE CUD 구분 값
    * @P_HOMEWORK_NUMBER 강좌번호 - 삭제/ 수정사용
    * @P_ONLINE_LECTURE_NUMBER 강의번호 - 수정사용
    * @P_STUDENT_NUMBER 학생번호
    * @P_HOMEWORK_FILE 과제파일
    * 
    * @param res
    *  
    * @throws IOException
    * @throws ServletException
    * 
    *                          http://localhost:7002/paprika/homeworkInsert.do?cud=c&HOMEWORK_NUMBER=1&ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41&HOMEWORK_FILE=테스트
    */
   public void homeworkInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();

      hmb.bind(pMap);
      int result = 0;
      result = courseLogic.homeworkInsert(pMap);

      if (result == -1) {
         res.sendRedirect("../pageContent/Online/LectureDetail.jsp");
      }
      else {
         res.sendRedirect("/pageContent/Course/fail.jsp");
      }
   }

   /**
    * 제출한 과제 변경 메서드
    * 
    * @procedure
    * @PROC_HOMEWORK_CUD
    * 
    * @param req
    * @TR_CODE CUD 구분 값
    * @P_HOMEWORK_NUMBER 강좌번호 - 삭제/ 수정사용
    * @P_ONLINE_LECTURE_NUMBER 강의번호 - 수정사용
    * @P_STUDENT_NUMBER 학생번호
    * @P_HOMEWORK_FILE 과제파일
    * 
    * @param res
    * 
    * 
    * @throws IOException
    * @throws ServletException
    * 
    *                          http://localhost:7002/paprika/homeworkUpdate.do?cud=u&HOMEWORK_NUMBER=1&ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41&HOMEWORK_FILE=%ED%85%8C%EC%8A%A4%ED%8A%B8
    */
   public void homeworkUpdate(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();

      hmb.bind(pMap);
      int result = 0;
      result = courseLogic.homeworkUpdate(pMap);

      if (result == -1) {
         res.sendRedirect("../pageContent/Online/LectureDetail.jsp");
      }
      else {
         res.sendRedirect("/pageContent/Course/fail.jsp");
      }

   }

   /**
    * 피드백 보내기 메서드
    * 
    * @procedure
    * @PROC_STU_FEEDBACK_SEND_INSERT
    * 
    * @param req
    * @P_ONLINE_LECTURE_NUMBER 강의번호
    * @P_STUDENT_NUMBER 학생번호
    * @P_FEEDBACK_CONTENT 피드백내용
    * @P_FEEDBACK_TITLE 피드백제목
    * 
    * @param res
    * 
    * 
    * @return
    * @throws IOException
    * @throws ServletException
    * 
    *       http://localhost:7002/paprika/feedbackInsert.do?ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41&FEEDBACK_CONTENT=재밋는학사&FEEDBACK_TITLE=ㅈㅁ
    */
   public void feedbackInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();

      hmb.bind(pMap);
      int result = 0;
      result = courseLogic.feedbackInsert(pMap);

      if (result == -1) {
         res.sendRedirect("../pageContent/Online/Feedback.jsp");
      }
      else {
         res.sendRedirect("/pageContent/Course/fail.jsp");
      }

   }

   /**
    * 교수) 과제를 채점하고 UPDATE하는 메서드
    * 
    * @PROC_PRO_ONLINE_HOMEWORK_CONF
    * 
    * 
    * @param req
    * @P_STUDENT_NUMBER in NUMBER 학생번호
    * 
    * @param res
    * 
    * @throws IOException
    * @throws ServletException
    * 
    *                          http://localhost:7002/paprika/homeworkGrading.do?STUDENT_NUMBER=41
    */
   public void homeworkGrading(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();

      hmb.bind(pMap);
      int result = 0;
      result = courseLogic.homeworkGrading(pMap);

      if (result == -1) {
         res.sendRedirect("../pageContent/ProOnline/HomeworkCheck.jsp");
      }
      else {
         res.sendRedirect("/pageContent/Course/fail.jsp");
      }

   }

   /**
    * 교수) 제출된 과제 리스트를 확인하는 메서드
    * 
    * @procedure @ PROC_PRO_ONLINE_LEC_HOMEWORK
    * 
    * 
    * @param req
    * @P_ONLINE_LECTURE_NUMBER IN number 강의번호
    * 
    * @param res @rownum, 순번
    * @stu.STUDENT_NAME 학생이름
    * @hk.STUDENT_NUMBER 학생번호
    * @hk.HOMEWORK_FILE 업로드과제파일
    * @hk.HOMEWORK_CONFIRM 과제 확인 여부
    * @hk.HOMEWORK_UPLOAD_DATE 과제 업로드 날짜
    * @throws IOException
    * @throws ServletException
    * 
    *                          http://localhost:7002/paprika/getHomeworkList.do?ONLINE_LECTURE_NUMBER=3001
    */
   public void getHomeworkList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();
      res.setContentType("text/plain;charset=utf-8");

      hmb.bind(pMap);
      List<Map<String, Object>> homeworkList = null;
      homeworkList = courseLogic.getHomeworkList(pMap);
      RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/ProOnline/HomeworkCheck.jsp");
      req.setAttribute("courseList", homeworkList);
      dispatcher.forward(req, res);
   }

   /**
    * 교수) 받은 피드백 목록 확인
    * 
    * @procedure
    * @PROC_PRO_ONLINE_FEEDBACK
    * 
    * @param req
    * @ONLINE_LECTURE_NUMBER 온라인 강의 번호
    * 
    * 
    * @param res
    * @sub.SUBJECT_NAME 과목 / 강좌 이름
    * @ol.ONLINE_LECTURE_NUMBER 강의번호
    * @ol.ONLINE_LECTURE_TITLE 강의 제목
    * @fb.FEEDBACK_TITLE 피드백 제목
    * @fb.FEEDBACK_CONTENT 피드백 내용
    * @throws IOException
    * @throws ServletException
    * 
    *                          http://localhost:7002/paprika/getFeedbackList.do?ONLINE_LECTURE_NUMBER=3001
    */
   public void getFeedbackList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();
      res.setContentType("text/plain;charset=utf-8");

      hmb.bind(pMap);
      List<Map<String, Object>> feedbackList = null;
      feedbackList = courseLogic.getFeedbackList(pMap);
      RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/ProOnline/FeedbackCheck.jsp");
      req.setAttribute("courseList", feedbackList);
      dispatcher.forward(req, res);
   }
}