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
	 * 시간표 조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 */
	public ModelAndView getSchedule(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		return null;
	}
}
