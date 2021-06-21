package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class CurriculumDao {
	private SqlSessionTemplate sqlSessionTemplate = null;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOpenCourse(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCurriculum(Map<String, Object> pMap) {

		return null;
	}
}
