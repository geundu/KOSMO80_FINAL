package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminLogic adminLogic = null;
	Logger logger = LogManager.getLogger(AdminController.class);

	
	@RequestMapping("/getAdminComboBox")
	public String getAdminComboBox(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> getAdminComboBox() 호출 성공");
		Map<String, List<Map<String, Object>>> cbxMapList = null;
		cbxMapList = adminLogic.getAdminComboBox(pMap);
		req.setAttribute("cbxMapList", cbxMapList);

		logger.info(pMap);
		logger.info("collegeList : " + cbxMapList.get("collegeList"));
		logger.info("deptList : " + cbxMapList.get("deptList"));
		logger.info("majorList : " + cbxMapList.get("majorList"));

		return "forward:../pageContent/ProPeople/Select.jsp";
	}
	
	/**
	 *관리자 - 학생, 교직원 조회 메서드
	 *CALL PROC_PRO_PEOPLE_SELECT
	 * @param req
	 * @param pMap
	 * @return "forward:/pageContent/Select.jsp";
	 * http://localhost:7000/admin/getMemberList?PROFESSOR_OR_STUDENT=전체&STATUS=전체&YEAR=0&NUMBER=0&NAME=전체&COL=전체
	 * 
	 */
	@RequestMapping("/getMemberList")
	public String getMemberList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> getMemberList() 호출 성공");
		List<Map<String, Object>> memberList = null;
		memberList = adminLogic.getMemberList(pMap);
		req.setAttribute("memberList", memberList);
		return "forward:/admin/getAdminComboBox";
	}
	
	@RequestMapping("/jsonGetMemberList")
	public @ResponseBody String jsonGetMemberList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> getMemberList() 호출 성공");
		List<Map<String, Object>> memberList = null;
		memberList = adminLogic.getMemberDetail(pMap);
		Gson gson 		= new Gson();
		String temp 	= gson.toJson(memberList);
		return temp;
	}
    
	
	/**
	 *  관리자 성적조회 메서드
	 * @param req
	 * @param pMap
	 * @return "forward:/pageContent/Select.jsp";
	 *http://localhost:7000/admin/getStudentGrade?COURSE_NUMBER=2001001
	 */
	@RequestMapping("/getStudentGrade")
	public String getStudentGrade(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> getStudentGrade() 호출 성공");
		List<Map<String, Object>> studentGrade = null;
		studentGrade = adminLogic.getStudentGrade(pMap);
		req.setAttribute("studentGrade", studentGrade);
		return "forward:/pageContent/Select.jsp";
	}

	/**
	 * 관리자 - 학생, 교직원 상세조회 메서드
	 * @param req
	 * @param pMap
	 * @return "forward:/pageContent/Select.jsp";
	 *  보류 아직 안만듬 프로시저
	 */
	@RequestMapping("/jsonGetMemberDetail")
	public @ResponseBody String jsonGetMemberDetail(@RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> jsonGetMemberDetail() 호출 성공");
		List<Map<String, Object>> memberDetail = null;
		memberDetail = adminLogic.getMemberDetail(pMap);
		Gson	gson	= new Gson();
		String	temp	= gson.toJson(memberDetail);
		return temp;
	}
	
	/**
	 * 관리자 - 학생, 교직원 추가 메서드
	 * @param req
	 * @param pMap
	 * @return PEXCEPMSG,  or pexcep;
	 * localhost:7000/admin/memberInsert?TR_CODE=INSERT&STUDENT_NAME=오세현&STUDENT_ENG_NAME=OSEHYUN&STUDENT_PHONE=1034900928&COLLEGE_NUMBER=222&STUDENT_ENTER_YEAR=2013&STUDENT_EMAIL=rk51320928@gmail.com&STUDENT_BIRTH=19970911&GUARDIAN_NAME=윤석열&GUARDIAN_PHONE=1045788781&MEMO=수정&STUDENT_NUMBER=15222001&REGISTER_NUMBER=0

	 */

	@RequestMapping("/memberInsert")
	public String memberInsert(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> memberInsert() 호출 성공");
		String pexcep = null;
		String PEXCEPMSG = null;
		//adminLogic.memberInsert(pMap);
		pexcep = adminLogic.memberInsert(pMap);		
		//pexcep = pMap.get("pexcep").toString();
		PEXCEPMSG = pMap.get("PEXCEPMSG").toString();

		if ("1".equals(pexcep)) {
			HttpSession session = req.getSession();
			return PEXCEPMSG;
		}
		else {
			return pexcep;
		}
		
		
	}

	/**
	 * 관리자 - 학생, 교직원 수정 메서드
	 * @param req
	 * @param pMap
	 * @return PEXCEPMSG,  or pexcep;
	 * localhost:7000/admin/memberUpdate?TR_CODE=UPDATE&STUDENT_NAME=오세현&STUDENT_ENG_NAME=OSEHYUN&STUDENT_PHONE=1034900928&COLLEGE_NUMBER=222&STUDENT_ENTER_YEAR=2013&STUDENT_EMAIL=rk51320928@gmail.com&STUDENT_BIRTH=19970911&GUARDIAN_NAME=윤석열&GUARDIAN_PHONE=1045788781&MEMO=수정&STUDENT_NUMBER=15222001&REGISTER_NUMBER=0
	 */
	
	
	@RequestMapping("/memberUpdate")
	public String memberUpdate(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> memberUpdate() 호출 성공");
		String pexcep = null;
		String PEXCEPMSG = null;
		//adminLogic.memberInsert(pMap);
		pexcep = adminLogic.memberUpdate(pMap);		
		//pexcep = pMap.get("pexcep").toString();
		PEXCEPMSG = pMap.get("PEXCEPMSG").toString();

		if ("1".equals(pexcep)) {
			HttpSession session = req.getSession();
			return PEXCEPMSG;
		}
		else {
			return pexcep;
		}
	}

	/*
	@RequestMapping("/studentGrading")
	public String studentGrading(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("AdminController ==> studentGrading() 호출 성공");
		String pexcep = null;
		String PEXCEPMSG = null;
		//adminLogic.memberInsert(pMap);
		pexcep = adminLogic.memberInsert(pMap);		
		//pexcep = pMap.get("pexcep").toString();
		PEXCEPMSG = pMap.get("PEXCEPMSG").toString();

		if ("1".equals(pexcep)) {
			HttpSession session = req.getSession();
			return PEXCEPMSG;
		}
		else {
			return pexcep;
		}
	}
*/
	
}
