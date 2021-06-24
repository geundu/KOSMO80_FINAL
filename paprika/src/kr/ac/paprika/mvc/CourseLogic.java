package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

public class CourseLogic {
	private CourseDao courseDao = null;

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

		return null;
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureList(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 강의상세조회 메서드(강의동영상 여기서 조회)
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureDetail(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homoworkInsert(Map<String, Object> pMap) {

		return 0;
	}

	/**
	 * 제출한 과제 변경 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkUpdate(Map<String, Object> pMap) {

		return 0;
	}

	/**
	 * 시험답안지제출 메서드 (한 번 제출하면 수정할 수 없음)
	 * 
	 * @param pMap
	 * @return
	 */
	public int answerInsert(Map<String, Object> pMap) {

		return 0;
	}

	/**
	 * 피드백 보내기 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int feedbackInsert(Map<String, Object> pMap) {

		return 0;
	}
}
