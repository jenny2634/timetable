package com.jinyeji.timetable.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TimetableDao {
	
	@Autowired
	SqlSessionTemplate ss;
	
	//강의 목록 불러오기
	public List<Map<String, Object>> selectCourse(){
		return ss.selectList("timetable.selectCourse");
	}
	
	//검색한 강의 목록 불러오기
	public List<Map<String, Object>> selectSearch(String search_text){
		return ss.selectList("timetable.selectSearch",search_text);
	}
	
	//메모 쓰기
	public int insert_memo(Map<String, Object> map) {
		return ss.insert("timetable.insert_memo",map);
	}
	
	//메모 불러오기
	public List<Map<String, Object>> selectMemo(String lecture){
		return ss.selectList("timetable.selectMemo",lecture);
	}
	
	//메모 불러오기
	public List<Map<String, Object>> selectTotal(String lecture){
		return ss.selectList("timetable.selectTotal",lecture);
	}
	
	//메모 삭제하기
	public int deleteMemo(Map<String, Object> map) {
		return ss.delete("timetable.deleteMemo",map);
	}
	
	
	

}
