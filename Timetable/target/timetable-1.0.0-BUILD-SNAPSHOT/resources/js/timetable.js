$('.card-lecture').click(function () {//강의목록 클릭시 팝업창
	  var lecture = $(this).find('.lecture-title').text();
	  $('.modal-body > .lecture-title').text(lecture);
	 
	  var time = $(this).find('.lecture-time > span').text().replace(/\s/gi,"");
	  var start_time = time.substring(0,5);
	  var end_time = time.substring(6,11);
	  var dayofweek = time.substring(12);
	  if(dayofweek.length > 4){
		  dayofweek = dayofweek.substring(0,4) + " " +dayofweek.substring(4); 
	  }
	  $('#modal-lecture-info').find('.lecture-time > span' ).text("강의 시간 : " + start_time +" - " + end_time +" | " + dayofweek);
	  
	  var code = $(this).find('.list-lecture-info > li:first').text();
	  code = code.substring(9);
	  $('#modal-lecture-info').find('.lecture-code:first > span').text("교과목 코드 : " + code);
	 
	  var professor = $(this).find('.list-lecture-info > li:eq(1)').text();
	  professor = professor.substring(8);
	  $('#modal-lecture-info').find('.lecture-code:eq(1) > span').text("담당 교수 : " + professor);
	 
	  var location = $(this).find('.list-lecture-info > li:last').text();
	  location = location.substring(6);
	  location = location.substring(0,2) + " " +location.substring(2);
	  $('#modal-lecture-info').find('.lecture-code:last > span').text("강의실 : " + location);
	  
	  $('#modal-lecture-info').modal('show');
});

var httpRequest = new XMLHttpRequest(); // ajax 객체

// 글쓰기 callback 함수
function alertContents() { // ajax 통신 후 callback 처리
	if (httpRequest.readyState === XMLHttpRequest.DONE) {
		if (httpRequest.status === 200) {
			// 정상 처리 후 (ajax -> success 함수와 같은 부분)
			console.log(httpRequest.responseText);
		} else {
			console.log('There was a problem with the request.');
		}
	}
}

// 메모조회 callback 함수
function getMemo() { // ajax 통신 후 callback 처리
	if (httpRequest.readyState === XMLHttpRequest.DONE) {
		if (httpRequest.status === 200) {
			// 정상 처리 후 (ajax -> success 함수와 같은 부분)
			console.log(httpRequest.responseText);
			
		    var html_memo="";
		    
		    var memo_list = JSON.parse(httpRequest.responseText);
		    for(var i = 0; i < memo_list.length; i++) {
		    	var memo = memo_list[i];
			    html_memo += ' <div class="lecture-noti" data-toggle="tooltip" data-placement="top"';
			    html_memo += ' title="" ';
			    html_memo += ' data-original-title="'+memo.content+'">';
			    html_memo += ' <i class="material-icons ic-lecture-noti">assignment</i> ';
			    html_memo += ' <span class="lecture-noti-title">'+memo.title+'</span></div> ';
		    }
		    
		  console.log(html_memo);
			
		} else {
			console.log('There was a problem with the request.');
		}
	}
}

//시간표 중복검사
var count_lecture = 0;
var check_Lecture = new Array(5);
check_Lecture[0] = new Array(9);
check_Lecture[1] = new Array(9);
check_Lecture[2] = new Array(9);
check_Lecture[3] = new Array(9);
check_Lecture[4] = new Array(9);

