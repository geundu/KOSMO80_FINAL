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
@RequestMapping("/course")
public class CourseController {
	private final CourseLogic courseLogic;

	public CourseController(CourseLogic courseLogic) {
		this.courseLogic = courseLogic;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ... 교수, 학생 분기가 있어야 함
	 * 
	 * @procedure
	 * @PROC_STU_SELECT_ONLINE_COURSE
	 * 
	 * @param req
	 * @P_STUDENT_NUMBER IN NUMBER
	 * 
	 * @param res
	 * @STUDENT_NAME 학생이름
	 * @SUBJECT_NAME 온라인 강좌이름
	 * @PROFESSOR_NAME 교수이름
	 * @ONLINE_LECTURE_CONTENT 강의설
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          **포트 주의
	 *                          http://localhost:7000/course/getOnlineCourseList?STUDENT_NUMBER=41
	 */
	@RequestMapping("/getOnlineCourseList")
	public String getOnlineCourseList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		courseList = courseLogic.getOnlineCourseList(pMap);
		req.setAttribute("courseList", courseList);

		return "forward:../pageContent/Online/Course.jsp";
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ... 교수, 학생 분기가 있어야 함
	 * 
	 * @procedure
	 * @PROC_ONLINE_LECTURE --> @PROC_STU_SELECT_ONLINE_LECTURE 로 수정
	 * 
	 * @param req
	 * @COURSE_NUMBER 강좌번호
	 * 
	 * @param
	 * @ol.ONLINE_LECTURE_FILE 강의파일 --> 페이지 양식과 달라서 빼놓음.
	 * @ROWNUM 순번
	 * @ol.ONLINE_LECTURE_TITLE 강의제목
	 * @ol.ONLINE_REMARK 비고
	 *
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          **포트 주의 **course.xml 210706 오세현 수정
	 *                          http://localhost:7000/course/getLectureList?COURSE_NUMBER=41
	 */
	@RequestMapping("/getLectureList")
	public String getLectureList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> lectureList = null;
		lectureList = courseLogic.getLectureList(pMap);
		req.setAttribute("lectureList", lectureList);

		return "forward:../pageContent/Online/Lecture.jsp";
	}

