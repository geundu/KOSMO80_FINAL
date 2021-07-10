package kr.ac.paprika.boot.mvc;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
@RequestMapping("/student")
public class StudentInfoController {
	private final StudentInfoLogic studentInfoLogic;

	public StudentInfoController(StudentInfoLogic studentInfoLogic) {
		this.studentInfoLogic = studentInfoLogic;
	}

	/**
	 * 신상정보조회 메서드 PROC_STU_TOTAL_INFO
	 * 
	 * @param req
	 * @p_STUDENT_NUMBER number -학생번호
	 * 
	 * @param res
	 * @STUDENT_NUMBER 학생번호
	 * @STUDENT_NAME 이름
	 * @STUDENT_ENG_NAME 영어이름
	 * @STUDENT_ENTER_YEAR 입학연도
	 * @STUDENT_EMAIL 메일
	 * @STUDENT_PHONE 학생연락처
	 * @GUARDIAN_NAME 보호자이름
	 * @GUARDIAN_PHONE 보호자연락처
	 * @MAJOR 학과
	 * @DEPT 학부
	 * @COL 대학
	 * @DATE_LASTEST_REG 최종학적변경일자
	 * @REG_STATUS 학적상태
	 * @PASSEDGRADE 최종이수학년
	 * @PASSEDSEMESTER 최종이수학기
	 * @throws IOException
	 * @throws ServletException //http://localhost:8000/paprika/getStudentInfo.do?STUDENT_NUMBER=15722001
	 */
	@RequestMapping("/getStudentInfo")
	public String getStudentInfo(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		HttpSession					session			= req.getSession();
		List<Map<String, Object>>	studentList		= studentInfoLogic.getStudentInfo(pMap);
		String						STUDENT_NUMBER	= String.valueOf(studentList.get(0).get("STUDENT_NUMBER"));
		session.setAttribute("STUDENT_NUMBER", STUDENT_NUMBER);
		req.setAttribute("studentList", studentList);
		return "forward:../pageContent/StuInfo/StuTotalInfo.jsp";
	}

	/**
	 * 신상정보수정 메서드 PROC_PRO_STUDENT_CUD
	 * 
	 * @param req
	 * @TR_CODE IN varchar2, CUD 구분 값 INSERT /UPDATE/ DELETE 각 기능 입력시 해당 기능 실행.
	 * @p_STUDENT_NAME varchar2, 학생이름
	 * @p_STUDENT_ENG_NAME varchar2, 영어이름
	 * @p_STUDENT_PHONE number, 전화
	 * @p_COLLEGE_NUMBER number, 대학번호
	 * @p_STUDENT_ENTER_YEAR number, 입학연도
	 * @p_STUDENT_EMAIL varchar2, 이메일
	 * @p_STUDENT_BIRTH VARCHAR2, 생년월일
	 * @p_GUARDIAN_NAME VARCHAR2, 보호자이름
	 * @p_GUARDIAN_PHONE NUMBER, 보호자번호
	 * @p_MEMO VARCHAR2, 메모
	 * @p_STUDENT_NUMBER number, 학생번호 - 수정,삭제시 사용
	 * @p_REGISTER_NUMBER number 학적 번호 - 입력,수정시 사용
	 *
	 * @param res - Index jsp 화면으로 연결.
	 * 
	 * 
	 * @throws IOException
	 * @throws ServletException http://www.localhost:8000/paprika/studentInfoUpdate.do?TR_CODE=UPDATE&STUDENT_NAME=%EB%9D%BC%EC%9D%B4%EC%B8%84&STUDENT_ENG_NAME=KIMKACHU&STUDENT_PHONE=010551112&COLLEGE_NUMBER=321&STUDENT_ENTER_YEAR=2021&STUDENT_EMAIL=Rksi.com&STUDENT_BIRTH=2107022&GUARDIAN_NAME=%EB%9D%BC%EC%9D%B4%EC%B8%84&GUARDIAN_PHONE=105726&MEMO=LAK&STUDENT_NUMBER=41&REGISTER_NUMBER=0
	 */
	@RequestMapping("/studentInfoUpdate")
	public @ResponseBody String studentInfoUpdate(@RequestParam Map<String, Object> pMap) {
		
		int result = 0;
		result = studentInfoLogic.studentInfoUpdate(pMap);
		String resultString = String.valueOf(result);
		
		if (result == 1) {
			return resultString;
		}
		else {
			return resultString;
		}
	}

