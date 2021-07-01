package kr.ac.paprika.mvc;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import kr.ac.paprika.common.HashMapBinder;

public class MemberController extends MultiActionController {
	Logger				logger		= Logger.getLogger(MemberController.class);
	private MemberLogic	memberLogic	= null;

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
		logger.info("MemberController ==> signIn() 호출 성공");
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<>();
		hmb.bind(pMap);
		logger.info("MemberController ==> " + pMap);
		memberLogic.signIn(pMap);
		logger.info("MemberController ==> " + pMap);
		String result = String.valueOf(pMap.get("result"));
		req.setAttribute("result", result);

		if (!"-1".equals(result)) {
			HttpSession session = req.getSession();
			session.setAttribute("STUDENT_NUMBER", pMap.get("p_student_number"));
			res.sendRedirect("/frameForm.jsp");
		}
		else {
			res.sendRedirect("/login.jsp");
		}
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
