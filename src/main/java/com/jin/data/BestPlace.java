package com.jin.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
//@RooJpaActiveRecord
//@RooJavaBean
//@RooToString
@Table(name = "bestplace")
public class BestPlace implements java.io.Serializable {

	@Id
	@Column(name = "id")
	@GeneratedValue
	private Integer id;

	@Column(name = "longtitude")
	private String longtitude;

	@Column(name = "latitude")
	private String latitude;

	@Column(name = "place_type")
	private String typeOfPlace;

	@Column(name = "place_name")
	private String placeName;

	@Column(name = "address")
	private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLongtitude() {
		return longtitude;
	}

	public void setLongtitude(String longtitude) {
		this.longtitude = longtitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getTypeOfPlace() {
		return typeOfPlace;
	}

	public void setTypeOfPlace(String typeOfPlace) {
		this.typeOfPlace = typeOfPlace;
	}

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
