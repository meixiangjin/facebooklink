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
		 * 1)����url ��������
		 * 2)����������Ӧ����
		 * 3)������Ӧ����
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
