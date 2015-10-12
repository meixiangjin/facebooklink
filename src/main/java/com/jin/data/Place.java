package com.jin.data;

import java.io.Serializable;

public class Place implements Serializable{
private String name;
private String Id;
private String address;
private String category;
private String longitude;
private String latitude;
public String getLongitude() {
	return longitude;
}
public void setLontitude(String longitude) {
	this.longitude = longitude;
}
public String getLatitude() {
	return latitude;
}
public void setLatitude(String latitude) {
	this.latitude = latitude;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getId() {
	return Id;
}
public void setId(String id) {
	Id = id;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
}
