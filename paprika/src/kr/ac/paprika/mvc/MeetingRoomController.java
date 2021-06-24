package kr.ac.paprika.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class MeetingRoomController extends MultiActionController {
	private MeetingRoomLogic meetingRoomLogic = null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param meetingRoomLogic
	 */
	public void setMeetingRoomLogic(MeetingRoomLogic meetingRoomLogic) {
		this.meetingRoomLogic = meetingRoomLogic;
	}

	/**
	 * 회의실정보조회 메서드(예약하려면 회의실 현황 불러와야 하므로)
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getMeetingRoomList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 회의실예약 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void meetingRoomInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 내 예약조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getMyBookingList(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	/**
	 * 회의실예약취소 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void bookingDelete(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}
}
