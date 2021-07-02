package kr.ac.paprika.mvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.google.gson.Gson;

import kr.ac.paprika.common.HashMapBinder;

public class CurriculumController extends MultiActionController {
	Logger					logger			= Logger.getLogger(CurriculumController.class);
	private CurriculumLogic	curriculumLogic	= null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param curriculumLogic
	 */
	public void setCurriculumLogic(CurriculumLogic curriculumLogic) {
		this.curriculumLogic = curriculumLogic;
	}
	
	/**
	 * 개설강좌조회 페이지 이동, 콤보박스 리스트 셀렉 메소드
	 * 
	 * @사용DML cbBoxCollege, (대학을 골랐을시)cbBoxDept, (부서를 골랐을시)cbBoxMajor, cbBoxDivision
	 * @param req - (콤보박스에서 고른 대학이름 변수, 전단계 미선택시 생성되지 않음.) CBX_COLLEGE_NAME
	 * 				,(콤보박스에서 고른 학부이름 변소, 전단계 미선택시 생성되지 않음.) CBX_DEPT_NAME
	 * 
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * Map<String, List<Map<String, Object>>>
	 * @cbxList의 value들은 아래와 같다
	 * 
	 * List<Map<String, Object>>
	 * @collegeList - 대학단위 리스트
	 * @deptList - 학부단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * @majorList - 학과단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * @divisionList - 이수구분 리스트
	 * 
	 * /paprika/getOpenCourse.do/
	 */
	public void getOpenCourse(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);
		
		Map<String, List<Map<String, Object>>> cbxMapList = null;
		cbxMapList = curriculumLogic.getOpenCourse(pMap);
		logger.info(cbxMapList);

		logger.info(pMap);
		logger.info("collegeList : "+cbxMapList.get("collegeList"));
		logger.info("deptList : "+cbxMapList.get("deptList"));
		logger.info("majorList : "+cbxMapList.get("majorList"));
		logger.info("divisionList : "+cbxMapList.get("divisionList"));

		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Course/Course.jsp");
		req.setAttribute("cbxMapList", cbxMapList);

		dispatcher.forward(req, res);
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @사용프로시저 PROC_COURSE
	 * @param req - p_COLLEGE_NAME 검색할 대학|학부|과의 이름 , p_SUBJECT_GRADE 대상학년 ,
	 *            p_SUBJECT_DIVISION 이수구분 , p_COURSE_DAY 요일 , p_SUBJECT_NAME 과목명
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * @courseList - SUBJECT_NUMBER 과목번호 ,COURSE_IS_ONLINE 온라인강좌 여부
	 *             ,SUBJECT_DIVISION 이수구분 ,SUBJECT_CREDIT 학점 ,COLLEGE_NAME 개설학과
	 *             ,SUBJECT_GRADE 대상학년 ,COURSE_DAY 요일 ,COURSE_BEGIN_TIME 시작교시
	 *             ,COURSE_END_TIME 종료교시 ,PROFESSOR_NAME 담당교수
	 * 
	 */
	public void jsonGetOpenCourseList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);

		List<Map<String, Object>> courseList = null;
		courseList = curriculumLogic.jsonGetOpenCourseList(pMap);

		logger.info(pMap);
		logger.info(courseList);

		Gson g = new Gson();
		String outString = g.toJson(courseList);
		PrintWriter out = res.getWriter();
		out.print(outString);
	}
	

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @사용프로시저 PROC_CURRICULUM
	 * @param req - p_STUDENT_NUMBER 학생번호 , p_YEAR 검색연도
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * @curriculumList - SUBJECT_GRADE 대상학년 ,COURSE_SEMESTER 학기 ,SUBJECT_NUMBER 과목코드
	 *                 ,SUBJECT_DIVISION 이수구분 ,SUBJECT_NAME 과목이름 ,SUBJECT_CREDIT 학점
	 *                 ,PROFESSOR_NAME 담당교수 ,COURSE_REMARK 비고
	 *                 
	 * localhost:9050/paprika/getCurriculum.do?STUDENT_NUMBER=15722001&YEAR=2020
	 */
	public void getCurriculum(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);

		List<Map<String, Object>> cbBoxCurriculum = null;
		cbBoxCurriculum = curriculumLogic.getCurriculum(pMap);

		logger.info(pMap);
		logger.info(cbBoxCurriculum);

		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Course/Curriculum.jsp");
		req.setAttribute("cbBoxCurriculum", cbBoxCurriculum);

		dispatcher.forward(req, res);
	}
	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @사용프로시저 PROC_CURRICULUM
	 * @param req - p_STUDENT_NUMBER 학생번호 , p_YEAR 검색연도
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * @curriculumList - SUBJECT_GRADE 대상학년 ,COURSE_SEMESTER 학기 ,SUBJECT_NUMBER 과목코드
	 *                 ,SUBJECT_DIVISION 이수구분 ,SUBJECT_NAME 과목이름 ,SUBJECT_CREDIT 학점
	 *                 ,PROFESSOR_NAME 담당교수 ,COURSE_REMARK 비고
	 *                 
	 * localhost:9050/paprika/getCurriculum.do?STUDENT_NUMBER=15722001&YEAR=2020
	 */
	public void jsonGetCurriculum(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);

		List<Map<String, Object>> curriculumList = null;
		curriculumList = curriculumLogic.jsonGetCurriculum(pMap);

		logger.info(pMap);
		logger.info(curriculumList);
		Gson g = new Gson();
		String outString = g.toJson(curriculumList);
		PrintWriter out = res.getWriter();
		out.print(outString);
	}
}
