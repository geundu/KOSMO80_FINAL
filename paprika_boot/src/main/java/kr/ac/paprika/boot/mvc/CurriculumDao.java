package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class CurriculumDao {
	private final SqlSessionTemplate sqlSessionTemplate;

	public CurriculumDao(SqlSessionTemplate sqlSessionTemplate) {
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
		collegeList = sqlSessionTemplate.selectList(NameSpace.CURRICULUM + "cbBoxCollege", pMap);

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
		deptList = sqlSessionTemplate.selectList(NameSpace.CURRICULUM + "cbBoxDept", pMap);

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
		majorList = sqlSessionTemplate.selectList(NameSpace.CURRICULUM + "cbBoxMajor", pMap);

		return majorList;
	}

	/**
	 * 이수구분 리스트 콤보박스
	 * 
	 * @param pMap
	 * @return divisionList
	 */
	public List<Map<String, Object>> getDivisionList(Map<String, Object> pMap) {
		List<Map<String, Object>> divisionList = null;
		divisionList = sqlSessionTemplate.selectList(NameSpace.CURRICULUM + "cbBoxDivision", pMap);

		return divisionList;
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @param pMap
	 * @return courseList
	 */
	public List<Map<String, Object>> jsonGetOpenCourseList(Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		sqlSessionTemplate.selectList(NameSpace.CURRICULUM + "jsonGetOpenCourseList", pMap);
		courseList = (List<Map<String, Object>>) pMap.get("cursor");

		return courseList;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param pMap
	 * @return curriculumList
	 */
	public List<Map<String, Object>> getCurriculum(Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxCurriculum = null;
		sqlSessionTemplate.selectList(NameSpace.CURRICULUM + "cbBoxCurriculum", pMap);
		cbBoxCurriculum = (List<Map<String, Object>>) pMap.get("cursor");

		return cbBoxCurriculum;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param pMap
	 * @return curriculumList
	 */
	public List<Map<String, Object>> jsonGetCurriculum(Map<String, Object> pMap) {
		List<Map<String, Object>> curriculumList = null;
		sqlSessionTemplate.selectList(NameSpace.CURRICULUM + "getCurriculum", pMap);
		curriculumList = (List<Map<String, Object>>) pMap.get("cursor");

		return curriculumList;
	}
}
