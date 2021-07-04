package kr.ac.paprika.mvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.google.gson.Gson;

import kr.ac.paprika.common.HashMapBinder;

public class StudentInfoController extends MultiActionController {
	private StudentInfoLogic	studentInfoLogic	= null;
	Logger						logger				= Logger.getLogger(StudentInfoController.class);

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param studentInfoLogic
	 */
	public void setStudentInfoLogic(StudentInfoLogic studentInfoLogic) {
		this.studentInfoLogic = studentInfoLogic;
	}

	/**
	 * 신상정보조회 메서드
	 * PROC_STU_TOTAL_INFO
	 *@param req
	 *@p_STUDENT_NUMBER number -학생번호
	 * 
	 *@param res
	 *@STUDENT_NUMBER        	학생번호          
	 *@STUDENT_NAME          	이름            
	 *@STUDENT_ENG_NAME      	영어이름          
	 *@STUDENT_ENTER_YEAR    	입학연도          
	 *@STUDENT_EMAIL         	메일
	 *@STUDENT_PHONE         	학생연락처                   
	 *@GUARDIAN_NAME         	보호자이름         
	 *@GUARDIAN_PHONE        	보호자연락처        
	 *@MAJOR                  	학과           
	 *@DEPT                   	학부           
	 *@COL                    	대학           
	 *@DATE_LASTEST_REG         최종학적변경일자  
	 *@REG_STATUS               학적상태      
	 *@PASSEDGRADE              최종이수학년    
	 *@PASSEDSEMESTER           최종이수학기    
	 *@throws IOException
	 *@throws ServletException
	 * //http://localhost:8000/paprika/getStudentInfo.do?STUDENT_NUMBER=15722001
	 */
	public void getStudentInfo(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);
		List<Map<String, Object>> studentList = null;
		studentList = studentInfoLogic.getStudentInfo(pMap);
		logger.info(pMap);
		logger.info(studentList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/StuInfo/StuTotalInfo.jsp");
		req.setAttribute("studentList", studentList);
		dispatcher.forward(req, res);
	}

	/**
	 * 신상정보수정 메서드
	 * PROC_PRO_STUDENT_CUD
	 *@param req
	 *@TR_CODE IN varchar2,             CUD 구분 값  INSERT /UPDATE/ DELETE 각 기능 입력시 해당 기능 실행.       
	 *@p_STUDENT_NAME       varchar2,   학생이름              
	 *@p_STUDENT_ENG_NAME   varchar2,   영어이름              
	 *@p_STUDENT_PHONE      number,     전화                
	 *@p_COLLEGE_NUMBER     number,     대학번호              
	 *@p_STUDENT_ENTER_YEAR number,     입학연도              
	 *@p_STUDENT_EMAIL      varchar2,   이메일               
	 *@p_STUDENT_BIRTH      VARCHAR2,   생년월일              
	 *@p_GUARDIAN_NAME      VARCHAR2,   보호자이름             
	 *@p_GUARDIAN_PHONE     NUMBER,     보호자번호             
	 *@p_MEMO               VARCHAR2,   메모                
	 *@p_STUDENT_NUMBER     number,     학생번호  - 수정,삭제시 사용 
	 *@p_REGISTER_NUMBER    number      학적 번호 - 입력,수정시 사용 
	 *
	 * @param res
	 *   - Index jsp 화면으로 연결.
	 *   
	 *   
	 * @throws IOException
	 * @throws ServletException
	 * http://www.localhost:8000/paprika/studentInfoUpdate.do?TR_CODE=UPDATE&STUDENT_NAME=%EB%9D%BC%EC%9D%B4%EC%B8%84&STUDENT_ENG_NAME=KIMKACHU&STUDENT_PHONE=010551112&COLLEGE_NUMBER=321&STUDENT_ENTER_YEAR=2021&STUDENT_EMAIL=Rksi.com&STUDENT_BIRTH=2107022&GUARDIAN_NAME=%EB%9D%BC%EC%9D%B4%EC%B8%84&GUARDIAN_PHONE=105726&MEMO=LAK&STUDENT_NUMBER=41&REGISTER_NUMBER=0
	 */
	public void studentInfoUpdate(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		int result = 0;
		result = studentInfoLogic.studentInfoUpdate(pMap);
		logger.info(pMap);
		if (result==1) {
			System.out.println( "업데이트 완료");
			res.sendRedirect("../index.jsp");
		}else {
			res.sendRedirect("../index.jsp");
			}
	}

