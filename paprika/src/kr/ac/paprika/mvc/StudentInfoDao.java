package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class StudentInfoDao {

	private SqlSessionTemplate sqlSessionTemplate = null;

	/**
	 * @param sqlSessionTemplate
	 */
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * @param target
	 * @return
	 */
	public List<Map<String, Object>> getStudentInfo(Map<String, Object> target) {

		return null;
	}

	/**
	 * @param target
	 * @return
	 */
	public int studentInfoUpdate(Map<String, Object> target) {

		return 0;
	}

	/**
	 * @param target
	 * @return
	 */
	public List<Map<String, Object>> getRegisterRecord(Map<String, Object> target) {

		return null;
	}

	/**
	 * @param target
	 * @return
	 */
	public List<Map<String, Object>> getCourseHistory(Map<String, Object> target) {

		return null;
	}

	/**
	 * @param target
	 * @return
	 */
	public List<Map<String, Object>> getGradeHistory(Map<String, Object> target) {

		return null;
	}
}
