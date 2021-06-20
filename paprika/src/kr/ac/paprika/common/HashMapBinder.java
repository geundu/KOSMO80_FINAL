package kr.ac.paprika.common;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class HashMapBinder {
	Logger				logger			= Logger.getLogger(HashMapBinder.class);
	HttpServletRequest	request			= null;

	// 첨부파일 처리에 필요한 변수 선언
	// 첨부파일 전송은 반드시 post 방식으로 해야 한다.
	// 기존의 request로는 값을 가져오지 못하게 된다.
	MultipartRequest	multi			= null;
	String				realFolder		= "";
	String				encodingType	= "UTF-8";
	static final int	MAXSIZE			= 5 * 1024 * 1024;

	/**
	 * @param request
	 */
	public HashMapBinder(HttpServletRequest request) {
		this.request = request;
		// 절대경로 수정해야 함
		realFolder = "D:\\Programming\\portfolio-ysy\\lab_spring4\\spring4_1_1\\WebContent\\files";
	}

	/**
	 * @param target
	 */
	public void bind(Map<String, Object> target) {
		Enumeration<String> en = request.getParameterNames();

		// <input type="text" name="mem_id">
		while (en.hasMoreElements()) {
			String key = en.nextElement();
			logger.info("value = " + request.getParameter(key));
			target.put(key, KoreanConversion.toUTF(request.getParameter(key)));
			logger.info("target = " + target);
		}
	}

	/**
	 * @param target
	 */
	public void bindPost(Map<String, Object> target) {
		Enumeration<String> en = request.getParameterNames();

		// <input type="text" name="mem_id">
		while (en.hasMoreElements()) {
			String key = en.nextElement();
			logger.info("value = " + request.getParameter(key));
			target.put(key, KoreanConversion.toUTF(request.getParameter(key)));
			logger.info("target = " + target);
		}
	}

	/**
	 * @param target
	 */
	public void multiBind(Map<String, Object> target) {
		target.clear();

		try {
			multi = new MultipartRequest(request, realFolder, MAXSIZE, encodingType, new DefaultFileRenamePolicy());
		}
		catch (IOException e) {
			logger.info("HashMapBinder ==> muiltiBind() Exception : " + e.getMessage());
		}
		Enumeration<String> en = multi.getParameterNames();

		// <input type="text" name="mem_id">
		while (en.hasMoreElements()) {
			String key = en.nextElement();
			logger.info("value = " + multi.getParameter(key));
			target.put(key, multi.getParameter(key));
			logger.info("target = " + target);
		}
		Enumeration<String> files = multi.getFileNames();

		if (files != null) {
			File file = null;

			while (files.hasMoreElements()) {
				String	fname		= files.nextElement();
				String	fileName	= multi.getFilesystemName(fname);
				target.put("bs_file", fileName);

				if (fileName != null && fileName.length() > 0) {
					file = new File(realFolder + "\\" + fileName);
				}
			}
			double size = 0;

			if (file != null) {
				size = file.length();
				target.put("bs_size", size);
			}
		}
	}
}
