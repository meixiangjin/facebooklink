package com.util;

import java.util.ArrayList;
import java.util.List;

import com.jin.data.Place;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Util2 {
	public static List<Place> parseJsonFromFB(String json) {
		List<Place> list1 = new ArrayList<Place>();
		
		JSONObject jsonObj = JSONObject.fromObject(json);
		JSONArray data = jsonObj.getJSONArray("data");
		System.out.println("thissssssssssssss"+data.toString());
		if(data.toString().equals("[]")){
			Place friendInstance = new Place();
			String name="nothing";
			String category="nothing ";
			String longitude="nothing ";
			String latitude="nothing ";
			String address="nothing ";
			
			friendInstance.setName(name);
			friendInstance.setCategory(category);
			friendInstance.setLatitude(latitude);
			friendInstance.setLontitude(longitude);
			friendInstance.setAddress(address);
			list1.add(friendInstance);
		}
		
		
		else{
		for(int i=0; i<data.size();i++){
			Place friendInstance = new Place();
			JSONObject info = data.getJSONObject(i);
			String name = info.getString("name");
			String id = info.getString("id");
			String category=info.getString("category");
			JSONObject aa=info.getJSONObject("location");
			String longitude = aa.getString("longitude");
			String latitude=aa.getString("latitude");
			String street=aa.getString("street");
			String city=aa.getString("city");
			String state=aa.getString("state");
			String address=street+","+state+","+city;
		
			friendInstance.setId(id);
			friendInstance.setName(name);
			friendInstance.setCategory(category);
			friendInstance.setLatitude(latitude);
			friendInstance.setLontitude(longitude);
			friendInstance.setAddress(address);
			
			System.out.println("name====="+name);
			System.out.println("id====="+id);
			list1.add(friendInstance);
	
			System.out.println("list1111111111111111====="+list1.get(0).getName());
			}
		}
		return list1;
		
		/*
		 * 从第一个朋友 - 〉 最后一个
		 * 1)Friend friend = new Friend
		 * 2)解析json 的第I个数据
		 * 3)list.add (friend)
		 */
	}

}
