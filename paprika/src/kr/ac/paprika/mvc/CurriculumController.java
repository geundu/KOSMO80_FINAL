package kr.ac.paprika.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class CurriculumController extends MultiActionController {
	private CurriculumLogic curriculumLogic = null;

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
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getOpenCourse(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getCurriculum(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}
}
