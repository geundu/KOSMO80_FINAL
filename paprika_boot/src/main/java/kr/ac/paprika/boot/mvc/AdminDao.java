package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class AdminDao {
	private final SqlSessionTemplate sqlSessionTemplate;

	public AdminDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 대학단위 리스트 콤보박스
	 * 
	 * @param pMap
	 * @return collegeList
	 */
	public List<Map<String, Object>> getCollegeList(Map<String, Object> pMap) {
		List<Map<String, Object>> collegeList = null;
		collegeList = sqlSessionTemplate.selectList(NameSpace.ADMIN + "cbBoxCollege", pMap);

		return collegeList;
	}

	/**
	 * 학부단위 리스트 콤보박스
	 * 
	 * @param pMap
	 * @return deptList
	 */
	public List<Map<String, Object>> getDeptList(Map<String, Object> pMap) {
		List<Map<String, Object>> deptList = null;
		deptList = sqlSessionTemplate.selectList(NameSpace.ADMIN + "cbBoxDept", pMap);

		return deptList;
	}

	/**
	 * 학과단위 리스트 콤보박스
	 * 
	 * @param pMap
	 * @return majorList
	 */
	public List<Map<String, Object>> getMajorList(Map<String, Object> pMap) {
		List<Map<String, Object>> majorList = null;
		majorList = sqlSessionTemplate.selectList(NameSpace.ADMIN + "cbBoxMajor", pMap);

		return majorList;
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
		sqlSessionTemplate.selectList(NameSpace.ADMIN + "getMember", pMap);
		memberList = (List<Map<String, Object>>) pMap.get("cursor");

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
		sqlSessionTemplate.selectList(NameSpace.ADMIN + "getStudentGrade", pMap);
		studentGrade = (List<Map<String, Object>>) pMap.get("cursor");

		return studentGrade;
	}
	
	

	/*
	public List<Map<String, Object>> studentGrading(Map<String, Object> pMap) {
		List<Map<String, Object>> studentGrading = null;
		sqlSessionTemplate.selectList("studentGrading", pMap);
		studentGrading = (List<Map<String, Object>>) pMap.get("cursor");
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
		sqlSessionTemplate.selectList(NameSpace.ADMIN + "getMemberDetail", pMap);
		memberDetail = (List<Map<String, Object>>) pMap.get("cursor");

		return memberDetail;
	}

	/**
	 * 관리자 - 학생, 교직원 추가 메서드
	 * 
	 * @param req
	 * @param pMap
	 * @return
	 */
	public String memberInsert(Map<String, Object> pMap) {
		String pexcep = null;
		sqlSessionTemplate.selectOne(NameSpace.ADMIN + "memberInsertUpdate", pMap);
		pexcep = String.valueOf(pMap.get("PEXCEP"));

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
		sqlSessionTemplate.selectOne(NameSpace.ADMIN + "memberInsertUpdate", pMap);
		pexcep = String.valueOf(pMap.get("PEXCEP"));

		return pexcep;
	}

}
