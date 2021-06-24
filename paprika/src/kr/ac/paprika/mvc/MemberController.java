package kr.ac.paprika.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class MemberController extends MultiActionController {
	private MemberLogic memberLogic = null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param memberLogic
	 */
	public void setMemberLogic(MemberLogic memberLogic) {
		this.memberLogic = memberLogic;
	}

	/**
	 * 로그인 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView signIn(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}

	/**
	 * 비밀번호찾기 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getPassword(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}
}
