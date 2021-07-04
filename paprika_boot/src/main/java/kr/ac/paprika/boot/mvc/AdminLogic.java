package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminLogic {
	@Autowired
	private AdminDao adminDao = null;
	Logger logger = LogManager.getLogger(AdminLogic.class);
    
	/**
	 * 관리자 - 학생, 교직원 조회 메서드
	 * @param req
	 * @param pMap
	 * @return  memberList;
	 */
	public List<Map<String, Object>> getMemberList(Map<String, Object> pMap) {
		logger.info("MemberLogic ==> getMemberList() 호출 성공");
		List<Map<String, Object>> memberList = null;
		memberList = adminDao.getMemberList(pMap);
		return memberList;
	}
     
	/**
	 * 관리자 - 학생, 교직원 성적 조회 메서드
	 * @param req
	 * @param pMap
	 * @return studentGrade;
	 */
	public List<Map<String, Object>> getStudentGrade(Map<String, Object> pMap) {
		logger.info("MemberLogic ==> getStudentGrade() 호출 성공");
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
	 * @param req
	 * @param pMap
	 * @return memberDetail;
	 */
	
	public List<Map<String, Object>> getMemberDetail(Map<String, Object> pMap) {
		logger.info("MemberLogic ==> getMemberDetail() 호출 성공");
		List<Map<String, Object>> memberDetail = null;
		memberDetail = adminDao.getMemberDetail(pMap);
		return memberDetail;

	}

	/**
	 * 관리자 - 학생, 교직원 추가 메서드
	 * @param req
	 * @param pMap
	 * @return pexcep;
	 */
	public String memberInsert(Map<String, Object> pMap) {
		logger.info("MemberLogic ==> memberInsert() 호출 성공");
		String pexcep = null;
		pexcep = adminDao.memberInsert(pMap);
		return pexcep;
	}

	
	/**
	 * 관리자 - 학생, 교직원 수정 메서드
	 * @param req
	 * @param pMap
	 * @return pexcep;
	 */
	public String memberUpdate(Map<String, Object> pMap) {
		logger.info("MemberLogic ==> memberUpdate() 호출 성공");
		String pexcep = null;
		pexcep = adminDao.memberUpdate(pMap);
		return pexcep;
	}

}
