package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

public class MeetingRoomLogic {
	private MeetingRoomDao meetingRoomDao = null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param meetingRoomDao
	 */
	public void setMeetingRoomDao(MeetingRoomDao meetingRoomDao) {
		this.meetingRoomDao = meetingRoomDao;
	}

	/**
	 * 회의실정보조회 메서드(예약하려면 회의실 현황 불러와야 하므로)
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getMeetingRoomList(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 회의실예약 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int meetingRoomInsert(Map<String, Object> pMap) {

		return 0;
	}

	/**
	 * 내 예약조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getMyBookingList(Map<String, Object> pMap) {

		return null;
	}

	/**
	 * 회의실예약취소 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int bookingDelete(Map<String, Object> pMap) {

		return 0;
	}
}
