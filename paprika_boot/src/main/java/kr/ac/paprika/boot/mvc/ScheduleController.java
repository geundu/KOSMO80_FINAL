package kr.ac.paprika.boot.mvc;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {
	@Autowired
	private ScheduleLogic	scheduleLogic	= null;
	Logger					logger			= LogManager.getLogger(ScheduleController.class);

	/**
	 * 시간표 조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	// http://localhost:8000/paprika/getSchedule.do?STUDENT_NUMBER=15722001&SEMESTER=2021-1
	@RequestMapping("/getSchedule")
	public String getSchedule(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		logger.info("ScheduleController ==> getSchedule() 호출 성공");
		List<Map<String, Object>> scheduleList = null;
		scheduleList = scheduleLogic.getSchedule(pMap);
		req.setAttribute("scheduleList", scheduleList);

		return "forward:/pageContent/Schedule.jsp";
	}
}