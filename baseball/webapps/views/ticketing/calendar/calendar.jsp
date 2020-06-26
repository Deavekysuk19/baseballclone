<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />

<script src="/baseball/resources/js/jquery-2.2.4.js"></script>


<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
   integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
   crossorigin="anonymous">
   <script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>
   
   <link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
   integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
   crossorigin="anonymous">
   

<link href='/baseball/resources/calendar/packages/core/main.css' rel='stylesheet' />
<link href='/baseball/resources/calendar/packages/daygrid/main.css' rel='stylesheet' />
<link href='/baseball/resources/calendar/packages/timegrid/main.css' rel='stylesheet' />
<link href='/baseball/resources/calendar/packages/list/main.css' rel='stylesheet' />
<script src='/baseball/resources/calendar/packages/core/main.js'></script>
<script src='/baseball/resources/calendar/packages/interaction/main.js'></script>
<script src='/baseball/resources/calendar/packages/daygrid/main.js'></script>
<script src='/baseball/resources/calendar/packages/timegrid/main.js'></script>
<script src="/baseball/resources/calendar/packages/list/main.js"></script>
<script src="/baseball/resources/js/bootstrap.min.js"></script>
<%@ include file="/views/common/header.jsp"%>

<br /><br />
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      events: [
        {
          title: 'SK vs 키움 18:30',
          start: '2020-06-16T18:30:00',
          constraint: 'businessHours',
          url : "http://192.168.20.132:8088/baseball/views/ticketing/skticketing.jsp?senddate=2020-06-16T18:30"
        },
        /* {
        	
    
          title: 'Meeting',ss
          start: '2020-05-13T11:00:00',
          constraint: 'availableForMeeting', // defined below
          color: '#257e4a'
        },
        {
          title: 'Conference',
          start: '2020-05-18',
          end: '2020-05-20'
        },
        {
          title: 'Party',
          start: '2020-05-29T20:00:00'
        },

        // areas where "Meeting" must be dropped
        {
          groupId: 'availableForMeeting',
          start: '2020-05-11T10:00:00',
          end: '2020-05-11T16:00:00',
          rendering: 'background'
        },
        {
          groupId: 'availableForMeeting',
          start: '2020-05-13T10:00:00',
          end: '2020-05-13T16:00:00',
          rendering: 'background'
        },
 */
        // red areas where no events can be dropped
        
      ]
    });

    calendar.render();
  });

</script>
<style>

/*   body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  } */

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }
  
  .dropdown-toggle::after { 
/* 화살표 제거 */
	display:none;
}

</style>

</head>
<body>

  <div id='calendar'></div>

</body>
<br />
<br />
<br />
<br />
<%@ include file="/views/common/footer.jsp"%>
</html>
