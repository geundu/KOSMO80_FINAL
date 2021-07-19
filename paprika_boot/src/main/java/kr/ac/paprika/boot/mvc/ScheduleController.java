package kr.ac.paprika.boot.mvc;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {
	private final ScheduleLogic scheduleLogic;

	public ScheduleController(ScheduleLogic scheduleLogic) {
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
	// http://localhost:8000/paprika/getSchedule.do?STUDENT_NUMBER=15722001&SEMESTER=2021-1
		@RequestMapping("/getSchedule")
		public String getSchedule(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
			List<Map<String, Object>> scheduleList = null;
			scheduleList = scheduleLogic.getSchedule(pMap);
			req.setAttribute("scheduleList", scheduleList);
	
			return "forward:/pageContent/Schedule.jsp";
		}
	
	@RequestMapping("/getMemo")
	public String getMemo(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> memoList = null;
		memoList = scheduleLogic.getMemo(pMap);
		req.setAttribute("memoList", memoList);
		return "forward:/pageContent/Schedule.jsp";
	}
	
	@RequestMapping("/updateMemo")
	public String updateMemo(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> memoList = null;
		memoList = scheduleLogic.updateMemo(pMap);
		req.setAttribute("memoList", memoList);
		return "forward:/pageContent/Schedule.jsp";
	}
}