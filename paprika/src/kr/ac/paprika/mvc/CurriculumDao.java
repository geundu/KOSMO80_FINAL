package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

public class CurriculumDao {
	Logger						logger				= Logger.getLogger(CurriculumDao.class);
	private SqlSessionTemplate	sqlSessionTemplate	= null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param sqlSessionTemplate
	 */
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
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
		collegeList = sqlSessionTemplate.selectList("cbBoxCollege", pMap);
		logger.info(pMap);
		logger.info(collegeList);
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
		deptList = sqlSessionTemplate.selectList("cbBoxDept", pMap);
		logger.info(pMap);
		logger.info(deptList);
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
		majorList = sqlSessionTemplate.selectList("cbBoxMajor", pMap);
		logger.info(pMap);
		logger.info(majorList);
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
		divisionList = sqlSessionTemplate.selectList("cbBoxDivision", pMap);
		logger.info(pMap);
		logger.info(divisionList);
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
		sqlSessionTemplate.selectList("jsonGetCourseList", pMap);
		logger.info(pMap);
		courseList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(courseList);
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
		sqlSessionTemplate.selectList("cbBoxCurriculum", pMap);
		logger.info(pMap);
		cbBoxCurriculum = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(cbBoxCurriculum);
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
		sqlSessionTemplate.selectList("getCurriculum", pMap);
		logger.info(pMap);
		curriculumList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(curriculumList);
		return curriculumList;
	}
}
