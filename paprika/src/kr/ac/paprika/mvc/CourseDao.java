package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.dao.DataAccessException;

public class CourseDao {
   Logger                  logger            = Logger.getLogger(CourseDao.class);
   private SqlSessionTemplate   sqlSessionTemplate   = null;

   /**
    * 스프링으로부터 DI를 받기 위한 setter
    * 
    * @param sqlSessionTemplate
    */
   public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
      this.sqlSessionTemplate = sqlSessionTemplate;
   }

   /**
    * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
    * 
    * @param pMap
    * @return
    */
   public List<Map<String, Object>> getOnlineCourseList(Map<String, Object> pMap) {
      List<Map<String, Object>> courseList = null;
      sqlSessionTemplate.selectList("getOnlineCourseList", pMap);
      courseList = (List<Map<String, Object>>) pMap.get("cursor");
      return courseList; 
   }

   /**
    * 강의조회 메서드 eg) 알고리즘 1강, 2강, ...
    * 
    * @param pMap
    * @return
    */
   public List<Map<String, Object>> getLectureList(Map<String, Object> pMap) {
      List<Map<String, Object>> lectureList = null;
      sqlSessionTemplate.selectList("getLectureList", pMap);
      lectureList = (List<Map<String, Object>>) pMap.get("cursor");
      return lectureList;
   }

   /**
    * 강의상세조회 메서드(강의동영상 여기서 조회)
    * 
    * @param pMap
    * @return
    */
   public List<Map<String, Object>> getLectureDetail(Map<String, Object> pMap) {
      List<Map<String, Object>> lectureDetail = null;
      sqlSessionTemplate.selectList("getLectureDetail", pMap);
      lectureDetail = (List<Map<String, Object>>) pMap.get("cursor");
      return lectureDetail;
   }

   /**
    * 과제제출 메서드
    * 
    * @param pMap
    * @return
    */
   public int homeworkInsert(Map<String, Object> pMap) throws DataAccessException {
      int result = 0;
      result = sqlSessionTemplate.insert("homeworkCU", pMap);
      logger.info(result);
      logger.info(pMap);
      return result;
   }

   /**
    * 제출한 과제 변경 메서드
    *  
    * @param pMap
    * @return
    */
   public int homeworkUpdate(Map<String, Object> pMap) throws DataAccessException {
      int result = 0;
      result = sqlSessionTemplate.update("homeworkCU", pMap);
      logger.info(result);
      logger.info(pMap);
      return result;
   }

   /**
    * 피드백 보내기 메서드
    * 
    * @param pMap
    * @return
    */
   public int feedbackInsert(Map<String, Object> pMap) throws DataAccessException {
      int result = 0;
      result = sqlSessionTemplate.insert("feedbackInsert", pMap);
      return result;
   }

   /**
    * 교수) 과제를 채점하고 UPDATE하는 메서드
    * 
    * @param pMap
    * @return
    */
   public int homeworkGrading(Map<String, Object> pMap) throws DataAccessException {
      int result = 0;
      result = sqlSessionTemplate.update("homeworkGrading", pMap);
      return result;
   }

   /**
    * 교수) 제출된 과제 리스트를 확인하는 메서드
    * 
    * @param pMap
    * @return
    */
   public List<Map<String, Object>> getHomeworkList(Map<String, Object> pMap) {
      List<Map<String, Object>> homeworkList = null;
      sqlSessionTemplate.selectList("getHomeworkList", pMap);
      homeworkList = (List<Map<String, Object>>) pMap.get("cursor");
      return homeworkList;
   }

   /**
    * 교수) 받은 피드백 목록 확인
    * 
    * @param pMap
    * @return
    */
   public List<Map<String, Object>> getFeedbackList(Map<String, Object> pMap) {
      List<Map<String, Object>> feedbackList = null;
      sqlSessionTemplate.selectList("getFeedbackList", pMap);
      feedbackList = (List<Map<String, Object>>) pMap.get("cursor");
      return feedbackList;
   }
}