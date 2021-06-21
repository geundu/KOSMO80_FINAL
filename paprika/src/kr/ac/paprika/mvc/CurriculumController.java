package kr.ac.paprika.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class CurriculumController extends MultiActionController {
	private CurriculumLogic curriculumLogic = null;

	public void setCurriculumLogic(CurriculumLogic curriculumLogic) {
		this.curriculumLogic = curriculumLogic;
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getOpenCourse(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getCurriculum(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}
}
