package kr.ac.paprika.mvc;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import kr.ac.paprika.common.HashMapBinder;

public class OnlineTestController extends MultiActionController {
	Logger					logger			= Logger.getLogger(OnlineTestController.class);
	private OnlineTestLogic	onlineTestLogic	= null;

	public void setOnlineTestLogic(OnlineTestLogic onlineTestLogic) {
		this.onlineTestLogic = onlineTestLogic;
	}

	/**
	 * 시험조회 메서드
	 * 
	 * @procedure
	 * @PROC_STU_ONLINE_TEST_Q_SEL
	 * 
	 * @param req
	 * @P_COURSE_NUMBER 학생번호
	 * 
	 * @param res @SUBJECT_NAME, 응시과목 @ONLINE_TEST_DIVISION, 시험구분 중간/기말/추가
	 * @ONLINE_TEST_QUESTION_QNUMBER 문제번호
	 * @ONLINE_TEST_QUESTION_CONTENT 문제내용
	 * @ONLINE_TEST_QUESTION_ANSWER1 1번 선택지
	 * @ONLINE_TEST_QUESTION_ANSWER2 2번 선택지
	 * @ONLINE_TEST_QUESTION_ANSWER3 3번 선택지
	 * @ONLINE_TEST_QUESTION_ANSWER4 4번 선택지
	 * @OT.ONLINE_TEST_QUESTION_FILE 등록되어있는 주관식파일
	 *
	 * 
	 * @throws IOException
	 * @throws ServletException
	 */
	public void getOnlineTest(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pMap	= new HashMap<String, Object>();
		res.setContentType("text/plain;charset=utf-8");

		hmb.bind(pMap);
		List<Map<String, Object>> onlineTest = null;
		onlineTest = onlineTestLogic.getOnlineTest(pMap);
		logger.info(pMap);
		logger.info(onlineTest);
		RequestDispatcher dispatcher = req.getRequestDispatcher("../pageContent/Online/Test.jsp");
		req.setAttribute("onlineTestList", onlineTest);
		dispatcher.forward(req, res);
	}

	/**
	 * 시험답안지제출 메서드 (한 번 제출하면 수정할 수 없음)
	 * 
	 * 
	 * @procedure
	 * @PROC_STU_ONLINE_TEST_ANSWER
	 * 
	 * @param req
	 * @P_ONLINE_TEST_NUMBER NUMBER, 시험정보번호
	 * @P_STUDENT_NUMBER NUMBER, 학생번호
	 * @P_COURSE_NUMBER NUMBER, 강좌번호
	 * @P_ONLINE_TEST_ANSWER_SUBMIT1 NUMBER, 학생이 선택한 번호
	 * @P_ONLINE_TEST_ANSWER_SUBMIT2 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT3 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT4 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT5 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT6 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT7 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT8 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT9 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT10 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT11 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT12 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT13 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT14 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT15 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT16 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT17 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT18 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_SUBMIT19 NUMBER,
	 * @P_ONLINE_TEST_ANSWER_FILE VARCHAR2 주관식파일 제출 링크
	 * 
	 * @param res
	 * 
	 * 
	 * @throws IOException
	 * @throws ServletException
	 */
	public void answerInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pmap	= new HashMap<String, Object>();

		hmb.bind(pmap);
		int result = 0;
		result = onlineTestLogic.answerInsert(pmap);

		if (result == 1) {
			res.sendRedirect("../pageContent/ProOnline/Test.jsp");
		}
		else {
			res.sendRedirect("등록실패 페이지 이동처리");
		}
	}

	/**
	 * 시험문제 INSERT 메서드
	 * 
	 * @procedure
	 * @PROC_ONLINE_TEST_Q_CUD
	 * 
	 * @param req 
	 * @TR_CODE IN varchar2, 						cud 구분
	 * @P_ONLINE_TEST_QUESTION_NUMBER 				시험문제번호
	 * @P_ONLINE_TEST_NUMBER NUMBER,				시험번호
	 * @P_ONLINE_TEST_QUESTION_DIV VARCHAR2,		주/객관식분류
	 * @P_ONLINE_TEST_QUESTION_QNUMBER NUMBER,		문제번호
	 * @P_ONLINE_TEST_QUESTION_CONTENT VARCHAR2,	문제내용
	 * @P_ONLINE_TEST_QUESTION_ANSWER1 VARCHAR2,	선택지
	 * @P_ONLINE_TEST_QUESTION_ANSWER2 VARCHAR2,
	 * @P_ONLINE_TEST_QUESTION_ANSWER3 VARCHAR2,
	 * @P_ONLINE_TEST_QUESTION_ANSWER4 VARCHAR2,
	 * @P_ONLINE_TEST_QUESTION_CORRECT NUMBER,		문제정답
	 * @P_ONLINE_TEST_QUESTION_PICTURE VARCHAR2,	문제그림링크
	 * @P_ONLINE_TEST_QUESTION_POINT NUMBER			문제배점
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 */
	public void onlineTestInsert(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pmap	= new HashMap<String, Object>();

		hmb.bind(pmap);
		int result = 0;
		result = onlineTestLogic.onlineTestInsert(pmap);

		if (result == 1) {
			res.sendRedirect("../pageContent/ProOnline/TestInsert.jsp");
		}
		else {
			res.sendRedirect("등록실패 페이지 이동처리");
		}
	}

	/**
	 * 시험문제 채점하고 UPDATE하는 메서드
	 * @procedure
	 * @PROC_PRO_MARK_UPDATE
	 * @param req
	 * @P_SCORE                점수
     * @P_STUDENT_NUMBER       학생번호
     * @P_MARK_DIV              시험구분
     * @P_ONLINE_TEST_NUMBER     시험정보번호
     * @P_COURSE_NUMBER         강좌번호
	 * 
	 * @throws IOException
	 * @throws ServletException
	 */
	public void testGrading(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		HashMapBinder		hmb		= new HashMapBinder(req);
		Map<String, Object>	pmap	= new HashMap<String, Object>();

		hmb.bind(pmap);
		int result = 0;
		result = onlineTestLogic.testGrading(pmap);

		if (result == 1) {
			res.sendRedirect("../pageContent/ProOnline/TestGrading.jsp");
		}
		else {
			res.sendRedirect("등록실패 페이지 이동처리");
		}
	}
}
