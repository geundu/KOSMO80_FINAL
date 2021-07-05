package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

public class StudentInfoLogic {
	private StudentInfoDao studentInfoDao = null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param studentInfoDao
	 */
	public void setStudentInfoDao(StudentInfoDao studentInfoDao) {
		this.studentInfoDao = studentInfoDao;
	}

	/**
	 * 신상정보조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getStudentInfo(Map<String, Object> pMap) {
		List<Map<String, Object>> studentList = null;
		studentList = studentInfoDao.getStudentInfo(pMap);
		return studentList;
	}//http://localhost:8000/paprika/getStudentInfo.do?STUDENT_NUMBER=15722001

	/**
	 * 신상정보수정 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int studentInfoUpdate(Map<String, Object> pMap) {
		int result = 0;
		studentInfoDao.studentInfoUpdate(pMap);
		result =1;
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
		registerRecordList = studentInfoDao.getRegisterRecord(pMap);
		return registerRecordList;
	}//http://localhost:8000/paprika/getRegisterRecord.do?STUDENT_NUMBER=15722001

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
	public List<Map<String, Object>> getGradeHistoryDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> gradeHistoryDetail = null;
		gradeHistoryDetail = studentInfoDao.getGradeHistoryDetail(pMap);
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
		cbBoxTuitionList = studentInfoDao.getTuition(pMap);
		return cbBoxTuitionList;
	}//http://localhost:8000/paprika/getTuition.do?STUDENT_NUMBER=13222001&SEMESTER=2013-1
	

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetTuitionHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> jsonGetTuitionHistory = null;
		jsonGetTuitionHistory = studentInfoDao.jsonGetTuitionHistory(pMap);
		return jsonGetTuitionHistory;
	}//http://localhost:8000/paprika/getTuition.do?STUDENT_NUMBER=13222001
}
