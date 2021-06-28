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
	 * 개설강좌조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOpenCourse(Map<String, Object> pMap) {

		List<Map<String, Object>> courseList = null;
		sqlSessionTemplate.selectList("getCourse", pMap);
		logger.info(pMap);
		courseList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(courseList);
		return courseList;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCurriculum(Map<String, Object> pMap) {

		List<Map<String, Object>> curriculumList = null;
		sqlSessionTemplate.selectList("getCurriculum", pMap);
		logger.info(pMap);
		curriculumList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(curriculumList);
		return curriculumList;
	}
}
