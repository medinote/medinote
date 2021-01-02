package com.project.medinote;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bbs.util.Paging;
import mybatis.dao.LoginDAO;
import mybatis.dao.MypageDAO;
import mybatis.vo.BbsVO;
import mybatis.vo.MemVO;
import mybatis.vo.MypageVO;

@Controller
public class MypageController {
	
	@Autowired
	private MypageDAO mp_dao;
	
	@Autowired
	private LoginDAO login_dao;
	
	@Autowired
	private  HttpSession session; 
	
	@Autowired
	private HttpServletRequest request;
	
	private int blockList = 5;
	private int blockPage = 3;
	private String u_id;
	private String u_pw;
	
	
	//------최근 검색내역 보여주기--------------------------------------------
	
	@RequestMapping("/myPage")
	public ModelAndView myPage(String cPage) {
		
		u_id =(String)session.getAttribute("loginId");
		
		//System.out.println("아이디가 뭐에요??"+u_id);
		
		ModelAndView mv = new ModelAndView();
		
		//총 검색내역 수 ****************
		int totalRow = mp_dao.srchTagTotalCount(u_id);
		
		//cPage는 현재 페이지값을 의미한다.
		int c_page = 1; //cPage값이 없으면 항상 첫페이지임을 의미
		if(cPage != null && cPage.trim().length() > 0) {
			c_page = Integer.parseInt(cPage);
		}
		
		Paging page = new Paging(c_page, totalRow, blockList, blockPage);
		
		MypageVO[] ar = mp_dao.recent_srch(page.getBegin(), page.getEnd(), u_id);
		
		mv.addObject("ar", ar);
		mv.addObject("cPage", c_page);
		mv.addObject("totalRow", totalRow);
		mv.addObject("pCode", page.getSb2().toString());
		mv.addObject("blockList", blockList);
		
		mv.setViewName("myPage/myPage");

		return mv;	
	}

	//------정보 수정하기 위해 비밀번호 확인--------------------------------------------
	
	@RequestMapping("/infoEdit")
	public ModelAndView infoEdit() {
		
		u_id =(String)session.getAttribute("loginId");
		u_pw =(String)session.getAttribute("loginPw");
		
		ModelAndView mv = new ModelAndView();
		
		boolean result = mp_dao.pwChk(u_id, u_pw);
		mv.addObject("result", result);
		mv.setViewName("myPage/infoEdit");
		return mv;
	}
	
	//------정보 수정하기--------------------------------------------
	
	@RequestMapping("/infoEdit_ok")
	public Map<String, Object> infoEdit_ok() {
		u_id =(String)session.getAttribute("loginId");
		u_pw =(String)session.getAttribute("loginPw");
		MemVO vo = login_dao.login1(u_id, u_pw);
		
		Map<String, Object> map = new HashMap<String, Object>();
		boolean result = mp_dao.infoEdit(vo);
		map.put("result", result);
		return map;
	}	
	
	//------마이노트--------------------------------------------
	@RequestMapping("/myNote")
	public String myNote() {
		return "myPage/myNote";
	}
	
	//------내가 작성한 커뮤니티 글 보기--------------------------------------------

	@RequestMapping("/myComm")
	public ModelAndView myComm(String cPage) {
		ModelAndView mv = new ModelAndView();
		u_id =(String)session.getAttribute("loginId");
		
		//System.out.println("이번엔 무엇이 문제인고?"+u_id);
		
		String writer=u_id;
		int totalCount = mp_dao.myCommTotalCount(writer);
		
		System.out.println("토탈카운트"+totalCount);
		
		//cPage는 현재 페이지값을 의미한다.
		int c_page = 1; //cPage값이 없으면 항상 첫페이지임을 의미
		if(cPage != null && cPage.trim().length() > 0) {
			c_page = Integer.parseInt(cPage);
		}
		
		Paging page = new Paging(c_page, totalCount, blockList, blockPage);
		
		BbsVO[] ar = mp_dao.mylist(page.getBegin(), page.getEnd(), writer);
		
		mv.addObject("ar", ar);
		mv.addObject("cPage", c_page);
		mv.addObject("totalCount", totalCount);
		mv.addObject("pCode", page.getSb3().toString());
		mv.addObject("blockList", blockList);
		
		mv.setViewName("myPage/myComm");
		
		return mv;
	}
	
	//------내가 작성한 커뮤니티 글  검색하기--------------------------------------------
	
	@RequestMapping("/myCommsrch")
	public ModelAndView myCommsrch(String search_type, String search_content) {
		ModelAndView mv = new ModelAndView();
		
		BbsVO[] ar = mp_dao.myCommsrch(search_type, search_content);
		
		mv.addObject("ar", ar);
		mv.setViewName("myPage.myCommsrch");
		
		return mv;
	} 
}