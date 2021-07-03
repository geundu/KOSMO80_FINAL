package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentInfoDao {
	@Autowired
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= LogManager.getLogger(StudentInfoDao.class);
	private static final String	NAMESPACE			= "kr.ac.paprika.studentInfo.";

	/**
	 * 신상정보조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getStudentInfo(Map<String, Object> pMap) {
		logger.info("StudentInfoDao ==> getStudentInfo() 호출 성공");
		List<Map<String, Object>> studentList = null;
		sqlSessionTemplate.selectList(NAMESPACE + "getStudentInfo", pMap);
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
		logger.info("StudentInfoDao ==> studentInfoUpdate() 호출 성공");
		int result = 0;

		try {
			sqlSessionTemplate.update(NAMESPACE + "studentInfoUpdate", pMap);
			result = 1;
		}
		catch (Exception e) {
			logger.info("studentInfoUpdate 프로시저 실행 실패 : " + e.getMessage());
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
		logger.info("StudentInfoDao ==> getRegisterRecord() 호출 성공");
		List<Map<String, Object>> registerRecordList = null;
		sqlSessionTemplate.selectList(NAMESPACE + "getRegisterRecord", pMap);
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
		logger.info("StudentInfoDao ==> getCourseHistory() 호출 성공");
		List<Map<String, Object>> cbBoxCourseHistory = null;
		sqlSessionTemplate.selectList("cbBoxCourseHistory", pMap);
		logger.info(pMap);
		cbBoxCourseHistory = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(cbBoxCourseHistory);

		return cbBoxCourseHistory;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> jsonGetCourseHistory(Map<String, Object> pMap) {
		logger.info("StudentInfoDao ==> jsonGetCourseHistory() 호출 성공");
		List<Map<String, Object>> courseHistoryList = null;
		sqlSessionTemplate.selectList("getCourseHistory", pMap);
		logger.info(pMap);
		courseHistoryList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(courseHistoryList);

		return courseHistoryList;
	}// http://localhost:8000/paprika/getCourseHistory.do?STUDENT_NUMBER=13222001

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistory(Map<String, Object> pMap) {
		logger.info("StudentInfoDao ==> getGradeHistory() 호출 성공");
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
	public List<Map<String, Object>> jsonGetGradeHistoryDetail(Map<String, Object> pMap) {
		logger.info("StudentInfoDao ==> getGradeHistoryDetail() 호출 성공");
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
		logger.info("StudentInfoDao ==> getTuition() 호출 성공");
		List<Map<String, Object>> tuitionList = null;
		sqlSessionTemplate.selectList("getTuition", pMap);
		logger.info(pMap);
		tuitionList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(tuitionList);

		return tuitionList;
	}
}
