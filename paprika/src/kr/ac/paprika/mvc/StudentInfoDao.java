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
		sqlSessionTemplate.selectList("getCourse", pMap);
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

		return 0;
	}

	/**
	 * 학적변동조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getRegisterRecord(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseHistory(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistory(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 등록금 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getTuition(Map<String, Object> pMap) {

		return null;
	}
}
