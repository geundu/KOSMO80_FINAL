package kr.ac.paprika.boot.mvc;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final AdminLogic adminLogic;

	public AdminController(AdminLogic adminLogic) {
		this.adminLogic = adminLogic;
	}
	
	@RequestMapping("/getAdminComboBox")
	public String getAdminComboBox(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		Map<String, List<Map<String, Object>>> cbxMapList = null;
		cbxMapList = adminLogic.getAdminComboBox(pMap);
		req.setAttribute("cbxMapList", cbxMapList);


		return "forward:../pageContent/ProPeople/Select.jsp";
	}
	
	@RequestMapping("/getAdminInsertComboBox")
	public String getAdminInsertComboBox(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		Map<String, List<Map<String, Object>>> cbxMapList = null;
		cbxMapList = adminLogic.getAdminComboBox(pMap);
		req.setAttribute("cbxMapList", cbxMapList);


		return "forward:../pageContent/ProPeople/Insert.jsp";
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
		List<Map<String, Object>> memberList = null;
		memberList = adminLogic.getMemberList(pMap);
		req.setAttribute("memberList", memberList);
		return "forward:/admin/getAdminComboBox";
	}
	
	@RequestMapping("/jsonGetMemberDetail")
	public @ResponseBody String jsonGetMemberList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> memberDetail = null;
		memberDetail = adminLogic.getMemberDetail(pMap);
		Gson gson 		= new Gson();
		String temp 	= gson.toJson(memberDetail);
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
		List<Map<String, Object>> studentGrade = null;
		studentGrade = adminLogic.getStudentGrade(pMap);
		req.setAttribute("studentGrade", studentGrade);
		return "forward:/pageContent/Select.jsp";
	}
	
	/**
	 *  관리자 성적조회 메서드
	 * @param req
	 * @param pMap
	 * @return "forward:/pageContent/Select.jsp";
	 *http://localhost:7000/admin/getStudentGrade?COURSE_NUMBER=2001001
	 */
	@RequestMapping("/memberUpdatePage")
	public String memberUpdatePage(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> updateList = new ArrayList<Map<String, Object>>();
		System.out.println(pMap);
		updateList.add(pMap);
		req.setAttribute("updateList", updateList);
		return "forward:../pageContent/ProPeople/Update.jsp";
	}

	
	/**
	 * 관리자 - 학생, 교직원 추가 메서드
	 * @param req
	 * @param pMap
	 * @return PEXCEPMSG,  or pexcep;
	 * localhost:7000/admin/memberInsert?TR_CODE=INSERT&STUDENT_NAME=오세현&STUDENT_ENG_NAME=OSEHYUN&STUDENT_PHONE=1034900928&COLLEGE_NUMBER=222&STUDENT_ENTER_YEAR=2013&STUDENT_EMAIL=rk51320928@gmail.com&STUDENT_BIRTH=19970911&GUARDIAN_NAME=윤석열&GUARDIAN_PHONE=1045788781&MEMO=수정&STUDENT_NUMBER=15222001&REGISTER_NUMBER=0

	 */

	@RequestMapping("/memberInsert")
	public @ResponseBody String memberInsert(@RequestParam Map<String, Object> pMap) {
		String pexcep = null;
		String PEXCEPMSG = null;
		//adminLogic.memberInsert(pMap);
		pexcep = adminLogic.memberInsert(pMap);		
		//pexcep = pMap.get("pexcep").toString();
		PEXCEPMSG = pMap.get("PEXCEPMSG").toString();

		if ("1".equals(pexcep)) {
			return pexcep;
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
	/**
	 * 개설강좌조회 페이지 이동, 콤보박스 리스트 셀렉 메소드
	 * 
	 * @사용DML cbBoxCollege, (대학을 골랐을시)cbBoxDept, (부서를 골랐을시)cbBoxMajor, cbBoxDivision
	 * @param req - (콤보박스에서 고른 대학이름 변수, 전단계 미선택시 생성되지 않음.) CBX_COLLEGE_NAME ,(콤보박스에서
	 *            고른 학부이름 변소, 전단계 미선택시 생성되지 않음.) CBX_DEPT_NAME
	 * 
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          Map<String, List<Map<String, Object>>>
	 * @cbxList의 value들은 아래와 같다
	 * 
	 *           List<Map<String, Object>>
	 * @collegeList - 대학단위 리스트
	 * @deptList - 학부단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * @majorList - 학과단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * @divisionList - 이수구분 리스트
	 * 
	 *               /paprika/getOpenCourse.do/
	 */
	
	
	
}
