package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/meetingRoom")
public class MeetingRoomController {

	private final MeetingRoomLogic meetingRoomLogic;

	public MeetingRoomController(MeetingRoomLogic meetingRoomLogic) {
		this.meetingRoomLogic = meetingRoomLogic;
	}

	/*
	 * 회의실정보조회 메서드(예약하려면 회의실 현황 불러와야 하므로)
	 * @Author : 노상문
	 * @param req
	 *  -
	 * @param res
	 * @return
	 * @BOOKING_NUMBER    예약번호  
	 * @STUDENT_NUMBER    학생번호  
	 * @CONFERENCE_NUMBER 회의실번호 
	 * @BOOKING_DATE      예약날짜  
	 * @BOOKING_TIME      예약시간  
	 * 
	 * http://localhost:7000/meetingRoom/getMeetingRoomList 
	 * PROC_BOOKING_SELECT
	 * 
	 */
	@RequestMapping("/getMeetingRoomList")
	public String getMeetingRoomList(HttpServletRequest req) {
		List<Map<String, Object>> meetingRoomList = meetingRoomLogic.getMeetingRoomList();
		req.setAttribute("meetingRoomList", meetingRoomList);

		return "forward:../index.jsp";
	}

	/**
	 * 회의실예약 메서드
	 * 
	 * @param req
	 * @Author : 노상문 (학생)- 회의실 예약 입력, 수정, 삭제 CUD
	 * @TR_CODE CUD 구분 값
	 * @P_BOOKING_NUMBER 예약번호
	 * @P_STUDENT_NUMBER 학생번호
	 * @P_CONFERENCE_NUMBER 회의실번호
	 * @P_BOOKING_DATE 예약날짜
	 * @P_BOOKING_TIME 예약시간
	 * @param res
	 * 
	 * @PEXCEP = 성공여부.
	 * @PEXCEPMSG = 처리 메세지.
	 * 
	 *            http://localhost:7000/meetingRoom/meetingRoomInsert?TR_CODE=INSERT&BOOKING_NUMBER=15&STUDENT_NUMBER=41&CONFERENCE_NUMBER=1&BOOKING_DATE=2021-07-11&BOOKING_TIME=10
	 *            PROC_BOOKING_MYONE_SELECT
	 *
	 */
	@RequestMapping("/meetingRoomInsert")
	public String meetingRoomInsert(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = meetingRoomLogic.meetingRoomInsert(pMap);

		if (result == 1) {
			return "redirect:../index.jsp";
			// 성공페이지
		}
		else {
			return "redirect:/fail.jsp";
			// 실패페이지
		}
	}

	/**
	 * 내 예약조회 메서드
	 * 
	 * @Author : 노상문 (학생)- 본인이 예약한 회의실 내역 조회
	 * @param req
	 * @P_STUDENT_NUMBER 학생번호
	 * @BOOKING_NUMBER 예약번호
	 * @STUDENT_NUMBER 학생번호
	 * @CONFERENCE_NUMBER 회의실번호
	 * @BOOKING_DATE 예약날짜
	 * @BOOKING_TIME 예약시간
	 * 
	 *               PROC_BOOKING_MYONE_SELECT
	 *               http://localhost:7000/meetingRoom/getMyBookingList?STUDENT_NUMBER=41
	 */
	@RequestMapping("/getMyBookingList")
	public String getMyBookingList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> myMeetingRoomList = meetingRoomLogic.getMyBookingList(pMap);
		req.setAttribute("myMeetingRoomList", myMeetingRoomList);

		return "forward:../index.jsp";
	}

	/**
	 * 회의실예약취소 메서드
	 * 
	 * @param req
	 * @Author : 노상문 (학생)- 회의실 예약 입력, 수정, 삭제 CUD
	 * @TR_CODE CUD 구분 값
	 * @P_BOOKING_NUMBER 예약번호
	 * @P_STUDENT_NUMBER 학생번호
	 * @P_CONFERENCE_NUMBER 회의실번호
	 * @P_BOOKING_DATE 예약날짜
	 * @P_BOOKING_TIME 예약시간
	 * @param res
	 * 
	 * @PEXCEP = 성공여부.
	 * @PEXCEPMSG = 처리 메세지.
	 * 
	 *            http://localhost:7000/meetingRoom/bookingDelete?TR_CODE=DELETE&BOOKING_NUMBER=15&STUDENT_NUMBER=41&CONFERENCE_NUMBER=1&BOOKING_DATE=2021-07-10&BOOKING_TIME=10
	 *            PROC_BOOKING_MYONE_SELECT
	 * 
	 */
	@RequestMapping("/bookingDelete")
	public String bookingDelete(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = meetingRoomLogic.meetingRoomInsert(pMap);

		if (result == 1) {
			return "redirect:../index.jsp";
			// 성공페이지
		}
		else {
			return "redirect:/fail.jsp";
			// 실패페이지
		}

	}
}
