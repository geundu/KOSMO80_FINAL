package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentInfoLogic {
	@Autowired
	private StudentInfoDao	studentInfoDao	= null;
	Logger					logger			= LogManager.getLogger(StudentInfoLogic.class);

	/**
	 * 신상정보조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getStudentInfo(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> getStudentInfo() 호출 성공");
		List<Map<String, Object>> studentList = null;
		studentList = studentInfoDao.getStudentInfo(pMap);

		return studentList;
	}// http://localhost:8000/paprika/getStudentInfo.do?STUDENT_NUMBER=15722001

	/**
	 * 신상정보수정 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int studentInfoUpdate(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> studentInfoUpdate() 호출 성공");
		int result = 0;
		result = studentInfoDao.studentInfoUpdate(pMap);
		return result;
	}

	/**
	 * 학적변동조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getRegisterRecord(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> getRegisterRecord() 호출 성공");
		List<Map<String, Object>> registerRecordList = null;
		registerRecordList = studentInfoDao.getRegisterRecord(pMap);

		return registerRecordList;
	}// http://localhost:8000/paprika/getRegisterRecord.do?STUDENT_NUMBER=15722001

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxCourseHistory = null;
		cbBoxCourseHistory = studentInfoDao.getCourseHistory(pMap);
		return cbBoxCourseHistory;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetCourseHistory(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> jsonGetCourseHistory() 호출 성공");
		List<Map<String, Object>> courseHistoryList = null;
		courseHistoryList = studentInfoDao.jsonGetCourseHistory(pMap);

		return courseHistoryList;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistory(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> getGradeHistory() 호출 성공");
		List<Map<String, Object>> gradeHistoryList = null;
		gradeHistoryList = studentInfoDao.getGradeHistory(pMap);

		return gradeHistoryList;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetGradeHistoryDetail(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> getGradeHistoryDetail() 호출 성공");
		List<Map<String, Object>> gradeHistoryDetail = null;
		gradeHistoryDetail = studentInfoDao.jsonGetGradeHistoryDetail(pMap);

		return gradeHistoryDetail;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getTuition(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> getTuition() 호출 성공");
		List<Map<String, Object>> cbBoxGetTuition = null;
		cbBoxGetTuition = studentInfoDao.getTuition(pMap);
		return cbBoxGetTuition;
	}// http://localhost:8000/paprika/getTuition.do?STUDENT_NUMBER=13222001&SEMESTER=2013-1
	
	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetTuitionHistory(Map<String, Object> pMap) {
		logger.info("StudentInfoLogic ==> jsonGetTuitionHistory() 호출 성공");
		List<Map<String, Object>> jsonGetTuitionHistory = null;
		jsonGetTuitionHistory = studentInfoDao.jsonGetTuitionHistory(pMap);

		return jsonGetTuitionHistory;
	}// http://localhost:8000/paprika/getTuition.do?STUDENT_NUMBER=13222001&SEMESTER=2013-1
}
