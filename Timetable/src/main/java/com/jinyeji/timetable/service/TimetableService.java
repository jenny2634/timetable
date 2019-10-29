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
	
	public List<Map<String, Object>> selectCourse(){
		return timetableDao.selectCourse();
	}

}
