package com.jin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jin.dao.BestPlaceDao;
import com.jin.data.BestPlace;




import java.util.List;

@Service
public class BestPlaceService {

	@Autowired
	private BestPlaceDao dao;

	public List<BestPlace> getBestPlaceList() {
		List<BestPlace> list = dao.view();
		return list;
	}

	public void addBestPlace(BestPlace bp) {
		// TODO Auto-generated method stub
		dao.add(bp);
	}
	public void deleteBestPlace(BestPlace bp){
		dao.delete(bp);
	}

}
