package com.easytop.psm.utils;

import java.util.regex.Pattern;

public class Regexs {

	//判断Double数
	public static boolean isDouble(String doub) {
		return Pattern.matches("[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*", doub);
	}
	
	//判断int
	public static boolean isInt(String in) {
		return Pattern.matches("[1-9]\\d*", in);
	}
	
	//判断身份证
	public static boolean isIdCard(String idCard) {
		return Pattern.matches("\\d{17}[\\d|x]|\\d{15}", idCard);
	}
}
