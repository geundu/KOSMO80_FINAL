package kr.ac.paprika.boot.mvc;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

@Service
public class CourseLogic {
	private final CourseDao courseDao;

	public CourseLogic(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineCourseList(Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		courseList = courseDao.getOnlineCourseList(pMap);

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
	public Map<String ,List<Map<String, Object>>> getLectureDetail(Map<String, Object> pMap) {
		Map<String ,List<Map<String, Object>>> lectureDetail = new HashMap<>();
		List<Map<String, Object>> lectureInfo = null;
		List<Map<String, Object>> fileInfo = null;
		courseDao.getLectureDetail(pMap);
		lectureInfo = (List<Map<String, Object>>) pMap.get("OL_CURSOR");
		fileInfo = (List<Map<String, Object>>) pMap.get("HW_CURSOR");
		lectureDetail.put("lectureInfo",lectureInfo);
		lectureDetail.put("fileInfo",fileInfo);
		return lectureDetail;
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkInsert(Map<String, Object> pMap) {
		int homeworkInsert = 0;

		try {
			homeworkInsert = courseDao.homeworkInsert(pMap);
		}
		catch (DataAccessException de) {
			homeworkInsert = -1;
		}

		return homeworkInsert;
	}

	/**
	 * 제출한 과제 변경 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkUpdate(Map<String, Object> pMap) {
		int homeworkUpdate = 0;

		try {
			homeworkUpdate = courseDao.homeworkUpdate(pMap);
		}
		catch (DataAccessException de) {
			homeworkUpdate = -1;
		}

		return homeworkUpdate;

	}

	/**
	 * 피드백 보내기 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int feedbackInsert(Map<String, Object> pMap) {
		int feedbackInsert = 0;

		try {
			feedbackInsert = courseDao.feedbackInsert(pMap);
		}
		catch (DataAccessException de) {
			feedbackInsert = -1;
		}
		return feedbackInsert;

	}

	/**
	 * 교수) 과제를 채점하고 UPDATE하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkGrading(Map<String, Object> pMap) {
		int homeworkGrading = 0;

		try {
			homeworkGrading = courseDao.homeworkGrading(pMap);

		}
		catch (DataAccessException de) {
			homeworkGrading = -1;
		}

		return homeworkGrading;
	}

	/**
	 * 교수) 제출된 과제 리스트를 확인하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getHomeworkList(Map<String, Object> pMap) {
		List<Map<String, Object>> homeworkList = null;
		homeworkList = courseDao.getHomeworkList(pMap);

		return homeworkList;
	}

	public List<Map<String, Object>> feedbackDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> feedbackDetail = null;
		feedbackDetail = courseDao.feedbackDetail(pMap);

		return feedbackDetail;
	}
	
	/**
	 * 교수) 받은 피드백 목록 확인
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getFeedbackList(Map<String, Object> pMap) {
		List<Map<String, Object>> feedbackList = null;
		feedbackList = courseDao.getFeedbackList(pMap);

		return feedbackList;
	}
}