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
	public void getOpenCourse(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);

		List<Map<String, Object>> courseList = null;
		courseList = curriculumLogic.getOpenCourse(pMap);

		logger.info(pMap);
		logger.info(courseList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Course/Course.jsp");
		req.setAttribute("courseList", courseList);

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
	 */
	public void getCurriculum(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);

		List<Map<String, Object>> curriculumList = null;
		curriculumList = curriculumLogic.getCurriculum(pMap);

		logger.info(pMap);
		logger.info(curriculumList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Curriculum/Curriculum.jsp");
		req.setAttribute("curriculumList", curriculumList);

		dispatcher.forward(req, res);
	}
}
