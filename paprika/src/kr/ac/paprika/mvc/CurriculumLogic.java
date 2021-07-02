package kr.ac.paprika.mvc;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class CurriculumLogic {
	Logger					logger			= Logger.getLogger(CurriculumLogic.class);
	private CurriculumDao	curriculumDao	= null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param curriculumDao
	 */
	public void setCurriculumDao(CurriculumDao curriculumDao) {
		this.curriculumDao = curriculumDao;
	}
	
	/**
	 * 개설강좌조회 페이지를 불러오는 메서드(콤보박스 포함)
	 * 
	 * @param pMap - (상위 대학콤보박스에서 골랐을 시) CBX_COLLEGE_NAME
	 * 				, (상위 학부콤보박스에서 골랐을 시) CBX_DEPT_NAME
	 * 
	 * @collegeList - 대학단위 리스트
	 * @divisionList - 이수구분 리스트
	 * 
	 * <조건부 생성>
	 * @deptList - 학부단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * @majorList - 학과단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * 
	 * @return cbxList
	 */
	public Map<String, List<Map<String, Object>>> getOpenCourse(Map<String, Object> pMap) {
		
		Map<String, List<Map<String, Object>>> cbxMapList = new HashMap<>();
		
		if(pMap.get("CBX_COLLEGE_NAME")!= null) {
			List<Map<String, Object>> deptList = null;
			deptList = curriculumDao.getDeptList(pMap);
			cbxMapList.put("deptList", deptList);
		}

		if(pMap.get("CBX_DEPT_NAME")!= null) {
			List<Map<String, Object>> majorList = null;
			majorList = curriculumDao.getMajorList(pMap);
			cbxMapList.put("majorList", majorList);
		}

		List<Map<String, Object>> collegeList = null;
		collegeList = curriculumDao.getCollegeList(pMap);
		logger.info(collegeList);
		cbxMapList.put("collegeList", collegeList);
		
		List<Map<String, Object>> divisionList = null;
		divisionList = curriculumDao.getDivisionList(pMap);
		cbxMapList.put("divisionList", divisionList);
		
		return cbxMapList;
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @param pMap
	 * @return courseList
	 */
	public List<Map<String, Object>> jsonGetOpenCourseList(Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		courseList = curriculumDao.jsonGetOpenCourseList(pMap);
		return courseList;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCurriculum(Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxCurriculum = null;
		cbBoxCurriculum = curriculumDao.getCurriculum(pMap);
		return cbBoxCurriculum;
	}
	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetCurriculum(Map<String, Object> pMap) {
		List<Map<String, Object>> curriculumList = null;
		curriculumList = curriculumDao.jsonGetCurriculum(pMap);
		return curriculumList;
	}
}
