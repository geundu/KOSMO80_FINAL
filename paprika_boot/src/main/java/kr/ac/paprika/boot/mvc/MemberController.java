package kr.ac.paprika.boot.mvc;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberLogic	memberLogic	= null;
	Logger				logger		= LogManager.getLogger(MemberController.class);

	/**
	 * 로그인 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/signIn")
	public String signIn(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("MemberController ==> signIn() 호출 성공");
		String result = null;
		result = memberLogic.signIn(pMap);

		if ("1".equals(result)) {
			HttpSession session = req.getSession();
			session.setAttribute("STUDENT_NUMBER", pMap.get("p_student_number"));
			return result;
		}
		else {
			return result;
		}
	}

	/**
	 * 비밀번호찾기 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/getPassword")
	public void getPassword(HttpServletRequest req, HttpServletResponse res) {

	}
}
