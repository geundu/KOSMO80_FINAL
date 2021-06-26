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

public class StudentInfoController extends MultiActionController {
	private StudentInfoLogic	studentInfoLogic	= null;
	Logger						logger				= Logger.getLogger(StudentInfoController.class);

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param studentInfoLogic
	 */
	public void setStudentInfoLogic(StudentInfoLogic studentInfoLogic) {
		this.studentInfoLogic = studentInfoLogic;
	}

	/**
	 * 신상정보조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getStudentInfo(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> studentList = null;
		studentList = studentInfoLogic.getStudentInfo(pMap);
		logger.info(pMap);
		logger.info(studentList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../index.jsp");
		req.setAttribute("studentList", studentList);
		dispatcher.forward(req, res);
	}

	/**
	 * 신상정보수정 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void studentInfoUpdate(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 학적변동조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getRegisterRecord(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getCourseHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getGradeHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getTuition(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}
}