	/**
	 * 학적변동조회 메서드
	 * PROC_STU_REGISTER_SELECT
	 *@param req
	 *@p_STUDENT_NUMBER IN number   학생번호
	 *
	 *@param res
	 *@STUDENT_NAME        		    학생이름  
	 *@RECORD_NUMBER       			기록번호      
	 *@YEAR                			연도        
	 *@SEMESTER            			학기        
	 *@REGISTER_NAME           		구분    
	 *@REGISTER_CONTENT    			시행사유      
	 *@REMARK              			비고     
	 *
	 *
	 *   
	 *@throws IOException
	 *@throws ServletException
	 * //http://localhost:8000/paprika/getRegisterRecord.do?STUDENT_NUMBER=15722001
	 */
	public void getRegisterRecord(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> registerRecordList = null;
		registerRecordList = studentInfoLogic.getRegisterRecord(pMap);
		logger.info(pMap);
		logger.info(registerRecordList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/StuInfo/StuRegister.jsp");
		req.setAttribute("registerRecordList", registerRecordList);
		dispatcher.forward(req, res);
	}

	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * PROC_STUDENT_COURSE_SELECT
	 * @param req
	 * @STUDENT_NUMBER   number    학생번호
     * @SEMESTER         varchar2    학기
	 * 
	 * @param res
	 * @rownum                    순번     
	 * @COURSE_SEMESTER        	  년도        
	 * @COURSE_NUMBER          수강강좌이름    
	 * @SUBJECT_NAME          	  교과목        
	 * @SUBJECT_CREDIT            학점         
	 * @COLLEGE_NAME              개설학과       
	 * @SUBJECT_GRADE             학년         
	 * @COURSE_DAY                시간-월      
	 * @COURSE_BEGIN_TIME         시간-시작시간   
	 * @COURSE_END_TIME           시간-종료시간   
	 * @PROFESSOR_NAME            교수명        
	 * @SUBJECT_DIVISION          이수구분       
	 * @MARK_IS_RETAKE            재수강여부     
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * //http://localhost:9050/paprika/getCourseHistory.do?STUDENT_NUMBER=13222001
	 */
	public void getCourseHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> cbBoxCourseHistory = null;
		cbBoxCourseHistory = studentInfoLogic.getCourseHistory(pMap);
		logger.info(pMap);
		logger.info(cbBoxCourseHistory);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/StuInfo/StuCourse.jsp");
		req.setAttribute("cbBoxCourseHistory", cbBoxCourseHistory);
		dispatcher.forward(req, res);
	
	}
	
	/**
	 * 수강목록 조회 메서드 콤보박스 체크 시 이전 학기 수강목록 조회 가능
	 * PROC_STUDENT_COURSE_SELECT
	 * @param req
	 * @STUDENT_NUMBER   number    학생번호
     * @SEMESTER         varchar2    학기
	 * 
	 * @param res
	 * @rownum                    순번     
	 * @COURSE_SEMESTER        	  년도        
	 * @COURSE_NUMBER          수강강좌이름    
	 * @SUBJECT_NAME          	  교과목        
	 * @SUBJECT_CREDIT            학점         
	 * @COLLEGE_NAME              개설학과       
	 * @SUBJECT_GRADE             학년         
	 * @COURSE_DAY                시간-월      
	 * @COURSE_BEGIN_TIME         시간-시작시간   
	 * @COURSE_END_TIME           시간-종료시간   
	 * @PROFESSOR_NAME            교수명        
	 * @SUBJECT_DIVISION          이수구분       
	 * @MARK_IS_RETAKE            재수강여부     
	 * 
	 * @throws IOException
	 * @throws ServletException
	 *http://localhost:9050/paprika/jsonGetCourseHistory.do?STUDENT_NUMBER=13222001&SEMESTER=2021-1
	 */
	public void jsonGetCourseHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> courseHistoryList = null;
		courseHistoryList = studentInfoLogic.jsonGetCourseHistory(pMap);
		logger.info(pMap);
		logger.info(courseHistoryList);
		Gson g = new Gson();
		String outString = g.toJson(courseHistoryList);
		PrintWriter out = res.getWriter();
		out.print(outString);
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * PROC_STU_YEAR_SEM_SUBJ_SCORE
	 * @param req
	 * @STUDENT_NUMBER	 NUMBER  학생번호
	 * 
	 * @param res
	 * @COURSE_SEMESTER 		 학기
     * @MARK_AVG 				 평점평균
     * @SUMMITEDSCORE			 신청학점
     * @PASSSCORE				 취득학점
     * @F_SCORE					 F학점
     * 
	 * @throws IOException
	 * @throws ServletException
	 * //http://localhost:8000/paprika/getGradeHistory.do?STUDENT_NUMBER=13222001
	 */
	public void getGradeHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> gradeHistoryList = null;
		gradeHistoryList = studentInfoLogic.getGradeHistory(pMap);
		logger.info(pMap);
		logger.info(gradeHistoryList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/StuInfo/StuScore.jsp");
		req.setAttribute("gradeHistoryList", gradeHistoryList);
		dispatcher.forward(req, res);
	}

