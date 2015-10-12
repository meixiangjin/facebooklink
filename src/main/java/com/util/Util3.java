package com.util;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.jin.data.FindFriends;
import com.jin.data.Place;

public class Util3 {
	public static List<FindFriends> parseJsonFromFB(String json) {
		List<FindFriends> list1 = new ArrayList<FindFriends>();
		FindFriends friendInstance = new FindFriends();
		String id=" ";
		String name=" ";
		String link=" ";
		try{
		JSONObject jsonObj = JSONObject.fromObject(json);
		id=jsonObj.getString("id");
		 name=jsonObj.getString("name");
		 link=jsonObj.getString("link");
		}
		catch(Exception e){
				id="nothing";
				name="nothing";
				link="nothing";
				}
			
			
				
			
			friendInstance.setId(id);
			friendInstance.setName(name);
			friendInstance.setLink(link);
			list1.add(friendInstance);
			return list1;
		/*
		 * �ӵ�һ������ - �� ���һ��
		 * 1)Friend friend = new Friend
		 * 2)����json �ĵ�I������
		 * 3)list.add (friend)
		 */
	}

}