	/**
	 * 학적변동조회 메서드 PROC_STU_REGISTER_SELECT
	 * 
	 * @param req
	 * @p_STUDENT_NUMBER IN number 학생번호
	 *
	 * @param res
	 * @STUDENT_NAME 학생이름
	 * @RECORD_NUMBER 기록번호
	 * @YEAR 연도
	 * @SEMESTER 학기
	 * @REGISTER_NAME 구분
	 * @REGISTER_CONTENT 시행사유
	 * @REMARK 비고
	 *
	 *
	 * 
	 * @throws IOException
	 * @throws ServletException //http://localhost:8000/paprika/getRegisterRecord.do?STUDENT_NUMBER=15722001
	 */
	@RequestMapping("/getRegisterRecord")
	public String getRegisterRecord(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> registerRecordList = studentInfoLogic.getRegisterRecord(pMap);
		req.setAttribute("registerRecordList", registerRecordList);

		return "forward:../pageContent/StuInfo/StuRegister.jsp";
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능 PROC_STUDENT_COURSE_SELECT
	 * 
	 * @param req
	 * @STUDENT_NUMBER number 학생번호
	 * @SEMESTER varchar2 학기
	 * 
	 * @param res
	 * @rownum 순번
	 * @COURSE_SEMESTER 년도
	 * @COURSE_NUMBER 수강강좌이름
	 * @SUBJECT_NAME 교과목
	 * @SUBJECT_CREDIT 학점
	 * @COLLEGE_NAME 개설학과
	 * @SUBJECT_GRADE 학년
	 * @COURSE_DAY 시간-월
	 * @COURSE_BEGIN_TIME 시간-시작시간
	 * @COURSE_END_TIME 시간-종료시간
	 * @PROFESSOR_NAME 교수명
	 * @SUBJECT_DIVISION 이수구분
	 * @MARK_IS_RETAKE 재수강여부
	 * 
	 * @throws IOException
	 * @throws ServletException //http://localhost:9050/paprika/getCourseHistory.do?STUDENT_NUMBER=13222001
	 */
	@RequestMapping("getCourseHistory")
	public String getCourseHistory(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxCourseHistory = studentInfoLogic.getCourseHistory(pMap);
		req.setAttribute("cbBoxCourseHistory", cbBoxCourseHistory);
		return "forward:../pageContent/StuInfo/StuCourse.jsp";
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능 PROC_STUDENT_COURSE_SELECT
	 * 
	 * @param req
	 * @STUDENT_NUMBER number 학생번호
	 * @SEMESTER varchar2 학기
	 * 
	 * @param res
	 * @rownum 순번
	 * @COURSE_SEMESTER 년도
	 * @COURSE_NUMBER 수강강좌이름
	 * @SUBJECT_NAME 교과목
	 * @SUBJECT_CREDIT 학점
	 * @COLLEGE_NAME 개설학과
	 * @SUBJECT_GRADE 학년
	 * @COURSE_DAY 시간-월
	 * @COURSE_BEGIN_TIME 시간-시작시간
	 * @COURSE_END_TIME 시간-종료시간
	 * @PROFESSOR_NAME 교수명
	 * @SUBJECT_DIVISION 이수구분
	 * @MARK_IS_RETAKE 재수강여부
	 * 
	 * @throws IOException
	 * @throws ServletException http://localhost:9050/paprika/jsonGetCourseHistory.do?STUDENT_NUMBER=13222001&SEMESTER=2021-1
	 */
	@RequestMapping("jsonGetCourseHistory")
	public @ResponseBody String jsonGetCourseHistory(@RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>>	courseHistoryList	= studentInfoLogic.jsonGetCourseHistory(pMap);
		Gson						gson				= new Gson();
		String						temp				= gson.toJson(courseHistoryList);
		return temp;
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함 PROC_STU_YEAR_SEM_SUBJ_SCORE
	 * 
	 * @param req
	 * @STUDENT_NUMBER NUMBER 학생번호
	 * 
	 * @param res
	 * @COURSE_SEMESTER 학기
	 * @MARK_AVG 평점평균
	 * @SUMMITEDSCORE 신청학점
	 * @PASSSCORE 취득학점
	 * @F_SCORE F학점
	 * 
	 * @throws IOException
	 * @throws ServletException //http://localhost:8000/paprika/getGradeHistory.do?STUDENT_NUMBER=13222001
	 */
	@RequestMapping("/getGradeHistory")
	public String getGradeHistory(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> gradeHistoryList = studentInfoLogic.getGradeHistory(pMap);
		req.setAttribute("gradeHistoryList", gradeHistoryList);

		return "forward:../pageContent/StuInfo/StuScore.jsp";
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함 PROC_SUBJECT_SCORE_SELECT
	 * 
	 * @param req
	 * @p_STUDENT_NUMBER- 학생번호
	 * @p_SEMESTER 학기
	 * 
	 * @param res
	 * @num 로우 번호
	 * @SUBJECT_NUMBER 과목번호
	 * @SUBJECT_NAME 과목명
	 * @SUBJECT_DIVISION 이수구분
	 * @SUBJECT_CREDIT 학점
	 * @score 평점
	 * @mark 등급
	 * @RETAKE 재수강삭제구분
	 * @REPASS 재이수여부
	 * @REPASS_SEMESTER 재이수학기
	 * 
	 * @throws IOException
	 * @throws ServletException //http://localhost:8000/paprika/getGradeHistoryDetail.do?STUDENT_NUMBER=13222001&SEMESTER=2021-1
	 */
	// http://localhost:9050/paprika/jsonGetGradeHistoryDetail.do?STUDENT_NUMBER=13222001&SEMESTER=2021-1
	@RequestMapping("/jsonGetGradeHistoryDetail")
	public @ResponseBody String jsonGetGradeHistoryDetail(@RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>>	gradeHistoryDetail	= studentInfoLogic.jsonGetGradeHistoryDetail(pMap);
		Gson						gson				= new Gson();
		String						temp				= gson.toJson(gradeHistoryDetail);

		return temp;
	}

	/**
	 * 등록금 조회 메서드 PROC_TUITION_COMBOBOX
	 * 
	 * @param req
	 * @STU_NUMBER NUMBER 학생번호
	 * @SEMESTER 학기
	 * @YEAR VARCHAR2 검색연도
	 * 
	 * @param res
	 * @STUDENT_NUMBER 학생번호
	 * @STUDENT_NAME 학생이름
	 * @COLLEGE_NAME 학과명
	 * @TUITION_CONTENT 등록금내용
	 * @TUITION_FEE 금액
	 * @TUITION_TOTAL_FEE 계
	 * 
	 * @throws IOException
	 * @throws ServletException //http://localhost:8000/paprika/getTuition.do?STUDENT_NUMBER=13222001&SEMESTER=2013-1
	 */
	@RequestMapping("/getTuition")
	public String getTuition(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxGetTuition = studentInfoLogic.getTuition(pMap);
		req.setAttribute("tuitionList", cbBoxGetTuition);

		return "forward:../pageContent/Tuition.jsp";
	}

	/**
	 * 등록금 조회 메서드 PROC_TUITION_SELECT
	 * 
	 * @param req
	 * @STU_NUMBER NUMBER 학생번호
	 * @YEAR VARCHAR2 검색연도
	 * 
	 * @param res
	 * @STUDENT_NUMBER 학생번호
	 * @STUDENT_NAME 학생이름
	 * @COLLEGE_NAME 학과명
	 * @TUITION_CONTENT 등록금내용
	 * @TUITION_FEE 금액
	 * @SEMESTER 학기
	 * @TUITION_TOTAL_FEE 계
	 * 
	 * @throws IOException
	 * @throws ServletException //http://localhost:8000/paprika/getTuition.do?STUDENT_NUMBER=13222001&SEMESTER=2013-1
	 */
	@RequestMapping("/jsonGetTuitionHistory")
	public @ResponseBody String jsonGetTuitionHistory(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>>	jsonGetTuitionHistory	= studentInfoLogic.jsonGetTuitionHistory(pMap);
		Gson						gson					= new Gson();
		String						temp					= gson.toJson(jsonGetTuitionHistory);
		return temp;
	}
}