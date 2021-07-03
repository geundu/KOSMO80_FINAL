package kr.ac.paprika.boot.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/meetingRoom")
public class MeetingRoomController {
	Logger						logger				= LogManager.getLogger(MeetingRoomController.class);
	private MeetingRoomLogic	meetingRoomLogic	= null;

	/**
	 * 회의실정보조회 메서드(예약하려면 회의실 현황 불러와야 하므로)
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/getMeetingRoomList")
	public void getMeetingRoomList(HttpServletRequest req, HttpServletResponse res) {

	}

	/**
	 * 회의실예약 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/meetingRoomInsert")
	public void meetingRoomInsert(HttpServletRequest req, HttpServletResponse res) {

	}

	/**
	 * 내 예약조회 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/getMyBookingList")
	public void getMyBookingList(HttpServletRequest req, HttpServletResponse res) {

	}

	/**
	 * 회의실예약취소 메서드
	 * 
	 * @param req
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	@RequestMapping("/bookingDelete")
	public void bookingDelete(HttpServletRequest req, HttpServletResponse res) {

	}
}
