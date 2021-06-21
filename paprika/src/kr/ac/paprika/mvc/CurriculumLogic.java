package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

public class CurriculumLogic {
	private CurriculumDao curriculumDao = null;

	public void setCurriculumDao(CurriculumDao curriculumDao) {
		this.curriculumDao = curriculumDao;
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOpenCourse(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCurriculum(Map<String, Object> pMap) {

		return null;
	}
}
