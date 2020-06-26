/**
 * 작성자명  : 정진홍
 * 수정파일  : 2020년 06월 05일 (금요일) 09:43
 * 관련 내용 : Ticketing에 대한 js & jquery의 내용
 * 작성자내용 : 여긴어디? 난 누구?
 */

/* 넌 어디에 앉는 거니? */

$('#select0').change(function() {
	var selected = $(this).children("option:selected").val();

	console.log(selected);
});

$(document).ready(function() {
	$('#option0').attr("disabled", true);
});

$(function() {

	var newseat = [];
	
	var date = new Date();
	var isWeekend
		= (date.getDay() == 0 || date.getDay() == 6) ? true : false;
	var price = 0;

	$('.seat').each(function() {
		$(this).on('click', function() {
			var seatName = $(this).text();

			var result = window.confirm('선택하신 좌석이 ' + seatName + ' 맞으시나요?');
			if (result == true) {
				newseat.push(seatName);

				document.getElementById('SeatCheck1').innerText = newseat;
				// newseat.forEach(element => document.getElementById('SeatCheck1').innerText += element);

				console.log(newseat.length);


				$('#A').each(function(){
					$('#A div').on('click',function(){
						if(isWeekend == true) {
							price += 60000;
							document.getElementById('SeatCheck3').innerText = "60000" * (newseat.length);
						} else {
							price += 47000;
							document.getElementById('SeatCheck3').innerText = "47000" * (newseat.length);
						}
					});
				});

				$('#B').each(function(){
					$('#B div').on('click',function(){
						if(isWeekend == true) {
							price += 18000;
							document.getElementById('SeatCheck3').innerText = "18000" * (newseat.length);
						} else {
							price += 13500;
							document.getElementById('SeatCheck3').innerText = "13500" * (newseat.length);
						}	    
					});
				});

				$('#C').each(function(){
					$('#C div').on('click',function(){
						if(isWeekend == true) {
							price += 162000;
							document.getElementById('SeatCheck3').innerText = "162000" * (newseat.length);
						} else {
							price += 126000;
							document.getElementById('SeatCheck3').innerText = "126000" * (newseat.length);
						}	    
					});
				});
				
				$('#D').each(function(){
					$('#D div').on('click',function(){
						if(isWeekend == true) {
							price += 20000;
							document.getElementById('SeatCheck3').innerText = "20000" * (newseat.length);
						} else {
							price += 14000;
							document.getElementById('SeatCheck3').innerText = "14000" * (newseat.length);
						}	    
					});
				});
				
				$('#E').each(function(){
					$('#E div').on('click',function(){
						if(isWeekend == true) {
							price += 55000;
							document.getElementById('SeatCheck3').innerText = "55000" * (newseat.length);
						} else {
							price += 42000;
							document.getElementById('SeatCheck3').innerText = "42000" * (newseat.length);
						}	    
					});
				});
				
				$('#F').each(function(){
					$('#F div').on('click',function(){
						if(isWeekend == true) {
							price += 14000;
							document.getElementById('SeatCheck3').innerText = "14000" * (newseat.length);
						} else {
							price += 10500;
							document.getElementById('SeatCheck3').innerText = "10500" * (newseat.length);
						}	    
					});
				});
				
				$('#G').each(function(){
					$('#G div').on('click',function(){
						if(isWeekend == true) {
							price += 22000;
							document.getElementById('SeatCheck3').innerText = "22000" * (newseat.length);
						} else {
							price += 19000;
							document.getElementById('SeatCheck3').innerText = "19000" * (newseat.length);
						}	    
					});
				});
				
				$('#H').each(function(){
					$('#H div').on('click',function(){
						if(isWeekend == true) {
							price += 360000;
							document.getElementById('SeatCheck3').innerText = "360000" * (newseat.length);
						} else {
							price += 252000;
							document.getElementById('SeatCheck3').innerText = "252000" * (newseat.length);
						}	    
					});
				});
				
				$('#I').each(function(){
					$('#I div').on('click',function(){
						if(isWeekend == true) {
							price += 42000;
							document.getElementById('SeatCheck3').innerText = "42000" * (newseat.length);
						} else {
							price += 34500;
							document.getElementById('SeatCheck3').innerText = "34500" * (newseat.length);
						}	    
					});
				});
				
				$('#J').each(function(){
					$('#J div').on('click',function(){
						if(isWeekend == true) {
							price += 33000;
							document.getElementById('SeatCheck3').innerText = "33000" * (newseat.length);
						} else {
							price += 28000;
							document.getElementById('SeatCheck3').innerText = "28000" * (newseat.length);
						}	    
					});
				});
				
				$('#K').each(function(){
					$('#K div').on('click',function(){
						if(isWeekend == true) {
							price += 165000;
							document.getElementById('SeatCheck3').innerText = "165000" * (newseat.length);
						} else {
							price += 130000;
							document.getElementById('SeatCheck3').innerText = "130000" * (newseat.length);
						}	    
					});
				});
				
				$('#L').each(function(){
					$('#L div').on('click',function(){
						if(isWeekend == true) {
							price += 110000;
							document.getElementById('SeatCheck3').innerText = "110000" * (newseat.length);
						} else {
							price += 80000;
							document.getElementById('SeatCheck3').innerText = "80000" * (newseat.length);
						}	    
					});
				});
				
				$('#M').each(function(){
					$('#M div').on('click',function(){
						if(isWeekend == true) {
							price += 41000;
							document.getElementById('SeatCheck3').innerText = "41000" * (newseat.length);
						} else {
							price += 32000;
							document.getElementById('SeatCheck3').innerText = "32000" * (newseat.length);
						}	    
					});
				});
				
				$('#N').each(function(){
					$('#N div').on('click',function(){
						if(isWeekend == true) {
							price += 109000;
							document.getElementById('SeatCheck3').innerText = "109000" * (newseat.length);
						} else {
							price += 101000;
							document.getElementById('SeatCheck3').innerText = "101000" * (newseat.length);
						}	    
					});
				});
				
				$('#O').each(function(){
					$('#O div').on('click',function(){
						if(isWeekend == true) {
							price += 22000;
							document.getElementById('SeatCheck3').innerText = "22000" * (newseat.length);
						} else {
							price += 19000;
							document.getElementById('SeatCheck3').innerText = "19000" * (newseat.length);
						}	    
					});
				});
				
				$('#P').each(function(){
					$('#P div').on('click',function(){
						if(isWeekend == true) {
							price += 732000;
							document.getElementById('SeatCheck3').innerText = "732000" * (newseat.length);
						} else {
							price += 700000;
							document.getElementById('SeatCheck3').innerText = "700000" * (newseat.length);
						}	    
					});
				});
				
				$('#Q').each(function(){
					$('#Q div').on('click',function(){
						if(isWeekend == true) {
							price += 15000;
							document.getElementById('SeatCheck3').innerText = "15000" * (newseat.length);
						} else {
							price += 11500;
							document.getElementById('SeatCheck3').innerText = "11500" * (newseat.length);
						}	    
					});
				});
				
				$('#R').each(function(){
					$('#R div').on('click',function(){
						if(isWeekend == true) {
							price += 120000;
							document.getElementById('SeatCheck3').innerText = "130000" * (newseat.length);
						} else {
							price += 96000;
							document.getElementById('SeatCheck3').innerText = "96000" * (newseat.length);
						}	    
					});
				});
				
				if ($(this) == true) {
					console.log(this);

				} else {
					// console.log(this);
				};
			} else {
				console.log("취소 확인");
			}
			
		});

	});

	$('#deleteBtn').on('click', function() {
		newseat = [];
		price = 0;
		$('#SeatCheck1').text('--');
		$('#SeatCheck3').text('--');
		alert("취소되었습니다.");
	});

	
	
});