	/**
	 * 수강성적조회 메서드, 우측 상세조회도 포함해야 할지 고려해야 함
	 * PROC_SUBJECT_SCORE_SELECT
	 * @param req
	 * @p_STUDENT_NUMBER- 학생번호
     * @p_SEMESTER        학기
     * 
	 * @param res
	 * @num 로우 번호                        
     * @SUBJECT_NUMBER         과목번호      
     * @SUBJECT_NAME           과목명       
     * @SUBJECT_DIVISION       이수구분      
     * @SUBJECT_CREDIT          학점       
     * @score                   평점       
     * @mark                    등급       
     * @RETAKE                  재수강삭제구분  
     * @REPASS                  재이수여부    
     * @REPASS_SEMESTER         재이수학기    
	 * 
	 * @throws IOException
	 * @throws ServletException
	 *  //http://localhost:8000/paprika/getGradeHistoryDetail.do?STUDENT_NUMBER=13222001&SEMESTER=2021-1
	 */
	public void getGradeHistoryDetail(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> gradeHistoryDetail = null;
		gradeHistoryDetail = studentInfoLogic.getGradeHistoryDetail(pMap);
		logger.info(pMap);
		logger.info(gradeHistoryDetail);
		/*RequestDispatcher dispatcher = req.getRequestDispatcher("../");*/
		req.setAttribute("gradeHistoryDetail", gradeHistoryDetail);
		/*dispatcher.forward(req, res);*/
	}
	//http://localhost:9050/paprika/jsonGetGradeHistoryDetail.do?STUDENT_NUMBER=13222001&SEMESTER=2021-1
	public void jsonGetGradeHistoryDetail(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("application/json;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> gradeHistoryDetail = null;
		gradeHistoryDetail = studentInfoLogic.getGradeHistoryDetail(pMap);
		logger.info(pMap);
		logger.info(gradeHistoryDetail);
		Gson g = new Gson();
		String outString = g.toJson(gradeHistoryDetail);
		PrintWriter out = res.getWriter();
		out.print(outString);
	}

	/**
	 * 등록금 조회 메서드
	 * PROC_TUITION_SELECT
	 * @param req
	 * @STU_NUMBER   NUMBER   학생번호
     * @YEAR         VARCHAR2  검색연도
     * 
	 * @param res
	 * @STUDENT_NUMBER     학생번호
	 * @STUDENT_NAME       학생이름
	 * @COLLEGE_NAME       학과명
	 * @TUITION_CONTENT    등록금내용
	 * @TUITION_FEE        금액
	 * @SEMESTER           학기
   * @TUITION_TOTAL_FEE      계
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * //http://localhost:8000/paprika/getTuition.do?STUDENT_NUMBER=13222001&SEMESTER=2013-1
	 */
	
	public void getTuition(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);
		List<Map<String, Object>> cbBoxTuitionList = null;
		cbBoxTuitionList = studentInfoLogic.getTuition(pMap);
		logger.info(pMap);
		logger.info(cbBoxTuitionList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Tuition.jsp");
		req.setAttribute("tuitionList", cbBoxTuitionList);
		dispatcher.forward(req, res);
	}
	
	public void jsonGetTuitionHistory(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");
		hmb.bind(pMap);
		List<Map<String, Object>> jsonGetTuitionHistory = null;
		jsonGetTuitionHistory = studentInfoLogic.jsonGetTuitionHistory(pMap);
		logger.info(pMap);
		logger.info(jsonGetTuitionHistory);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Tuition.jsp");
		req.setAttribute("jsonGetTuitionHistory", jsonGetTuitionHistory);
		dispatcher.forward(req, res);
	}
}