package paprika.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class StudentInfoController extends MultiActionController {

	private StudentInfoLogic studentInfoLogic = null;

	public void setStudentInfoLogic(StudentInfoLogic studentInfoLogic) {
		this.studentInfoLogic = studentInfoLogic;
	}

	public ModelAndView getStudentInfo(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return null;
	}

	public void studentInfoUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {

	}

	public ModelAndView getRegisterRecord(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return null;
	}

	public ModelAndView getCourseHistory(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return null;
	}

	public ModelAndView getGradeHistory(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		return null;
	}

}