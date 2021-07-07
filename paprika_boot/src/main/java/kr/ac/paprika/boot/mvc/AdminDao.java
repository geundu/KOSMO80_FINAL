package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate = null;
	Logger logger = LogManager.getLogger(AdminDao.class);
	private static final String	NAMESPACE	= "kr.ac.paprika.admin.";

	
	/**
	 * 관리자 - 학생, 교직원 조회 메서드
	 * @param req
	 * @param pMap
	 * @return memberList;
	 */
	public List<Map<String, Object>> getMemberList(Map<String, Object> pMap) {
		logger.info("MemberDao ==> getMember() 호출 성공");
		List<Map<String, Object>> memberList = null;
		sqlSessionTemplate.selectList("getMember", pMap);
		memberList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(memberList);
		return memberList;
	}
    
	/**
	 * 관리자 - 학생, 교직원 성적 조회 메서드
	 * @param req
	 * @param pMap
	 * @return studentGrade;
	 */
	public List<Map<String, Object>> getStudentGrade(Map<String, Object> pMap) {
		logger.info("MemberDao ==> getStudentGrade() 호출 성공");
		List<Map<String, Object>> studentGrade = null;
		sqlSessionTemplate.selectList("getStudentGrade", pMap);
		studentGrade = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(studentGrade);
		return studentGrade;
	}
    /*
	public List<Map<String, Object>> studentGrading(Map<String, Object> pMap) {
		logger.info("MemberDao ==> studentGrading() 호출 성공");
		List<Map<String, Object>> studentGrading = null;
		sqlSessionTemplate.selectList("studentGrading", pMap);
		studentGrading = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(studentGrading);
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
		logger.info("MemberDao ==> getMemberDetail() 호출 성공");
		List<Map<String, Object>> memberDetail = null;
		sqlSessionTemplate.selectList("getMemberDetail", pMap);
		memberDetail = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(memberDetail);
		return memberDetail;
	}
	/**
	 * 관리자 - 학생, 교직원 추가 메서드
	 * @param req
	 * @param pMap
	 * @return
	 */
	public String memberInsert(Map<String, Object> pMap) {
		logger.info("MemberDao ==> memberInsert() 호출 성공");
		String pexcep = null;
		sqlSessionTemplate.selectOne(NAMESPACE + "memberInsertUpdate", pMap);
		logger.info(pMap);
		pexcep = String.valueOf(pMap.get("PEXCEP"));

		return pexcep;		
		
	}
	/**
	 * 관리자 - 학생, 교직원 수정 메서드
	 * @param req
	 * @param pMap
	 * @return  pexcep;
	 */
	public String memberUpdate(Map<String, Object> pMap) {
		logger.info("MemberDao ==> memberUpdate() 호출 성공");
		String pexcep = null;
		sqlSessionTemplate.selectOne(NAMESPACE + "memberInsertUpdate", pMap);
		logger.info(pMap);
		pexcep = String.valueOf(pMap.get("PEXCEP"));
		return pexcep;
	}

}