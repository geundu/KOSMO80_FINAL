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
	// 파일 크기 5Bytes * 1024 * 1024 = 5MB
	static final int	MAXSIZE			= 5 * 1024 * 1024;

	public HashMapBinder(HttpServletRequest request) {
		this.request = request;
		// 절대경로 수정해야 함
		realFolder = "D:\\Programming\\KOSMO80_FINAL\\paprika\\WebContent\\files";
	}

	/**
	 * 쿼리스트링 바인딩 메서드
	 * 
	 * @param pMap - 바인딩할 맵
	 */
	public void bind(Map<String, Object> pMap) {
		Enumeration<String> en = request.getParameterNames();

		// <input type="text" name="mem_id">
		while (en.hasMoreElements()) {
			String key = en.nextElement();
			logger.info("value = " + request.getParameter(key));
			pMap.put(key, KoreanConversion.toUTF(request.getParameter(key)));
			logger.info("target = " + pMap);
		}
	}

	/**
	 * 파일첨부 포함된 바인딩 메서드
	 * 
	 * @param pMap - 바인딩할 맵
	 */
	public void multiBind(Map<String, Object> pMap) {
		pMap.clear();

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
			pMap.put(key, multi.getParameter(key));
			logger.info("target = " + pMap);
		}
		Enumeration<String> files = multi.getFileNames();

		if (files != null) {
			File file = null;

			while (files.hasMoreElements()) {
				String	fname		= files.nextElement();
				String	fileName	= multi.getFilesystemName(fname);
				// 파일 키값 재설정해야 함
				pMap.put("bs_file", fileName);

				if (fileName != null && fileName.length() > 0) {
					file = new File(realFolder + "\\" + fileName);
				}
			}
			double size = 0;

			if (file != null) {
				size = file.length();
				// 파일 키값 재설정해야 함
				pMap.put("bs_size", size);
			}
		}
	}
}
