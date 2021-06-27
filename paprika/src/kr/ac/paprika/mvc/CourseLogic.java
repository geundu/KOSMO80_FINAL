package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class CourseLogic {
	private CourseDao	courseDao	= null;
	Logger				logger		= Logger.getLogger(StudentInfoController.class);

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param courseDao
	 */
	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseList(Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		courseList = courseDao.getCourseList(pMap);
		return courseList;
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureList(Map<String, Object> pMap) {
		List<Map<String, Object>> lectureList = null;
		lectureList = courseDao.getLectureList(pMap);
		return lectureList;
	}

	/**
	 * 강의상세조회 메서드(강의동영상 여기서 조회)
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> lectureDetail = null;
		lectureDetail = courseDao.getLectureDetail(pMap);
		return lectureDetail;
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkInsert(Map<String, Object> pMap) {
		int result = 0;
		result = courseDao.homeworkInsert(pMap);
		return result;
	}

	/**
	 * 제출한 과제 변경 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkUpdate(Map<String, Object> pMap) {
		int result = 0;
		result = courseDao.homeworkUpdate(pMap);
		return result;
	}

	/**
	 * 피드백 보내기 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int feedbackInsert(Map<String, Object> pMap) {
		int result = 0;
		result = courseDao.feedbackInsert(pMap);
		return result;

	}
}
