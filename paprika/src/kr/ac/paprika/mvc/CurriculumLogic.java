package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

public class CurriculumLogic {
	private CurriculumDao curriculumDao = null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param curriculumDao
	 */
	public void setCurriculumDao(CurriculumDao curriculumDao) {
		this.curriculumDao = curriculumDao;
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @param pMap
	 * @return courseList
	 */
	public List<Map<String, Object>> getOpenCourse(Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		courseList = curriculumDao.getOpenCourse(pMap);
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
		curriculumList = curriculumDao.getCurriculum(pMap);
		return curriculumList;
	}
}
