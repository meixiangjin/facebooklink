package com.jin.service;

import java.io.IOException;

public class PlaceService implements IPlaceService {
	public String sendRequest(String url1, String access, String action) throws IOException {
		// TODO Auto-generated method stub
		/*
		 * 1)����url ��������
		 * 2)����������Ӧ����
		 * 3)������Ӧ����
		 * 
		 */
		
		//System.out.println(url);
		
		
		Http h = new Http();
		String totalurl = h.getHtml(null, url1);
		System.out.println(totalurl);
		

		System.out.println(url1);
//		String scheme = "https";
//		String host = "graph.facebook.com";
//		String path = "/100006739051295/friends?access_token="+access;
//		URL url11 = new URL(scheme, host, path);
//		System.out.println(url11);
		return totalurl;
		
		
		
	}

}
