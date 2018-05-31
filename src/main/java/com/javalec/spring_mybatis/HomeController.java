package com.javalec.spring_mybatis;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.javalec.spring_mybatis.dao.IDao;
import com.javalec.spring_mybatis.dto.ProfileDto;

/**
 * Handles requests for the application home page.
 */

//@SessionAttributes("command")
@Controller
public class HomeController {
	
	



	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
/*	ContentDao dao;*/
	
	@Autowired
	private SqlSession sqlSession;
	
/*	@Autowired
	public void setDao(ContentDao dao) {
		this.dao = dao;
	}*/
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	//----------------------------------------------프로젝트-------------------------------------------//
	@RequestMapping("/index")
	public String index(HttpServletRequest request) {
		request.setAttribute("testest", "190");
		
		
		return "index";
	}
	
	@RequestMapping("/index-Brand")
	public String index_Brand() {
		
		return "index-Brand";
	}
	
	@RequestMapping("/index-Rent")
	public String indexRent() {
		
		return "index-Rent";
	}
	
	@RequestMapping("/join")
	public String join() {
		
		return "/join";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "/login";
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
	
		HttpSession session = request.getSession();
		session.invalidate();//죽어라 세션
		
		return "/index";
	}
	
	@RequestMapping("/loginOK")
	public String loginOK(Model model,HttpServletRequest request) {
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ProfileDto> check = dao.loginDao(id,pw);
		
		if(check.isEmpty()) {
		
			model.addAttribute("error","아이디 혹은 번호가 일치하지 않습니다.");
		return"login";
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		
		return "index";
	}
	
	@RequestMapping("/joinOK")
	public String joinTM(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<ProfileDto> overlapchecking= dao.ProfileOverlapDao(request.getParameter("id"));
		
		if(overlapchecking.isEmpty()) {
		
		dao.joinDao(request.getParameter("name"),request.getParameter("id"),
		request.getParameter("pw"),request.getParameter("tel"));
		return "index";}
		
		model.addAttribute("error","아이디가 이미 있습니다.");
		return "join";
		
	}
	
	@RequestMapping("/lease")
	public String lease() {
		
		return "lease";
	}
	
	@RequestMapping("/leaseOK")
	public String leaseOK(HttpServletRequest request,Model model) {
		String con_type =request.getParameter("con_type");
		int quantity = Integer.parseInt(request.getParameter("quantity"));

		String s_date =request.getParameter("s_date");
		String l_date =request.getParameter("l_date");
		
		//System.out.println(request.getParameter("con_type"));
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int num=dao.ordercheckDao(con_type,s_date,l_date);
		
		model.addAttribute("number",num+"개 입니다.");
		
		if(quantity>num) {
			model.addAttribute("error","컨테이너수가 부족합니다.\n 예약된 기간의 저희 최소 컨테이너수는 "+num+"개 입니다.");
		return "lease";
		
		}
		
		dao.orderDao(request.getParameter("id"), con_type, quantity,s_date,l_date,
				request.getParameter("r_address"), request.getParameter("etc"), 
				request.getParameter("rman_name"), request.getParameter("rman_tel"),
				request.getParameter("rman_company"), request.getParameter("rman_mail"));
		
		dao.conupdateDao(con_type,s_date,l_date);//컨테이너 업데이트
		
		return "index";
	}
	
	@RequestMapping("/mylist")
	public String mylist(HttpServletRequest request,Model model) throws UnsupportedEncodingException {
	
		
		HttpSession session = request.getSession();
		String id=(String)session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ProfileDto myinfo= dao.profileDao(id);
		
		model.addAttribute("profile",myinfo);
		//request.setAttribute("profile",myinfo);
		//model.addAttribute("profile", dao.profileDao(id));
		
		
		model.addAttribute("orderlist", dao.myDao(id));
		
		return "/mylist";
	}
	
	@RequestMapping("/modifyOK")
	public String modifyOK(Model model,HttpServletRequest request) {
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.modifyProfile(request.getParameter("name"),request.getParameter("id"),
				request.getParameter("pw"),request.getParameter("tel"));
		
		//리퀘스트 필요
		
		return "redirect:mylist";//그냥 mylist쓰면 mylist로만 가지 mylist함수 발동안하고 redirect쓰면 mylist함수 발동
	}
	//--------------------------------------------------------------프로젝트------------------------------
	@RequestMapping("/list")
	public String list(Model model) {
//		ArrayList<ContentDto> dtos = dao.listDao();
		IDao dao = sqlSession.getMapper(IDao.class);
//		ArrayList<ContentDto> dtos = dao.listDao();
		model.addAttribute("list", dao.listDao());
		
		return "/list";
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		
		return "/writeForm";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.writeDao(request.getParameter("mWriter"), request.getParameter("mContent"));
		return "redirect:list";
	}
	
	
	@RequestMapping("/view")
	public String view() {
		
		return "/view";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("mId"));
		return "redirect:list";
	}
	
}
