package com.bosomblog.yzm;

public class RandomNum {
	private static String random=(int)((Math.random()*9+1)*100000)+"";
	public static String num;
	public static String getRandom(){
		return random;
	}
}
