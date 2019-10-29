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
	
	public List<Map<String, Object>> selectCourse(){
		return ss.selectList("timetable.selectCourse");
	}

}
