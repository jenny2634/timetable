<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Timetable</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/timetable.css" rel="stylesheet">
</head>
<body>
 
	<div class="container-lecture">
		<section class="header">
			<h3 class="headline">시간표 만들기</h3>
		</section>
		<section class="section-nav">
			<form id="search-form" class="form-search">
				<input type="text" placeholder="강의 검색" class="form-control">
				<span><i class="material-icons ic-search">search</i></span>
			</form>

			<ul class="list-lecture">
				<li class="card-lecture"><a class="lecture-title" href="#">웹
						프로그래밍</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (월), (수)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000001</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">프로그래밍의
						원리</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>13:00
							- 10:50 | (월), (수)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000002</li>
						<li>담당 교수 : 이지형</li>
						<li>강의실 : 공학1관 102</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">논리
						설계</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>16:00
							- 17:00 | (월)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000003</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">자료
						구조</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (화), (목)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000004</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">알고리즘</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (화), (목)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000005</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">컴퓨터
						네트워크</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (화)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000006</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">컴파일러</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (수)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000007</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">데이터베이스</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (목)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000008</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">데이터
						통신</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (금)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000009</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>

				<li class="card-lecture"><a class="lecture-title" href="#">운영체제</a>
					<h6 class="lecture-time">
						<i class="material-icons ic-lecture-info">access_time</i> <span>09:00
							- 10:50 | (금)</span>
					</h6>
					<ul class="list-lecture-info">
						<li>교과목 코드 : A0000010</li>
						<li>담당 교수 : 김진수</li>
						<li>강의실 : 공학관 204</li>
					</ul></li>
			</ul>
		</section>

		<section class="section-list">
			<div class="container-xl">
				<header class="header-timetable-info">
					<h3>2019년 11월</h3>
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-light btn-previous">
							<i class="material-icons ic-previous">chevron_left</i>
						</button>
						<button type="button" class="btn btn-light btn-today">오늘</button>
						<button type="button" class="btn btn-light btn-next">
							<i class="material-icons ic-next">chevron_right</i>
						</button>
					</div>
				</header>
				<div class="table-schedule">
					<div class="timeline">
						<ul>
							<li><span>09:00</span></li>
							<li><span>09:30</span></li>
							<li><span>10:00</span></li>
							<li><span>10:30</span></li>
							<li><span>11:00</span></li>
							<li><span>11:30</span></li>
							<li><span>12:00</span></li>
							<li><span>12:30</span></li>
							<li><span>13:00</span></li>
							<li><span>13:30</span></li>
							<li><span>14:00</span></li>
							<li><span>14:30</span></li>
							<li><span>15:00</span></li>
							<li><span>15:30</span></li>
							<li><span>16:00</span></li>
							<li><span>16:30</span></li>
							<li><span>17:00</span></li>
							<li><span>17:30</span></li>
							<li><span>18:00</span></li>
						</ul>
					</div>

					<div class="table-schedule-subject">
						<ul class="list-lecture-item">
							<li class="timeline-vertical">
								<div class="top-info today">
									<h4 class="day">Mon</h4>
									<h6 class="date">4</h6>
								</div>
								<ul>
									<li class="lecture-time two-hr hr-11" data-event="lecture-01">
										<a href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">웹 프로그래밍</h6>
												<h6 class="lecture-location">공학관 204</h6>
											</div>
											<div class="lecture-noti" data-toggle="tooltip"
												data-placement="top" title=""
												data-original-title="과제 설명 텍스트 과제 설명 텍스트 과제 설명 텍스트">
												<i class="material-icons ic-lecture-noti">assignment</i> <span
													class="lecture-noti-title">과제 제목 텍스트</span>
											</div>
									</a>
									</li>

									<li class="lecture-time two-hr hr-13" data-event="lecture-02">
										<a href="#">
											<div class="lecture-info">
												<h6 class="lecture-title ">프로그래밍의 원리</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
											<div class="lecture-noti" data-toggle="tooltip"
												data-placement="top" title=""
												data-original-title="과제 설명 텍스트 과제 설명 텍스트 과제 설명 텍스트">
												<i class="material-icons ic-lecture-noti">assignment</i> <span
													class="lecture-noti-title">과제 제목 텍스트</span>
											</div>

									</a>
									</li>

									<li class="lecture-time hr-16" data-event="lecture-03"><a
										href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">논리 설계</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="timeline-vertical">
								<div class="top-info">
									<h4 class="day">Tue</h4>
								</div>
								<ul>
									<li class="lecture-time two-hr hr-10" data-event="lecture-04">
										<a href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">자료 구조</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
									</a>
									</li>

									<li class="lecture-time hr-12" data-event="lecture-05"><a
										href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">알고리즘</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
									</a></li>

									<li class="lecture-time hr-16" data-event="lecture-06"><a
										href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">컴퓨터 네트워크</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="timeline-vertical">
								<div class="top-info">
									<h4 class="day">Wed</h4>
								</div>

								<ul>
									<li class="lecture-time two-hr hr-10" data-event="lecture-01">
										<a href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">웹 프로그래밍</h6>
												<h6 class="lecture-location">공학관 204</h6>
											</div>

									</a>
									</li>

									<li class="lecture-time hr-12" data-event="lecture-07"><a
										href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">컴파일러</h6>
												<h6 class="lecture-location">공학관 602</h6>
											</div>
									</a></li>

									<li class="lecture-time two-hr hr-13" data-event="lecture-02">
										<a href="#">
											<div class="lecture-info">
												<h6 class="lecture-title ">프로그래밍의 원리</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
											<div class="lecture-noti" data-toggle="tooltip"
												data-placement="top" title=""
												data-original-title="과제 설명 텍스트 과제 설명 텍스트 과제 설명 텍스트">
												<i class="material-icons ic-lecture-noti">assignment</i> <span
													class="lecture-noti-title">과제 제목 텍스트</span>
											</div>

									</a>
									</li>

								</ul>
							</li>

							<li class="timeline-vertical">
								<div class="top-info">
									<h4 class="day">Thu</h4>
								</div>

								<ul>
									<li class="lecture-time two-hr hr-10" data-event="lecture-04">
										<a href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">자료 구조</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
											<div class="lecture-noti" data-toggle="tooltip"
												data-placement="top" title=""
												data-original-title="과제 설명 텍스트 과제 설명 텍스트 과제 설명 텍스트">
												<i class="material-icons ic-lecture-noti">assignment</i> <span
													class="lecture-noti-title">과제 제목 텍스트</span>
											</div>

									</a>
									</li>

									<li class="lecture-time hr-12" data-event="lecture-05"><a
										href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">알고리즘</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
									</a></li>

									<li class="lecture-time hr-15" data-event="lecture-08"><a
										href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">데이터베이스</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
									</a></li>

								</ul>
							</li>

							<li class="timeline-vertical">
								<div class="top-info">
									<h4 class="day">Fri</h4>
								</div>

								<ul>
									<li class="lecture-time hr-10" data-event="lecture-09"><a
										href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">데이터 통신</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
									</a></li>

									<li class="lecture-time two-hr hr-12" data-event="lecture-10">
										<a href="#">
											<div class="lecture-info">
												<h6 class="lecture-title">운영 체제</h6>
												<h6 class="lecture-location">공학1관 102</h6>
											</div>
											<div class="lecture-noti" data-toggle="tooltip"
												data-placement="top" title=""
												data-original-title="과제 설명 텍스트 과제 설명 텍스트 과제 설명 텍스트">
												<i class="material-icons ic-lecture-noti">assignment</i> <span
													class="lecture-noti-title">과제 제목 텍스트</span>
											</div>
									</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>

	<div class="modal fade" id="modal-lecture-info" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<h3 class="lecture-title">웹 프로그래밍</h3>
					<ul class="lecture-info">
						<li class="lecture-time"><i
							class="material-icons ic-lecture-info">access_alarm</i> <span>강의
								시간 : 09:00 - 10:50 | (월), (수)</span></li>
						<li class="lecture-code"><i
							class="material-icons ic-lecture-info">code</i> <span>교과목
								코드 : A0000001</span></li>
						<li class="lecture-code"><i
							class="material-icons ic-lecture-info">school</i> <span>담당
								교수 : 김진수</span></li>
						<li class="lecture-code"><i
							class="material-icons ic-lecture-info">business</i> <span>강의실
								: 공학관 204</span></li>
					</ul>
					<div class="lecture-description">
						<p class="txt-description">본 강의에서는 JSP를 이용한 웹 기반 프로그래밍 기초 및
							응용기술에 대해 학습합니다. 특히 실습 위주의 수업으로 프로그래밍 스킬 향상 및 실무 능력을 갖출 수 있도록 합니다.
						</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">과목 등록하기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modal-lecture-task" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<h3 class="lecture-title">웹 프로그래밍</h3>
					<ul class="lecture-info">
						<li class="lecture-time"><i
							class="material-icons ic-lecture-info">access_alarm</i> <span>강의
								시간 : 09:00 - 10:50 | (월), (수)</span></li>
						<li class="lecture-code"><i
							class="material-icons ic-lecture-info">code</i> <span>교과목
								코드 : A0000001</span></li>
						<li class="lecture-code"><i
							class="material-icons ic-lecture-info">school</i> <span>담당
								교수 : 김진수</span></li>
						<li class="lecture-code"><i
							class="material-icons ic-lecture-info">business</i> <span>강의실
								: 공학관 204</span></li>
					</ul>
					<div class="lecture-description">
						<p class="txt-description">본 강의에서는 JSP를 이용한 웹 기반 프로그래밍 기초 및
							응용기술에 대해 학습합니다. 특히 실습 위주의 수업으로 프로그래밍 스킬 향상 및 실무 능력을 갖출 수 있도록 합니다.
						</p>
					</div>

					<div class="lecture-memo">
						<h5 class="memo-header">메모</h5>
						<ul>
							<li class="memo-list">
								<div class="memo-content" data-toggle="tooltip"
									data-placement="top" title=""
									data-original-title="과제 설명 텍스트 과제 설명 텍스트 과제 설명 텍스트">
									<i class="material-icons ic-lecture-noti">assignment</i> <span
										class="lecture-noti-title">과제 제목 텍스트</span>
								</div>
								<div class="memo-btn">
									<a href=""><i class="material-icons ic-lecture-noti">delete</i></a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="modal-footer">
					<div class="left">
						<button class="btn btn-light-primary" type="button"
							data-toggle="popover" data-trigger="click" data-placement="right"
							data-html="true">메모 등록</button>
					</div>
					<div class="right">
						<button type="button" class="btn btn-light" data-dismiss="modal">확인</button>
						<button type="button" class="btn btn-danger">과목 삭제하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="PopoverContent" style="display: none;">
		<h5 class="schedule-title">메모 등록하기</h5>
		<div class="form-group">
			<label class="col-form-label">제목 <input type="text"
				class="form-control" id="recipient-name" placeholder="제목 추가">
			</label>
		</div>
		<div class="form-group">
			<label for="message-text" class="col-form-label">설명</label>
			<textarea class="form-control" id="message-text" placeholder="설명 추가"></textarea>
		</div>
		<button type="button" class="btn btn-primary btn-save">등록</button>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/timetable.js"/></script>
</body>
</html>
