package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

public class CourseDao {
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= Logger.getLogger(StudentInfoController.class);

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param sqlSessionTemplate
	 */
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseList(Map<String, Object> pMap) {
		/*List<Map<String, Object>> courseList = null;
		sqlSessionTemplate.selectList("getCourse", pMap);
		logger.info(pMap);
		courseList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(courseList);
		return courseList;*/
		
		List<Map<String, Object>> courseList = null;
		courseList = sqlSessionTemplate.selectList("getCourseList",pMap);
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
		lectureList = sqlSessionTemplate.selectList("getLectureList",pMap);
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
		lectureDetail = sqlSessionTemplate.selectList("getLectureDetail",pMap);
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
		result = 1;
		sqlSessionTemplate.insert("homeworkInsert",pMap);
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
		result = 1;
		sqlSessionTemplate.update("homeworkUpdate",pMap);
		return result;
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
		int result = 0;
		result = 1;
		sqlSessionTemplate.insert("feedbackInsert",pMap);
		return result;
	}
}
