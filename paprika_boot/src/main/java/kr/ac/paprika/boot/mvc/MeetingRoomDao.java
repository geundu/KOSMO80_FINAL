package kr.ac.paprika.boot.mvc;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class MeetingRoomDao {

	private final SqlSessionTemplate sqlSessionTemplate;

	public MeetingRoomDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 회의실정보조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getMeetingRoomList() {
		Map<String, Object> pMap = new HashMap<String, Object>();
		sqlSessionTemplate.selectList(NameSpace.MEETINGROOM + "getMeetingRoomList", pMap);
		List<Map<String, Object>> meetingRoomList = (List<Map<String, Object>>) pMap.get("cursor");

		return meetingRoomList;

	}

	/**
	 * 회의실예약 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int meetingRoomInsert(Map<String, Object> pMap) {
		sqlSessionTemplate.insert(NameSpace.MEETINGROOM + "meetingRoomCUD", pMap);
		int result = Integer.parseInt((String) pMap.get("PEXCEP"));

		return result;
	}

	/**
	 * 내 예약조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getMyBookingList(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.MEETINGROOM + "getMyBookingList", pMap);
		List<Map<String, Object>> myMeetingRoomList = (List<Map<String, Object>>) pMap.get("cursor");

		return myMeetingRoomList;
	}

	/**
	 * 회의실예약취소 메서드
	 * 
	 * @param pMap
	 * @return
	 */

	public int bookingDelete(Map<String, Object> pMap) {
		sqlSessionTemplate.insert(NameSpace.MEETINGROOM + "meetingRoomCUD", pMap);
		int result = Integer.parseInt((String) pMap.get("PEXCEP"));

		return result;
	}
}
