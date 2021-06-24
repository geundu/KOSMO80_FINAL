package kr.ac.paprika.mvc;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import kr.ac.paprika.common.HashMapBinder;

public class StudentInfoController extends MultiActionController {
	private StudentInfoLogic studentInfoLogic = null;

	public void setStudentInfoLogic(StudentInfoLogic studentInfoLogic) {
		this.studentInfoLogic = studentInfoLogic;
	}

	/**
	 * 신상정보조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getStudentInfo(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		ModelAndView		mav		= new ModelAndView();
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		hmb.bind(pMap);
		List<Map<String, Object>> studentList = studentInfoLogic.getStudentInfo(pMap);
		mav.addObject(studentList);
		mav.setViewName("studentInfo/getStudentInfo");

		return mav;
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
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getRegisterRecord(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getCourseHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getGradeHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getTuition(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}
}