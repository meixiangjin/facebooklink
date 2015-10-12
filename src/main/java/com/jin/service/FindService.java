package com.jin.service;

import java.io.IOException;

public class FindService implements IFindService {

	@Override
	public String sendRequest(String url,  String action)
			throws IOException {
		// TODO Auto-generated method stub
		
		
		Http h = new Http();
		String totalurl = h.getHtml(null, url);
		System.out.println(totalurl);
		
		return totalurl;
	}

}
