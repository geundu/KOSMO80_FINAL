package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

public class StudentInfoDao {
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= Logger.getLogger(StudentInfoDao.class);

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param sqlSessionTemplate
	 */
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 신상정보조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getStudentInfo(Map<String, Object> pMap) {
		List<Map<String, Object>> studentList = null;
		sqlSessionTemplate.selectList("getStudentInfo", pMap);
		logger.info(pMap);
		studentList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(studentList);
		return studentList;
	}

	/**
	 * 신상정보수정 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int studentInfoUpdate(Map<String, Object> pMap) {
		int result = 0;
		List<Map<String, Object>> studentInfoUpdate = null;
		sqlSessionTemplate.selectList("studentInfoUpdate", pMap);
		logger.info(pMap);
		studentInfoUpdate = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(studentInfoUpdate);
		result = 1;
		return result;
	}

	/**
	 * 학적변동조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getRegisterRecord(Map<String, Object> pMap) {
		List<Map<String, Object>> registerRecordList = null;
		sqlSessionTemplate.selectList("getRegisterRecord", pMap);
		logger.info(pMap);
		registerRecordList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(registerRecordList);
		return registerRecordList;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxCourseHistory = null;
		
		sqlSessionTemplate.selectList("cbBoxCourseHistory", pMap);
		
		logger.info(pMap);
		cbBoxCourseHistory = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(cbBoxCourseHistory);
		return cbBoxCourseHistory;
	}//http://localhost:8000/paprika/getCourseHistory.do?STUDENT_NUMBER=13222001
	
	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetCourseHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> courseHistoryList = null;
		sqlSessionTemplate.selectList("getCourseHistory", pMap);
		logger.info(pMap);
		courseHistoryList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(courseHistoryList);
		return courseHistoryList;
	}//http://localhost:8000/paprika/getCourseHistory.do?STUDENT_NUMBER=13222001
	

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> gradeHistoryList = null;
		sqlSessionTemplate.selectList("getGradeHistory", pMap);
		logger.info(pMap);
		gradeHistoryList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(gradeHistoryList);
		return gradeHistoryList;
	}
	
	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistoryDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> gradeHistoryDetail = null;
		sqlSessionTemplate.selectList("getGradeHistoryDetail", pMap);
		logger.info(pMap);
		gradeHistoryDetail = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(gradeHistoryDetail);
		return gradeHistoryDetail;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getTuition(Map<String, Object> pMap) {
			List<Map<String, Object>> cbBoxTuitionList = null;
			sqlSessionTemplate.selectList("cbBoxGetTuition", pMap);
			logger.info(pMap);
			cbBoxTuitionList = (List<Map<String, Object>>) pMap.get("cursor");
			logger.info(cbBoxTuitionList);
			return cbBoxTuitionList;
	}
	
	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetTuitionHistory(Map<String, Object> pMap) {
			List<Map<String, Object>> jsonGetTuitionHistory = null;
			sqlSessionTemplate.selectList("jsonGetTuitionHistory", pMap);
			logger.info(pMap);
			jsonGetTuitionHistory = (List<Map<String, Object>>) pMap.get("cursor");
			logger.info(jsonGetTuitionHistory);
			return jsonGetTuitionHistory;
	}
}
