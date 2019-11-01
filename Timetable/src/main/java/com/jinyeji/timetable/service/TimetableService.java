package com.jinyeji.timetable.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinyeji.timetable.dao.TimetableDao;

@Service
public class TimetableService {
	
	@Autowired
	TimetableDao timetableDao;
	
	//강의 목록 불러오기
	public List<Map<String, Object>> selectCourse(){
		return timetableDao.selectCourse();
	}
	
	//검색한 강의 목록 불러오기
	public List<Map<String, Object>> selectSearch(String search_text){
		return timetableDao.selectSearch(search_text);
	}

	//메모 작성하기
	public void insert_memo(Map<String, Object> map) {
		int result = timetableDao.insert_memo(map);
	}
	
	//메모 불러오기
	public List<Map<String, Object>> selectMemo(String lecture){
		return timetableDao.selectMemo(lecture);
	}
	
	//메모 불러오기
	public List<Map<String, Object>> selectTotal(String lecture){
		return timetableDao.selectTotal(lecture);
	}
	
	//메모 삭제하기
	public void deleteMemo(Map<String, Object> map) {
		timetableDao.deleteMemo(map);
	}

}
