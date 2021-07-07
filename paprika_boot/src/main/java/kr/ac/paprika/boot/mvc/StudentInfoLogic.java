package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class StudentInfoLogic {

	private final StudentInfoDao studentInfoDao;

	public StudentInfoLogic(StudentInfoDao studentInfoDao) {
		this.studentInfoDao = studentInfoDao;
	}

	/**
	 * 신상정보조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getStudentInfo(Map<String, Object> pMap) {
		List<Map<String, Object>> studentList = studentInfoDao.getStudentInfo(pMap);

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

		try {
			result = studentInfoDao.studentInfoUpdate(pMap);
		}
		catch (Exception e) {
			result = -1;
		}
		return result;
	}

	/**
	 * 학적변동조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getRegisterRecord(Map<String, Object> pMap) {
		List<Map<String, Object>> registerRecordList = studentInfoDao.getRegisterRecord(pMap);

		return registerRecordList;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxCourseHistory = studentInfoDao.getCourseHistory(pMap);
		return cbBoxCourseHistory;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetCourseHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> courseHistoryList = studentInfoDao.jsonGetCourseHistory(pMap);

		return courseHistoryList;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> gradeHistoryList = studentInfoDao.getGradeHistory(pMap);

		return gradeHistoryList;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetGradeHistoryDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> gradeHistoryDetail = studentInfoDao.jsonGetGradeHistoryDetail(pMap);

		return gradeHistoryDetail;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getTuition(Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxGetTuition = studentInfoDao.getTuition(pMap);
		return cbBoxGetTuition;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetTuitionHistory(Map<String, Object> pMap) {
		List<Map<String, Object>> jsonGetTuitionHistory = studentInfoDao.jsonGetTuitionHistory(pMap);

		return jsonGetTuitionHistory;
	}
}
