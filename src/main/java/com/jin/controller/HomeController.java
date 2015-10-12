package com.jin.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jin.data.BestPlace;
import com.jin.data.FindFriends;
import com.jin.data.Friend;
import com.jin.data.Place;
import com.jin.service.BestPlaceService;
import com.jin.service.FindService;
import com.jin.service.HomeService;
import com.jin.service.IFindService;
import com.jin.service.IHomeService;
import com.jin.service.IPlaceService;
import com.jin.service.PlaceService;
import com.util.Util;
import com.util.Util2;
import com.util.Util3;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/log")
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	@Autowired
	private BestPlaceService bpService;

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 * @throws IOException
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String HomePage(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {

		System.out.println("log was called, page turn to log.jsp");

		return "First";
	}
	
	
	
	
	@RequestMapping(value = "/key", method = RequestMethod.POST)
	public @ResponseBody
	String home(
			Locale locale,
			Model model,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session,
			@RequestParam(value = "accesstoken", required = false) String access,
			@RequestParam(value = "id", required = false) String id)
			throws IOException {
		logger.info("Welcome home! The client locale is {}.", locale);

		System.out.println(access);

		System.out.println("/////////" + id);
		String url = "https://graph.facebook.com/"
				+ id
				+ "/friends?fields=id,name,link,picture,devices,locale&access_token="
				+ access;
		String action = null;
		IHomeService service = new HomeService();
		String jsonResult = service.sendRequest(url, access, action);
		List<Friend> list = Util.parseJsonFromFB(jsonResult);
		session.setAttribute("list", list);
		session.setAttribute("access", access);
		return "success";
	}

	@RequestMapping(value = "/friends", method = RequestMethod.GET)
	public String friends(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		System.out.println("here");
		model.addAttribute("friendList", session.getAttribute("list"));
		return "Friends";
	}

	@RequestMapping(value = "/friendhome", method = RequestMethod.GET)
	public String friendhome(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		System.out.println("here");
		model.addAttribute("friendList", session.getAttribute("list"));
		return "friendhome";
	}

	@RequestMapping(value = "/friendlocale", method = RequestMethod.GET)
	public String friendlocale(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		System.out.println("here");
		model.addAttribute("friendList", session.getAttribute("list"));
		return "friendlocale";
	}

	@RequestMapping(value = "/friendphoto", method = RequestMethod.GET)
	public String friendphoto(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		System.out.println("here");
		model.addAttribute("friendList", session.getAttribute("list"));
		return "friendphoto";
	}

	@RequestMapping(value = "/frienddevices", method = RequestMethod.GET)
	public String frienddevices(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		System.out.println("here");
		model.addAttribute("friendList", session.getAttribute("list"));
		return "frienddevices";
	}

	@RequestMapping(value = "/1111", method = RequestMethod.GET)
	public String friendplace(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		return "Place";
	}

	
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public String Signin(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {

		System.out.println("log was called, page turn to log.jsp");

		return "Login";
	}
	
	
	
	
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public String getPlace(Locale locale, Model model,
			HttpServletRequest request,

			@RequestParam("lon") String lon, @RequestParam("lat") String lat,
			@RequestParam("type") String type,
			@RequestParam("scope") String scope, HttpServletResponse response,
			HttpSession session) throws IOException {

		String accesstoken = (String) session.getAttribute("access");

		// String url1 =
		// "https://graph.facebook.com/search?q="+type+"&type=place&access_token="
		// + accesstoken;
		String url1;
		if (type == null||type.equals("TypeofPlace")) {
			url1 = "https://graph.facebook.com/search?q=coffee&type=place&access_token="
					+ accesstoken;
		}
		if (lon == null || lat == null || scope == null||lon.equals("Lontitude")||lat.equals("Latitude")||scope.equals("Scope")) {
			url1 = "https://graph.facebook.com/search?q=" + type
					+ "&type=place&access_token=" + accesstoken;

		} else {
			url1 = "https://graph.facebook.com/search?q=" + type
					+ "&type=place&center=" + lon + "," + lat + "&distance="
					+ scope + "&access_token=" + accesstoken;
		}
		String action = null;
		IPlaceService service = new PlaceService();
		String jsonResult = service.sendRequest(url1, accesstoken, action);
		List<Place> list1 = Util2.parseJsonFromFB(jsonResult);

		session.setAttribute("list1", list1);

		System.out.println("zhelideshi  " + list1.get(0).getName());
		model.addAttribute("friendList", list1);

		return "Place";
	}
	
	
	
	
	
	
	@RequestMapping(value = "/adding", method = RequestMethod.POST)
	public String AddPlace(Locale locale, Model model,
			HttpServletRequest request,

			@RequestParam("no") Integer number, 
			@RequestParam("lontitude") String lon,
			@RequestParam("latitude") String lat,
			@RequestParam("type") String type, 
			@RequestParam("name") String name,
			@RequestParam("address") String address, 
			HttpServletResponse response,
			HttpSession session) throws IOException {

		BestPlace bp = generateBestPlace(number,lon,lat,type,name,address);
		bpService.addBestPlace(bp);

		return "redirect:/log/bestplace2";
	}
	
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String DeletePlace(Locale locale, Model model,
			HttpServletRequest request,

			@RequestParam("id") Integer number, 
			 
			HttpServletResponse response,
			HttpSession session) throws IOException {

		BestPlace bp=new BestPlace();
		bp.setId(number);
		bpService.deleteBestPlace(bp);

		return "redirect:/log/bestplace2";
	}
	
	@RequestMapping(value = "/checking", method = RequestMethod.POST)
	public String Checking(Locale locale, Model model,
			HttpServletRequest request,

			@RequestParam("email") String email, 
			@RequestParam("password") String password,
			HttpServletResponse response,
			HttpSession session) throws IOException {
System.out.println(email);
System.out.println(password);
		if(email.equals("cs402@uwlax.uwl")&&password.equals("wildflowers")){
			return "Manager";
		}
		else{
			return "FailureLogin";
		}
		
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/findfriends", method = RequestMethod.GET)
	public String findfriends(Locale locale, Model model,
			HttpServletRequest request,

			@RequestParam("friendsname") String username, 
			 
			HttpServletResponse response,
			HttpSession session) throws IOException {
System.out.println(username);
		String urlfriend=null;
		if (username == null||username.equals("FriendsUserName")) {
		urlfriend="https://graph.facebook.com/pepsi";
					
		}
		else {
			urlfriend = "https://graph.facebook.com/"+username;
			
		}
		String action = null;
		IFindService service = new FindService();
		String jsonResult = service.sendRequest(urlfriend,  action);
		List<FindFriends> list1 = Util3.parseJsonFromFB(jsonResult);

		session.setAttribute("list1", list1);

		System.out.println("zhelideshi  " + list1.get(0).getName());
		model.addAttribute("friendList", list1);
		
		return "findfriends";
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	private BestPlace generateBestPlace(Integer number,String lon, String lat,
			String type, String name, String address) {
		// TODO Auto-generated method stu
		BestPlace bp = new BestPlace();
		
		bp.setLongtitude(lon);
		bp.setLatitude(lat);
		bp.setTypeOfPlace(type);
		bp.setPlaceName(name);
		bp.setAddress(address);
		return bp;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String log(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {

		System.out.println("log was called, page turn to log.jsp");

		//public String qq(Locale locale, Model model,
		//		HttpServletRequest request, HttpServletResponse response,
		//		HttpSession session) {
		//	List<BestPlace> list = bpService.getBestPlaceList();
		//	for (int i = 0; i < list.size(); i++) {
		//		System.out.println(list.get(i).getLongtitude());
		//	}
		//	session.setAttribute("list2", list);
		//	model.addAttribute("BestPlace", list);
		
		
		
		
		return "log";
	}

	@RequestMapping(value = "/bestplace", method = RequestMethod.GET)
	public String bestPlace(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		List<BestPlace> list = bpService.getBestPlaceList();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getLongtitude());
		}
		session.setAttribute("list2", list);
		model.addAttribute("BestPlace", list);
		return "BestPlace";
	}
	
	
	@RequestMapping(value = "/bestplace2", method = RequestMethod.GET)
	public String bestplace2(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		List<BestPlace> list = bpService.getBestPlaceList();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getLongtitude());
		}
		session.setAttribute("list2", list);
		model.addAttribute("BestPlace", list);
		
		
		return "BestPlaceManager";
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {

		System.out.println("log was called, page turn to log.jsp");

		return "AddBestPlace";
	}
	
	@RequestMapping(value = "/deleting", method = RequestMethod.GET)
	public String deleteplace(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {

		System.out.println("log was called, page turn to log.jsp");
		List<BestPlace> list = bpService.getBestPlaceList();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getLongtitude());
		}
		session.setAttribute("list2", list);
		model.addAttribute("BestPlace", list);
		return "DeletePlace";
	}
	
	
}
