package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class ScheduleLogic {
	Logger				logger		= Logger.getLogger(ScheduleLogic.class);
   private ScheduleDao scheduleDao = null;

   /**
    * 스프링으로부터 DI를 받기 위한 setter
    * 
    * @param scheduleDao
    */
   public void setScheduleDao(ScheduleDao scheduleDao) {
      this.scheduleDao = scheduleDao;
   }

   /**
    * 시간표 조회 메서드
    * 
    * @param pMap
    * @return
    */
   public List<Map<String, Object>> getSchedule(Map<String, Object> pMap) {
	  List<Map<String, Object>> scheduleList = null;
      scheduleList = scheduleDao.getSchedule2(pMap);
      return scheduleList;      
      
   }
}