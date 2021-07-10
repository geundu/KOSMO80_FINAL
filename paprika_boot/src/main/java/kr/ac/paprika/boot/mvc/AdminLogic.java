package kr.ac.paprika.boot.mvc;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class AdminLogic {
	private final AdminDao adminDao;

	public AdminLogic(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public Map<String, List<Map<String, Object>>> getAdminComboBox(Map<String, Object> pMap) {
		Map<String, List<Map<String, Object>>> cbxMapList = new HashMap<>();

		if (pMap.get("CBX_COLLEGE_NAME") != null) {
			// 학부 리스트
			List<Map<String, Object>> deptList = null;
			deptList = adminDao.getDeptList(pMap);
			cbxMapList.put("deptList", deptList);
		}

		if (pMap.get("CBX_DEPT_NAME") != null) {
			// 학과 리스트
			List<Map<String, Object>> majorList = null;
			majorList = adminDao.getMajorList(pMap);
			cbxMapList.put("majorList", majorList);
		}

		// 대학 리스트
		List<Map<String, Object>> collegeList = null;
		collegeList = adminDao.getCollegeList(pMap);
		cbxMapList.put("collegeList", collegeList);

		return cbxMapList;
	}

	/**
	 * 관리자 - 학생, 교직원 조회 메서드
	 * 
	 * @param req
	 * @param pMap
	 * @return memberList;
	 */
	public List<Map<String, Object>> getMemberList(Map<String, Object> pMap) {
		List<Map<String, Object>> memberList = null;
		memberList = adminDao.getMemberList(pMap);

		return memberList;
	}

	/**
	 * 관리자 - 학생, 교직원 성적 조회 메서드
	 * 
	 * @param req
	 * @param pMap
	 * @return studentGrade;
	 */
	public List<Map<String, Object>> getStudentGrade(Map<String, Object> pMap) {
		List<Map<String, Object>> studentGrade = null;
		studentGrade = adminDao.getStudentGrade(pMap);

		return studentGrade;
	}

	/*
		public String studentGrading(Map<String, Object> pMap) {
			logger.info("MemberLogic ==> studentGrading() 호출 성공");
			List<Map<String, Object>> studentGrading = null;
			studentGrading = adminDao.studentGrading(pMap);
			return studentGrading;
		}
	*/
	/**
	 * 관리자 - 학생, 교직원 상세조회 메서드
	 * 
	 * @param req
	 * @param pMap
	 * @return memberDetail;
	 */

	public List<Map<String, Object>> getMemberDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> memberDetail = null;
		memberDetail = adminDao.getMemberDetail(pMap);

		return memberDetail;
	}

	/**
	 * 관리자 - 학생, 교직원 추가 메서드
	 * 
	 * @param req
	 * @param pMap
	 * @return pexcep;
	 */
	public String memberInsert(Map<String, Object> pMap) {
		String pexcep = null;
		pexcep = adminDao.memberInsert(pMap);

		return pexcep;
	}

	/**
	 * 관리자 - 학생, 교직원 수정 메서드
	 * 
	 * @param req
	 * @param pMap
	 * @return pexcep;
	 */
	public String memberUpdate(Map<String, Object> pMap) {
		String pexcep = null;
		pexcep = adminDao.memberUpdate(pMap);

		return pexcep;
	}
}
