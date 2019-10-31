package com.jinyeji.timetable.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinyeji.timetable.service.TimetableService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	TimetableService timetableService;
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		//logger.info("Welcome home! The client locale is {}.", locale);
		
		List<Map<String, Object>> courses = timetableService.selectCourse();
		//System.out.println(courses);
		model.addAttribute("courses",courses);
		
		return "home";
	}
	
	//메모 등록하기
	@RequestMapping(value="/register_memo")
	@ResponseBody
	public String register_memo(Model model
			, @RequestParam Map<String,Object> map) {
		
		System.out.println(map);
		timetableService.insert_memo(map);
		
		return "success";
	}
	
	//시간표에 메모 보여주기
	@RequestMapping(value="/show_memo")
	@ResponseBody
	public List<Map<String, Object>> show_memo(@RequestParam String lecture) {
		

		List<Map<String, Object>> memos = timetableService.selectMemo(lecture);
		System.out.println(memos);
		
		return memos;
	}
	
	//시간표에 강의 클릭하면 팝업
	@RequestMapping(value="/show_pop")
	@ResponseBody
	public List<Map<String, Object>> show_pop(@RequestParam String lecture) {
		
		List<Map<String, Object>> total = timetableService.selectTotal(lecture);
		System.out.println(total);
		
		return total;
		
	}
	
	
}
