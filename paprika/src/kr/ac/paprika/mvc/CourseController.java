package kr.ac.paprika.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class CourseController extends MultiActionController {
	private CourseLogic courseLogic = null;

	public void setCourseLogic(CourseLogic courseLogic) {
		this.courseLogic = courseLogic;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 * 교수, 학생 분기가 있어야 함
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getCourseList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ...
	 * 교수, 학생 분기가 있어야 함
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getLectureList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 강의상세조회 메서드(강의동영상 여기서 조회)
	 * 교수도 강의조회 함 화면이 다르면 학생과 분기 있어야 함
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getLectureDetail(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView homeworkInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 제출한 과제 변경 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView homeworkUpdate(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 시험답안지제출 메서드 (한 번 제출하면 수정할 수 없음)
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView answerInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 피드백 보내기 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView feedbackInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}
}
