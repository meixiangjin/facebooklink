package com.jin.service;

import java.io.IOException;

public interface IFindService {
	public String sendRequest(String url,String action) throws IOException;
}
