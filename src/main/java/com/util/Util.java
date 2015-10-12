package com.util;

import java.util.ArrayList;
import java.util.List;

import com.jin.data.Friend;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Util {

	public static List<Friend> parseJsonFromFB(String json) {
		List<Friend> list = new ArrayList<Friend>();
		
		JSONObject jsonObj = JSONObject.fromObject(json);
		JSONArray data = jsonObj.getJSONArray("data");
		
		
		
		
		for(int i=0; i<data.size();i++){
			Friend friendInstance = new Friend();
			JSONObject info = data.getJSONObject(i);
			String name = info.getString("name");
			String id = info.getString("id");
			String link=info.getString("link");
			String locale=info.getString("locale");
			
			JSONObject data1=info.getJSONObject("picture");
			JSONObject data2=data1.getJSONObject("data");
			String picture=data2.getString("url");
			
			JSONArray devices2 = info.getJSONArray("devices");
			JSONObject devices1 = devices2.getJSONObject(0);
			String devices = devices1.getString("os");
			
			friendInstance.setId(id);
			friendInstance.setName(name);
			friendInstance.setLink(link);
			friendInstance.setLocale(locale);
			friendInstance.setPicture(picture);
			friendInstance.setDevices(devices);
			
			System.out.println("name====="+name);
			System.out.println("id====="+id);
			list.add(friendInstance);
		}
		return list;
		
		/*
		 * 从第一个朋友 - 〉 最后一个
		 * 1)Friend friend = new Friend
		 * 2)解析json 的第I个数据
		 * 3)list.add (friend)
		 */
	}

}
