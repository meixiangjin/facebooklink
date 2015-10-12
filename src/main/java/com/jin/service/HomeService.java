package com.jin.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class HomeService implements IHomeService {

//	@Override
	public String sendRequest(String url, String access, String action) throws IOException {
		// TODO Auto-generated method stub
		/*
		 * 1)根据url 发送请求
		 * 2)获得请求的响应数据
		 * 3)返回相应数据
		 * 
		 */
		
		//System.out.println(url);
		
		
		Http h = new Http();
		String totalurl = h.getHtml(null, url);
		System.out.println(totalurl);
		

		System.out.println(url);
//		String scheme = "https";
//		String host = "graph.facebook.com";
//		String path = "/100006739051295/friends?access_token="+access;
//		URL url11 = new URL(scheme, host, path);
//		System.out.println(url11);
		return totalurl;
		
		
		
	}

}
