package kr.ac.paprika.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class StudentInfoController extends MultiActionController {

	private StudentInfoLogic studentInfoLogic = null;

	/**
	 * studentInfoLogic을 객체주입 해주는 setter
	 * @param studentInfoLogic
	 */
	public void setStudentInfoLogic(StudentInfoLogic studentInfoLogic) {
		this.studentInfoLogic = studentInfoLogic;
	}

	/**
	 * 신상정보조회 메서드
	 * @param req
	 * @param res
	 * @return
	 * @throws Exception
	 */
	public ModelAndView getStudentInfo(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return null;
	}

	/**
	 * 신상정보수정 메서드
	 * @param req
	 * @param res
	 * @throws Exception
	 */
	public void studentInfoUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {

	}

	/**
	 * 학적변동조회 메서드
	 * @param req
	 * @param res
	 * @return
	 * @throws Exception
	 */
	public ModelAndView getRegisterRecord(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return null;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * @param req
	 * @param res
	 * @return
	 * @throws Exception
	 */
	public ModelAndView getCourseHistory(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return null;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * @param req
	 * @param res
	 * @return
	 * @throws Exception
	 */
	public ModelAndView getGradeHistory(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return null;
	}
}