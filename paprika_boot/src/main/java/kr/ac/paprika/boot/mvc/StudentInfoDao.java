package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class StudentInfoDao {
	private final SqlSessionTemplate sqlSessionTemplate;

	public StudentInfoDao(SqlSessionTemplate sqlSessionTemplate) {
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
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "getStudentInfo", pMap);
		studentList = (List<Map<String, Object>>) pMap.get("cursor");
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
			sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "studentInfoUpdate", pMap);
			result = 1;
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
		List<Map<String, Object>> registerRecordList = null;
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "getRegisterRecord", pMap);
		registerRecordList = (List<Map<String, Object>>) pMap.get("cursor");

		return registerRecordList;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseHistory(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "cbBoxCourseHistory", pMap);
		List<Map<String, Object>> cbBoxCourseHistory = (List<Map<String, Object>>) pMap.get("cursor");

		return cbBoxCourseHistory;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetCourseHistory(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "getCourseHistory", pMap);
		List<Map<String, Object>> courseHistoryList = (List<Map<String, Object>>) pMap.get("cursor");

		return courseHistoryList;
	}// http://localhost:8000/paprika/getCourseHistory.do?STUDENT_NUMBER=13222001

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistory(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "getGradeHistory", pMap);
		List<Map<String, Object>> gradeHistoryList = (List<Map<String, Object>>) pMap.get("cursor");

		return gradeHistoryList;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetGradeHistoryDetail(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "getGradeHistoryDetail", pMap);
		List<Map<String, Object>> gradeHistoryDetail = (List<Map<String, Object>>) pMap.get("cursor");

		return gradeHistoryDetail;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getTuition(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "cbBoxGetTuition", pMap);
		List<Map<String, Object>> cbBoxGetTuition = (List<Map<String, Object>>) pMap.get("cursor");

		return cbBoxGetTuition;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetTuitionHistory(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.STUDENTINFO + "jsonGetTuitionHistory", pMap);
		List<Map<String, Object>> jsonGetTuitionHistory = (List<Map<String, Object>>) pMap.get("cursor");

		return jsonGetTuitionHistory;
	}
}
