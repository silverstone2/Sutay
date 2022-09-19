package com.pina.jisutay.reservation.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pina.jisutay.reservation.dto.ReservationDto;
import com.pina.jisutay.reservation.service.ReservationService;
import com.pina.jisutay.room.service.RoomService;

@Controller
public class ReservationController {
	@Autowired
	private RoomService service;
	
	@Autowired
	private ReservationService res_service;
	
	@RequestMapping("/reservation/list.do")
	public String getList(HttpServletRequest request, ReservationDto dto) {
		
		service.getList(request);
		
		
		
		return "reservation/list";
	}
	
	@RequestMapping("/reservation/list")
	public ModelAndView detail(int num, ModelAndView mav, ReservationDto dto) {
		
		//String check_in = "엥";
		//request.setAttribute("check_in", check_in);
		
		//String check_in = (String)dto.getCheck_in();
		
		service.getDetail(num, mav);
		mav.setViewName("reservation/list");
		return mav;
	}

	


}
