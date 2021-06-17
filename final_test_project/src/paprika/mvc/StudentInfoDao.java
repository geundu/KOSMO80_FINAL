package paprika.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class StudentInfoDao {

	private SqlSessionTemplate sqlSessionTemplate = null;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public List<Map<String, Object>> getStudentInfo(Map<String, Object> target) {

		return null;
	}

	public int studentInfoUpdate(Map<String, Object> target) {

		return 0;
	}

	public List<Map<String, Object>> getRegisterRecord(Map<String, Object> target) {

		return null;
	}

	public List<Map<String, Object>> getCourseHistory(Map<String, Object> target) {

		return null;
	}

	public List<Map<String, Object>> getGradeHistory(Map<String, Object> target) {

		return null;
	}
}
