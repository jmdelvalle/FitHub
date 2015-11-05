$(document).ready(function() {

  $('#calendar').fullCalendar({
    theme: true,
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    },
    defaultDate: '2015-02-12',
    editable: true,
    eventLimit: true, // allow "more" link when too many events
    events: [{
      title: 'All Day Event',
      start: '2015-02-01'
    }, {
      title: 'Long Event',
      start: '2015-02-07',
      end: '2015-02-10'
    }, {
      id: 999,
      title: 'Repeating Event',
      start: '2015-02-09T16:00:00'
    }, {
      id: 999,
      title: 'Repeating Event',
      start: '2015-02-16T16:00:00'
    }, {
      title: 'Conference',
      start: '2015-02-11',
      end: '2015-02-13'
    }, {
      title: 'Meeting',
      start: '2015-02-12T10:30:00',
      end: '2015-02-12T12:30:00'
    }]
  });

});
