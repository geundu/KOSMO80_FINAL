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
	Logger				logger		= Logger.getLogger(CourseController.class);
	private CourseLogic	courseLogic	= null;

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
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * **포트 주의 
	 * http://localhost:7002/paprika/getCourseList.do?STUDENT_NUMBER=13222001
	 *
	 */
	public void getCourseList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> courseList = null;
		courseList = courseLogic.getCourseList(pMap);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Course/Course.jsp");
		req.setAttribute("courseList", courseList);
		dispatcher.forward(req, res);
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ... 교수, 학생 분기가 있어야 함
	 * 
	 * @procedure
	 * @PROC_ONLINE_LECTURE
	 * 
	 * @param req
	 * @P_NUMBER 학생번호
	 * 
	 * @param res
	 * @S.STUDENT_NAME 학생이름
	 * @SUB.SUBJECT_NAME 과목명/강좌명
	 * @O.COURSE_NUMBER 강좌번호
	 * @O.ONLINE_LECTURE_TITLE 강의명
	 * @O.ONLINE_LECTURE_VIDEO 강의영상
	 * @C.COURSE_FILE 강좌자료
	 *
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * **포트 주의 
	 * http://localhost:7002/paprika/getLectureList.do?STUDENT_NUMBER=13222001
	 */
	public void getLectureList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> lectureList = null;
		lectureList = courseLogic.getLectureList(pMap);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Online/Lecture.jsp");
		req.setAttribute("lectureList", lectureList);
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
	 * lectureDetail
	 */
	public void getLectureDetail(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> lectureDetail = null;
		lectureDetail = courseLogic.getLectureList(pMap);
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
	 */
	public void homeworkInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pmap	= new HashMap<String, Object>();

		hmb.bind(pmap);
		int result = 0;
		result = courseLogic.homeworkInsert(pmap);

		if (result == 1) {
			res.sendRedirect("../index.jsp");
		}
		else {
			res.sendRedirect("등록실패 페이지 이동처리");
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
	 */
	public void homeworkUpdate(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pmap	= new HashMap<String, Object>();

		hmb.bind(pmap);
		int result = 0;
		result = courseLogic.homeworkUpdate(pmap);

		if (result == 1) {
			res.sendRedirect("../index.jsp");
		}
		else {
			res.sendRedirect("등록실패 페이지 이동처리");
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
	 */
	public void feedbackInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pmap	= new HashMap<String, Object>();

		hmb.bind(pmap);
		int result = 0;
		result = courseLogic.feedbackInsert(pmap);

		if (result == 1) {
			res.sendRedirect("../index.jsp");
		}
		else {
			res.sendRedirect("등록실패 페이지 이동처리");
		}
	}

	/**
	 * 교수) 과제를 채점하고 UPDATE하는 메서드
	 * @PROC_PRO_ONLINE_HOMEWORK_CONF
	 * 
	 * 
	 * @param req
	 * @P_STUDENT_NUMBER  in NUMBER 학생번호
	 * 
	 * @param res
	 * 
	 * @throws IOException
	 * @throws ServletException
	 */
	public void homeworkGrading(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pmap	= new HashMap<String, Object>();

		hmb.bind(pmap);
		int result = 0;
		result = courseLogic.homeworkGrading(pmap);

		if (result == 1) {
			res.sendRedirect("../index.jsp");
		}
		else {
			res.sendRedirect("등록실패 페이지 이동처리");
		}
	}

	/**
	 * 교수) 제출된 과제 리스트를 확인하는 메서드
	 * @procedure
	 * @ PROC_PRO_ONLINE_LEC_HOMEWORK
	 * 
	 * 
	 * @param req
	 * @P_ONLINE_LECTURE_NUMBER IN number 강의번호
	 * 
	 * @param res
	 *  @rownum,                            순번
     *	@stu.STUDENT_NAME                   학생이름
     *	@hk.STUDENT_NUMBER                  학생번호
     *	@hk.HOMEWORK_FILE                   업로드과제파일
     *	@hk.HOMEWORK_CONFIRM                과제 확인 여부
     *	@hk.HOMEWORK_UPLOAD_DATE            과제 업로드 날짜
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getHomeworkList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> homeworkList = null;
		homeworkList = courseLogic.getHomeworkList(pMap);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/frameForm.jsp");
		req.setAttribute("courseList", homeworkList);
		dispatcher.forward(req, res);
	}
}
