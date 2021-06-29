package kr.ac.paprika.mvc;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import kr.ac.paprika.common.HashMapBinder;

public class ScheduleController extends MultiActionController {
   private ScheduleLogic scheduleLogic = null;

   /**
    * 스프링으로부터 DI를 받기 위한 setter
    * 
    * @param scheduleLogic
    */
   public void setScheduleLogic(ScheduleLogic scheduleLogic) {
      this.scheduleLogic = scheduleLogic;
   }

   /**
    * 시간표 조회 메서드
    * 
    * @param req
    * @param res
    * @throws IOException
    * @throws ServletException
    */
   public void getSchedule(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
      HashMapBinder      hmb      = new HashMapBinder(req);
      Map<String, Object>   pMap   = new HashMap<String, Object>();
      res.setContentType("text/plain;charset=utf-8");
      hmb.bind(pMap);
      List<Map<String, Object>> scheduleList = null;
      scheduleList = scheduleLogic.getSchedule(pMap);
      logger.info(pMap);
      logger.info(scheduleList);
      RequestDispatcher dispatcher = req.getRequestDispatcher("/pageContent/Schedule.jsp");
      req.setAttribute("scheduleList", scheduleList);
      dispatcher.forward(req, res);
   }
}