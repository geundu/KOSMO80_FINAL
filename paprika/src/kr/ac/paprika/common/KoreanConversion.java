package kr.ac.paprika.common;

public class KoreanConversion {
	public static String toUTF(String en) {
		if (en == null)
			return null;

		try {
			return new String(en.getBytes("8859-1"), "utf-8");
		}
		catch (Exception e) {
			return en;
		}
	}
}
