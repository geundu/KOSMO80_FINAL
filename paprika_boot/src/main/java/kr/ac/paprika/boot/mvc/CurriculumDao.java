package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CurriculumDao {
	@Autowired
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= LogManager.getLogger(CurriculumController.class);
	private static final String	NAMESPACE	= "kr.ac.paprika.curriculum.";

	/**
	 * 대학단위 리스트 콤보박스
	 * 
	 * @param pMap
	 * @return collegeList
	 */
	public List<Map<String, Object>> getCollegeList(Map<String, Object> pMap) {
		logger.info("CurriculumDao ==> getCollegeList() 호출 성공");
		List<Map<String, Object>> collegeList = null;
		collegeList = sqlSessionTemplate.selectList(NAMESPACE+"cbBoxCollege", pMap);
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
		logger.info("CurriculumDao ==> getDeptList() 호출 성공");
		List<Map<String, Object>> deptList = null;
		deptList = sqlSessionTemplate.selectList(NAMESPACE+"cbBoxDept", pMap);
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
		logger.info("CurriculumDao ==> getMajorList() 호출 성공");
		List<Map<String, Object>> majorList = null;
		majorList = sqlSessionTemplate.selectList(NAMESPACE+"cbBoxMajor", pMap);
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
		logger.info("CurriculumDao ==> getDivisionList() 호출 성공");
		List<Map<String, Object>> divisionList = null;
		divisionList = sqlSessionTemplate.selectList(NAMESPACE+"cbBoxDivision", pMap);
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
		logger.info("CurriculumDao ==> jsonGetOpenCourseList() 호출 성공");
		List<Map<String, Object>> courseList = null;
		sqlSessionTemplate.selectList("jsonGetOpenCourseList", pMap);
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
		logger.info("CurriculumDao ==> getCurriculum() 호출 성공");
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
		logger.info("CurriculumDao ==> jsonGetCurriculum() 호출 성공");
		List<Map<String, Object>> curriculumList = null;
		sqlSessionTemplate.selectList("getCurriculum", pMap);
		logger.info(pMap);
		curriculumList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(curriculumList);

		return curriculumList;
	}
}
