package kr.ac.paprika.boot.mvc;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

@Controller
@RequestMapping("/curriculum")
public class CurriculumController {
	private final CurriculumLogic curriculumLogic;

	public CurriculumController(CurriculumLogic curriculumLogic) {
		this.curriculumLogic = curriculumLogic;
	}

	/**
	 * 개설강좌조회 페이지 이동, 콤보박스 리스트 셀렉 메소드
	 * 
	 * @사용DML cbBoxCollege, (대학을 골랐을시)cbBoxDept, (부서를 골랐을시)cbBoxMajor, cbBoxDivision
	 * @param req - (콤보박스에서 고른 대학이름 변수, 전단계 미선택시 생성되지 않음.) CBX_COLLEGE_NAME ,(콤보박스에서
	 *            고른 학부이름 변소, 전단계 미선택시 생성되지 않음.) CBX_DEPT_NAME
	 * 
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 *                          Map<String, List<Map<String, Object>>>
	 * @cbxList의 value들은 아래와 같다
	 * 
	 *           List<Map<String, Object>>
	 * @collegeList - 대학단위 리스트
	 * @deptList - 학부단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * @majorList - 학과단위 리스트 (상위 콤보박스 선택했을시에 생성)
	 * @divisionList - 이수구분 리스트
	 * 
	 *               /paprika/getOpenCourse.do/
	 */
	@RequestMapping("/getOpenCourse")
	public String getOpenCourse(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		Map<String, List<Map<String, Object>>> cbxMapList = null;
		cbxMapList = curriculumLogic.getOpenCourse(pMap);
		req.setAttribute("cbxMapList", cbxMapList);

		return "forward:../pageContent/Course/Course.jsp";
	}

	/**
	 * 개설강좌조회 메서드
	 * 
	 * @사용프로시저 PROC_COURSE
	 * @param req - p_COLLEGE_NAME 검색할 대학|학부|과의 이름 , p_SUBJECT_GRADE 대상학년 ,
	 *            p_SUBJECT_DIVISION 이수구분 , p_COURSE_DAY 요일 , p_SUBJECT_NAME 과목명
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * @courseList - SUBJECT_NUMBER 과목번호 ,COURSE_IS_ONLINE 온라인강좌 여부
	 *             ,SUBJECT_DIVISION 이수구분 ,SUBJECT_CREDIT 학점 ,COLLEGE_NAME 개설학과
	 *             ,SUBJECT_GRADE 대상학년 ,COURSE_DAY 요일 ,COURSE_BEGIN_TIME 시작교시
	 *             ,COURSE_END_TIME 종료교시 ,PROFESSOR_NAME 담당교수
	 * 
	 */
	@RequestMapping("/jsonGetOpenCourseList")
	public @ResponseBody String jsonGetOpenCourseList(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		courseList = curriculumLogic.jsonGetOpenCourseList(pMap);
		Gson	gson	= new Gson();
		String	temp	= gson.toJson(courseList);

		return temp;
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @사용프로시저 PROC_CURRICULUM
	 * @param req - p_STUDENT_NUMBER 학생번호 , p_YEAR 검색연도
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * @curriculumList - SUBJECT_GRADE 대상학년 ,COURSE_SEMESTER 학기 ,SUBJECT_NUMBER 과목코드
	 *                 ,SUBJECT_DIVISION 이수구분 ,SUBJECT_NAME 과목이름 ,SUBJECT_CREDIT 학점
	 *                 ,PROFESSOR_NAME 담당교수 ,COURSE_REMARK 비고
	 * 
	 *                 localhost:9050/paprika/getCurriculum.do?STUDENT_NUMBER=15722001&YEAR=2020
	 */
	@RequestMapping("/getCurriculum")
	public String getCurriculum(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> cbBoxCurriculum = null;
		cbBoxCurriculum = curriculumLogic.getCurriculum(pMap);
		req.setAttribute("cbBoxCurriculum", cbBoxCurriculum);

		return "forward:../pageContent/Course/Curriculum.jsp";
	}

	/**
	 * 커리큘럼조회 메서드
	 * 
	 * @사용프로시저 PROC_CURRICULUM
	 * @param req - p_STUDENT_NUMBER 학생번호 , p_YEAR 검색연도
	 * @param res
	 * @throws IOException
	 * @throws ServletException
	 * 
	 * @curriculumList - SUBJECT_GRADE 대상학년 ,COURSE_SEMESTER 학기 ,SUBJECT_NUMBER 과목코드
	 *                 ,SUBJECT_DIVISION 이수구분 ,SUBJECT_NAME 과목이름 ,SUBJECT_CREDIT 학점
	 *                 ,PROFESSOR_NAME 담당교수 ,COURSE_REMARK 비고
	 * 
	 *                 localhost:9050/paprika/getCurriculum.do?STUDENT_NUMBER=15722001&YEAR=2020
	 */
	@RequestMapping("/jsonGetCurriculum")
	public @ResponseBody String jsonGetCurriculum(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {
		List<Map<String, Object>> curriculumList = null;
		curriculumList = curriculumLogic.jsonGetCurriculum(pMap);
		Gson	gson	= new Gson();
		String	temp	= gson.toJson(curriculumList);

		return temp;
	}
}