	/**
	 * 강의상세조회 메서드(강의동영상 여기서 조회) 교수도 강의조회 함 화면이 다르면 학생과 분기 있어야 함
	 * 
	 * @procedure
	 * @PROC_STU_ONLINE_LECTURE_DETAIL
	 * 
	 * @param req
	 * @P_ONLINE_LECTURE_NUMBER- 온라인강의번호
	 * @P_STUDENT_NUMBER - 학생번호
	 * 
	 * @param res
	 * @ol.ONLINE_LECTURE_FILE 강의제목
	 * @ONLINE_LECTURE_VIDEO 강의영상주소
	 * @HOMEWORK_FILE 업로드된 과제파일
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/course/getLectureDetail?ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41
	 */
	@RequestMapping("/getLectureDetail")
	public String getLectureDetail(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		Map<String ,List<Map<String, Object>>> lectureDetail = null;
		lectureDetail = courseLogic.getLectureDetail(pMap);
		req.setAttribute("lectureDetail", lectureDetail);

		return "forward:../pageContent/Online/LectureDetail.jsp";
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @procedure
	 * @PROC_HOMEWORK_CUD
	 * 
	 * @param req
	 * @TR_CODE CUD 구분 값
	 * @P_HOMEWORK_NUMBER 강좌번호 - 삭제/ 수정사용
	 * @P_ONLINE_LECTURE_NUMBER 강의번호 - 수정사용
	 * @P_STUDENT_NUMBER 학생번호
	 * @P_HOMEWORK_FILE 과제파일
	 * 
	 * @param res
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/course/homeworkInsert?TR_CODE=INSERT&HOMEWORK_NUMBER=1&ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41&HOMEWORK_FILE=테스트
	 */
	@RequestMapping("/homeworkInsert")
	public String homeworkInsert(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = courseLogic.homeworkInsert(pMap);

		if (result == 1) {
			return "redirect:../pageContent/Online/LectureDetail.jsp";
		}
		else {
			return "redirect:/pageContent/Course/fail.jsp";
		}
	}

	/**
	 * 제출한 과제 변경 메서드
	 * 
	 * @procedure
	 * @PROC_HOMEWORK_CUD
	 * 
	 * @param req
	 * @TR_CODE CUD 구분 값
	 * @P_HOMEWORK_NUMBER 강좌번호 - 삭제/ 수정사용
	 * @P_ONLINE_LECTURE_NUMBER 강의번호 - 수정사용
	 * @P_STUDENT_NUMBER 학생번호
	 * @P_HOMEWORK_FILE 과제파일
	 * 
	 * @param res
	 * 
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/course/homeworkUpdate?TR_CODE=update&HOMEWORK_NUMBER=1&ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41&HOMEWORK_FILE=%ED%85%8C%EC%8A%A4%ED%8A%B8
	 */
	@RequestMapping("/homeworkUpdate")
	public String homeworkUpdate(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = courseLogic.homeworkUpdate(pMap);

		if (result == 1) {
			return "redirect:../pageContent/Online/LectureDetail.jsp";
		}
		else {
			return "redirect:/pageContent/Course/fail.jsp";
		}
	}

	/**
	 * 피드백 보내기 메서드
	 * 
	 * @procedure
	 * @PROC_STU_FEEDBACK_SEND_INSERT
	 * 
	 * @param req
	 * @P_ONLINE_LECTURE_NUMBER 강의번호
	 * @P_STUDENT_NUMBER 학생번호
	 * @P_FEEDBACK_CONTENT 피드백내용
	 * @P_FEEDBACK_TITLE 피드백제목
	 * 
	 * @param res
	 * 
	 * 
	 * @return
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/course/feedbackInsert?ONLINE_LECTURE_NUMBER=3001&STUDENT_NUMBER=41&FEEDBACK_CONTENT=재밋는학사&FEEDBACK_TITLE=ㅈㅁ
	 */
	@RequestMapping("/feedbackInsert")
	public String feedbackInsert(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = courseLogic.feedbackInsert(pMap);
		String resultString = String.valueOf(result);

		if (result == 1) {
			return resultString;
		}
		else {
			return resultString;
		}
	}

	/**
	 * 교수) 과제를 채점하고 UPDATE하는 메서드
	 * 
	 * @PROC_PRO_ONLINE_HOMEWORK_CONF
	 * 
	 * 
	 * @param req
	 * @P_STUDENT_NUMBER in NUMBER 학생번호
	 * 
	 * @param res
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/course/homeworkGrading?STUDENT_NUMBER=41
	 */
	@RequestMapping("/homeworkGrading")
	public String homeworkGrading(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = courseLogic.homeworkGrading(pMap);

		if (result == 1) {
			return "redirect:../pageContent/ProOnline/HomeworkCheck.jsp";
		}
		else {
			return "redirect:/pageContent/Course/fail.jsp";
		}
	}

	/**
	 * 교수) 제출된 과제 리스트를 확인하는 메서드
	 * 
	 * @procedure @ PROC_PRO_ONLINE_LEC_HOMEWORK
	 * 
	 * 
	 * @param req
	 * @P_ONLINE_LECTURE_NUMBER IN number 강의번호
	 * 
	 * @param res @rownum, 순번
	 * @stu.STUDENT_NAME 학생이름
	 * @hk.STUDENT_NUMBER 학생번호
	 * @hk.HOMEWORK_FILE 업로드과제파일
	 * @hk.HOMEWORK_CONFIRM 과제 확인 여부
	 * @hk.HOMEWORK_UPLOAD_DATE 과제 업로드 날짜
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/course/getHomeworkList?ONLINE_LECTURE_NUMBER=3001
	 */
	@RequestMapping("/getHomeworkList")
	public String getHomeworkList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> homeworkList = null;
		homeworkList = courseLogic.getHomeworkList(pMap);
		req.setAttribute("courseList", homeworkList);

		return "forward:../pageContent/ProOnline/HomeworkCheck.jsp";
	}
	
	@RequestMapping("/feedbackDetail")
	public String feedbackDetail(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> feedbackDetail = null;
		feedbackDetail = courseLogic.getFeedbackList(pMap);
		req.setAttribute("feedbackDetail", feedbackDetail);

		return "forward:../pageContent/Online/Feedback.jsp";
	}

	/**
	 * 교수) 받은 피드백 목록 확인
	 * 
	 * @procedure
	 * @PROC_PRO_ONLINE_FEEDBACK
	 * 
	 * @param req
	 * @ONLINE_LECTURE_NUMBER 온라인 강의 번호
	 * 
	 * 
	 * @param res
	 * @sub.SUBJECT_NAME 과목 / 강좌 이름
	 * @ol.ONLINE_LECTURE_NUMBER 강의번호
	 * @ol.ONLINE_LECTURE_TITLE 강의 제목
	 * @fb.FEEDBACK_TITLE 피드백 제목
	 * @fb.FEEDBACK_CONTENT 피드백 내용
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/course/getFeedbackList?ONLINE_LECTURE_NUMBER=3001
	 */
	@RequestMapping("/getFeedbackList")
	public String getFeedbackList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> feedbackList = null;
		feedbackList = courseLogic.getFeedbackList(pMap);
		req.setAttribute("feedbackList", feedbackList);

		return "forward:../pageContent/ProOnline/FeedbackCheck.jsp";
	}
}