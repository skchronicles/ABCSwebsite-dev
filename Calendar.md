
<!-- Full Calendar-->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.css' />
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/gcal.js'></script>
    
<script>
	
    $(document).ready(function() {

    $('#calendar').fullCalendar({

      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,basicWeek,listYear'
      },

      displayEventTime: false, // don't show the time column in list view

      // To make your own Google API key, follow the directions here:
      // http://fullcalendar.io/docs/google_calendar/
      googleCalendarApiKey: 'AIzaSyAiypBLKmSppsn3Jp1hr9p79HQkL9_d5kw',

      // Tech Dev and Journal Club Events
      events: 'abcsfrederick.info_m2749tqmr78m0q16t3tl6e9euc@group.calendar.google.com',
      eventRender : function(event, element) {element[0].title =  event.description + '\n'},
      eventClick: function(event) {
        // opens events in a popup window
        window.open(event.url, 'gcalevent', 'width=500,height=400');
        return false;
      },

      loading: function(bool) {
        $('#loading').toggle(bool);
      }});
    });

</script>

<div id='calendar'></div>

