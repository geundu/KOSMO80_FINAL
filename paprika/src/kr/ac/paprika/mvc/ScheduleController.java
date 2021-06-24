package kr.ac.paprika.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

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

	}
}
