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
		model.addAttribute("courses",courses);
		
		return "home";
	}
	
	//메모 등록하기
	@RequestMapping(value="/register_memo")
	@ResponseBody
	public String register_memo( @RequestParam Map<String,Object> map) {
		
		timetableService.insert_memo(map);
	
		return "success";
	}
	
	//마지막 메모 등록하기
	@RequestMapping(value="/recent_memo")
	@ResponseBody
	public List<Map<String, Object>> recent_memo( @RequestParam Map<String,Object> map) {
		
		List<Map<String, Object>> lmemo = timetableService.select_lMemo(map);
		System.out.println("마지막 메모:"+lmemo);
		return lmemo;
	}


	//시간표에 메모 보여주기
	@RequestMapping(value="/show_memo")
	@ResponseBody
	public List<Map<String, Object>> show_memo(@RequestParam String lecture) {
		
		List<Map<String, Object>> memos = timetableService.selectMemo(lecture);
		
		return memos;
	}
	
	//시간표에 강의 클릭하면 팝업
	@RequestMapping(value="/show_pop")
	@ResponseBody
	public List<Map<String, Object>> show_pop(@RequestParam String lecture) {
		
		List<Map<String, Object>> total = timetableService.selectTotal(lecture);
		
		return total;
		
	}
	
	//메모 삭제하기 
	@RequestMapping(value="/delete_memo")
	@ResponseBody
	public String delete_memo(@RequestParam Map<String,Object> map) {
		
		timetableService.deleteMemo(map);
		System.out.println("삭제:"+map);
		return "success";
		
	}
	
	//검색한 강의 목록 불러오기
	@RequestMapping(value="/search")
	@ResponseBody
	public List<Map<String, Object>> search(@RequestParam String search_text) {
		
		List<Map<String, Object>> s_list = timetableService.selectSearch(search_text);
		
		return s_list;
		
	}
	
	
}