//과목등록하기 버튼 클릭 시 
$('.btn.btn-primary').click(function(){
	
	  var lecture = $(this).parents('div').find('.lecture-title').text();
	  var location = $(this).parents('div').find('.lecture-code:last > span').text().substring(6);
	  var time = $(this).parents('div').find('.lecture-time > span').text().replace(/\s/gi,"");
	  var start_time = time.substring(5,7);
	  var end_time = time.substring(11,13);
	  var hour = end_time - start_time;
	  var dayofweek = time.substring(17);
	  var day = dayofweek.substring(1,2);
	  
	  var day_num = -1;
	  if(day == "월") day_num = 0;
	  else if(day == "화") day_num = 1;
	  else if(day == "수") day_num = 2;
	  else if(day == "목") day_num = 3;
	  else if(day == "금") day_num = 4;
	  
	  var start_num = -1;
	  if(start_time == "09") start_num = 0;
	  else if(start_time == "10") start_num = 1;
	  else if(start_time == "11") start_num = 2;
	  else if(start_time == "12") start_num = 3;
	  else if(start_time == "13") start_num = 4;
	  else if(start_time == "14") start_num = 5;
	  else if(start_time == "15") start_num = 6;
	  else if(start_time == "16") start_num = 7;
	  else if(start_time == "17") start_num = 8;
	  
	  var day2 ="";	 
	  var day_num2= -1;	  
	  if(dayofweek.length > 4){
		  day2 = dayofweek.substring(5,6);
		  if(day2 == "월") day_num2 = 0;
		  else if(day2 == "화") day_num2 = 1;
		  else if(day2 == "수") day_num2 = 2;
		  else if(day2 == "목") day_num2 = 3;
		  else if(day2 == "금") day_num2 = 4;
		  
	  }
	  
	  var hasCheck = -1;	  
	  if(day2 != ""){//수업이 일주일에 2번이면
		  if(check_Lecture[day_num][start_num] == null){//1번째 시간표
			  if(hour == 2){//2시간 수업일때
				  if(check_Lecture[day_num][start_num+1] == null){//겹치는게 없으면
					  if(check_Lecture[day_num2][start_num] == null){//2번째 시간표
						  if(check_Lecture[day_num2][start_num+1] == null){//겹치는게 없으면
							  hasCheck = 1;
							  check_Lecture[day_num][start_num] = 1;
							  check_Lecture[day_num][start_num+1] = 1;
							  check_Lecture[day_num2][start_num] = 1;
							  check_Lecture[day_num2][start_num+1] = 1;
						  }
					  }
				  }
			  }else{//수업 1시간일때
				  if(check_Lecture[day_num2][start_num] == null){//2번째 시간표 겹치는게 없으면
					  hasCheck = 1;
					  check_Lecture[day_num][start_num] = 1;
					  check_Lecture[day_num2][start_num] = 1;		
				  }
			  } 
		  } 
	  }
	  else{//수업이 일주일에 1번이면
		  if(check_Lecture[day_num][start_num] == null){
			  if(hour == 2){ //2시간 일때
				  if(check_Lecture[day_num][start_num+1] == null){//겹치는게 없으면
					  hasCheck = 1;
					  check_Lecture[day_num][start_num] = 1;
					  check_Lecture[day_num][start_num+1] = 1;
				  }
			  }else{//1시간일때			 
				  hasCheck = 1;
				  check_Lecture[day_num][start_num] = 1;
			  }
		  }
	  }
	  

	 
	  
	  if(hasCheck != 1) 
		  alert("시간표가 중복됩니다");
	  else{
		  var param = `?lecture=${lecture}`; 
			
		  httpRequest.onreadystatechange = getMemo; // 통신 후 처리할 callback 함수 지정
		  httpRequest.open('get', 'show_memo' + param);
		  httpRequest.send();
		  
		  // 
		  count_lecture++;
		  var html='';
		  html += '<li class="lecture-time';
		  	if(hour == 2) html += ' two-hr';
		  html += ' hr-'+start_time+'"' ;
			if(count_lecture < 10) html += ' data-event="lecture-0'+count_lecture+'">';
			else html += ' data-event="lecture-'+count_lecture+'">';	
		  html +=' <a href="#">';
		  html +=' <div class="lecture-info">';
		  html +=' <h6 class="lecture-title">'+lecture+'</h6>';
		  html +=' <h6 class="lecture-location">'+location+'</h6></div>';
		 // html += html_memo;
		  html +=' </a></li>';	
		  
		  console.log(html);
		  
		  if(day == '월' || day2 == '월'){
			 $('.timeline-vertical > ul:first').append(html);	
		  }
		  if(day == '화' || day2 == '화'){
			  $('.timeline-vertical > ul:eq(1)').append(html);
		  }
		  if(day == '수' || day2 == '수'){
			 $('.timeline-vertical > ul:eq(2)').append(html);
		 }
		  if(day == '목' || day2 == '목'){
			 $('.timeline-vertical > ul:eq(3)').append(html);
		  }
		  if(day == '금' || day2 == '금'){
			 $('.timeline-vertical > ul:last').append(html);
		  }
	  }

	 $('#modal-lecture-info').modal("hide");
});

//시간표에서 강의클릭시 팝업
$(document).on('click', '.lecture-time > a', function () {
  $('#modal-lecture-task').modal('show');
});




// 메모등록
$(document).on('click', '.btn.btn-primary.btn-save', function () {
	var lecture = $('#modal-lecture-task').find('.lecture-title').text();
	var title = $('[id=recipient-name]:last').val();
	var content = $('[id=message-text]:last').val();
	
	//var hh = $('.memo-list span').text();
	//console.log(hh);
	

	var param = `?lecture=${lecture}&title=${title}&content=${content}`; 

	httpRequest.onreadystatechange = alertContents; // 통신 후 처리할 callback 함수 지정
    httpRequest.open('get', 'register_memo' + param);
    httpRequest.send();
  

//	fetch('memo', {
//		method: 'post',
//		body: JSON.stringify(req),
//		headers:{
//			'Content-Type': 'application/json'
//	    }
//	}).then(result => {
//		console.log(result);
//	});

//	$.get('memo', {
//		"lecture":lecture,
//		"title":title,
//		"content":content		
//	},function(data) {
//		console.log(data);
//	})
	
//	$.ajax({
//		url:"../memo",
//		data:{
//			"lecture":lecture,
//			"title":title,
//			"content":content		
//		},
//		success:function(){
//			console.log("메모등록");
//			
//		},
//		error : function() {
//            alert("Error");
//        }
//	});
    $('[data-toggle="popover"]').popover('hide');
	return false;
	
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});

$(function () {
  $('[data-toggle="popover"]').popover({
    container: 'body',
    html: true,
    placement: 'right',
    sanitize: false,
    content: function () {
    return $("#PopoverContent").html();
    }
  });
});