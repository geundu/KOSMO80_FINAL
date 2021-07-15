package kr.ac.paprika.boot.mvc;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/onlineTest")
public class OnlineTestController {
	private final OnlineTestLogic onlineTestLogic;

	public OnlineTestController(OnlineTestLogic onlineTestLogic) {
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
	 * 
	 *                          http://localhost:7000/onlineTest/getOnlineTest?COURSE_NUMBER=2001019
	 */
	@RequestMapping("/getOnlineTest")
	public String getOnlineTest(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> onlineTest = null;
		onlineTest = onlineTestLogic.getOnlineTest(pMap);
		req.setAttribute("onlineTestList", onlineTest);

		return "forward:../pageContent/Online/Test.jsp";
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
	 * 
	 *                          http://localhost:7000/onlineTest/answerInsert?ONLINE_TEST_NUMBER=1009&STUDENT_NUMBER=41&ONLINE_TEST_ANSWER_SUBMIT1=2&ONLINE_TEST_ANSWER_SUBMIT2=1&ONLINE_TEST_ANSWER_SUBMIT3=1&ONLINE_TEST_ANSWER_SUBMIT4=1&ONLINE_TEST_ANSWER_SUBMIT5=1&ONLINE_TEST_ANSWER_SUBMIT6=1&ONLINE_TEST_ANSWER_SUBMIT7=1&ONLINE_TEST_ANSWER_SUBMIT8=1&ONLINE_TEST_ANSWER_SUBMIT9=1&ONLINE_TEST_ANSWER_SUBMIT10=1&ONLINE_TEST_ANSWER_SUBMIT11=1&ONLINE_TEST_ANSWER_SUBMIT12=1&ONLINE_TEST_ANSWER_SUBMIT13=1&ONLINE_TEST_ANSWER_SUBMIT14=1&ONLINE_TEST_ANSWER_SUBMIT15=1&ONLINE_TEST_ANSWER_SUBMIT16=1&ONLINE_TEST_ANSWER_SUBMIT17=1&ONLINE_TEST_ANSWER_SUBMIT18=1&ONLINE_TEST_ANSWER_SUBMIT19=1&ONLINE_TEST_ANSWER_FILE=주관식링크
	 */
	@RequestMapping("/answerInsert")
	public String answerInsert(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = onlineTestLogic.answerInsert(pMap);

		if (result == 1) {
			return "redirect:../pageContent/ProOnline/Test.jsp";
		}
		else {
			return "redirect:실패 페이지";
		}
	}

	/**
	 * 시험문제 INSERT 메서드
	 * 
	 * @procedure
	 * @PROC_ONLINE_TEST_Q_CUD
	 * 
	 * @param req
	 * @TR_CODE IN varchar2, cud 구분
	 * @P_ONLINE_TEST_QUESTION_NUMBER 시험문제번호
	 * @P_ONLINE_TEST_NUMBER NUMBER, 시험번호
	 * @P_ONLINE_TEST_QUESTION_DIV VARCHAR2, 주/객관식분류
	 * @P_ONLINE_TEST_QUESTION_QNUMBER NUMBER, 문제번호
	 * @P_ONLINE_TEST_QUESTION_CONTENT VARCHAR2, 문제내용
	 * @P_ONLINE_TEST_QUESTION_ANSWER1 VARCHAR2, 선택지
	 * @P_ONLINE_TEST_QUESTION_ANSWER2 VARCHAR2,
	 * @P_ONLINE_TEST_QUESTION_ANSWER3 VARCHAR2,
	 * @P_ONLINE_TEST_QUESTION_ANSWER4 VARCHAR2,
	 * @P_ONLINE_TEST_QUESTION_CORRECT NUMBER, 문제정답
	 * @P_ONLINE_TEST_QUESTION_PICTURE VARCHAR2, 문제그림링크
	 * @P_ONLINE_TEST_QUESTION_POINT NUMBER 문제배점
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          http://localhost:7000/onlineTest/onlineTestInsert?TR_CODE=INSERT&ONLINE_TEST_QUESTION_NUMBER=892&ONLINE_TEST_NUMBER=1074&ONLINE_TEST_QUESTION_DIV=1&ONLINE_TEST_QUESTION_QNUMBER=13&ONLINE_TEST_QUESTION_CONTENT=테스트문제내용&ONLINE_TEST_QUESTION_ANSWER1=문제1&ONLINE_TEST_QUESTION_ANSWER2=문제2&ONLINE_TEST_QUESTION_ANSWER3=문제3&ONLINE_TEST_QUESTION_ANSWER4=문제4&ONLINE_TEST_QUESTION_CORRECT=3&ONLINE_TEST_QUESTION_PICTURE=그림없음&ONLINE_TEST_QUESTION_POINT=3
	 */
	@RequestMapping("/onlineTestInsert")
	public String onlineTestInsert(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = onlineTestLogic.onlineTestInsert(pMap);

		if (result == 1) {
			return "redirect:../pageContent/ProOnline/TestInsert.jsp";
		}
		else {
			return "redirect:실패 페이지";
		}
	}

	/**
	 * 시험문제 채점하고 UPDATE하는 메서드
	 * 
	 * @procedure
	 * @PROC_PRO_MARK_UPDATE
	 * @param req
	 * @P_SCORE 점수
	 * @P_STUDENT_NUMBER 학생번호
	 * @P_MARK_DIV 시험구분
	 * @P_ONLINE_TEST_NUMBER 시험정보번호
	 * @P_COURSE_NUMBER 강좌번호
	 * 
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * http://localhost:7000/onlineTest/testGrading?TR_CODE=update&SCORE=40&&STUDENT_NUMBER=41&MARK_DIV=중간&ONLINE_TEST_NUMBER=1009&COURSE_NUMBER=2001019
	 */
	@RequestMapping("/testGrading")
	public String testGrading(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		int result = 0;
		result = onlineTestLogic.testGrading(pMap);

		if (result == 1) {
			return "redirect:../pageContent/ProOnline/TestGrading.jsp";
		}
		else {
			return "redirect:실패 페이지";
		}
	}
}