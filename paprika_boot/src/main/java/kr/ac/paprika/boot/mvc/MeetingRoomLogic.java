package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeetingRoomLogic {
	@Autowired
	private MeetingRoomDao	meetingRoomDao	= null;
	Logger					logger			= LogManager.getLogger(MeetingRoomLogic.class);

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
