package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class MeetingRoomLogic {

	private final MeetingRoomDao meetingRoomDao;

	public MeetingRoomLogic(MeetingRoomDao meetingRoomDao) {
		this.meetingRoomDao = meetingRoomDao;
	}

	/**
	 * 회의실정보조회 메서드(예약하려면 회의실 현황 불러와야 하므로)
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getMeetingRoomList() {
		List<Map<String, Object>> meetingRoomList = meetingRoomDao.getMeetingRoomList();

		return meetingRoomList;
	}

	/**
	 * 회의실예약 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int meetingRoomInsert(Map<String, Object> pMap) {
		int result = 0;

		try {
			result = meetingRoomDao.meetingRoomInsert(pMap);
		}
		catch (Exception e) {
			result = -1;
		}

		return result;
	}

	/**
	 * 내 예약조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getMyBookingList(Map<String, Object> pMap) {
		List<Map<String, Object>> myMeetingRoomList = meetingRoomDao.getMyBookingList(pMap);

		return myMeetingRoomList;
	}

	/**
	 * 회의실예약취소 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int bookingDelete(Map<String, Object> pMap) {
		int result = 0;

		try {
			result = meetingRoomDao.bookingDelete(pMap);
		}
		catch (Exception e) {
			result = -1;
		}
		return result;
	}
}
