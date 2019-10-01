      <section class="content-header">
          <h1>
          Kalender Pendidikan
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Kaldik</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-3">
              <div class="box box-solid">
                <div class="box-header with-border">
                  <h4 class="box-title">Draggable Events</h4>
                </div>
                <div class="box-body">
                  <!-- the events -->
                  <?php 
                 /* $id_event = $_POST['id'];*/
                 echo "<div id='external-events'>";

                  $data= mysql_query("SELECT * FROM rb_event where id_event");

                  while ($r=mysql_fetch_array($data)) {
               
               
                 echo "
                    <div class='external-event bg-green'>$r[nm_event]</div>";}?>


                      <div class='checkbox'>
                      <label for='drop-remove'>
                        <input type='checkbox' id='drop-remove'>
                        remove after drop
                      </label>
                    </div>
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /. box -->
       


              
             <div class="box box-solid">
                <div class="box-header with-border">
                  <h3 class="box-title">Create Event</h3>
                </div>
                <div class="box-body">
                  <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                    <!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
                    <form id="event" action="" method="post">
                   <input type='hidden' name='unit'>
                    <label>Color picker with addon:</label>
                    <div class="input-group my-colorpicker2">

                      <input type="text" name='color' class="form-control">
                      <div class="input-group-addon">
                        <i></i>
                      </div>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->
                  <div class="input-group">
                  	
                    <input id="new-event" type="text" name='nm_event' class="form-control" placeholder="Event Title">
                    <div class="input-group-btn">
                      <input type="submit" id="add-new-event" name='input' class="btn btn-primary btn-flat">Add</button>
                    </div><!-- /btn-group -->
                  </div><!-- /input-group -->
                </div>
              </div>
            </div><!-- /.col -->
            <div class="col-md-9">
              <div class="box box-primary">
                <div class="box-body no-padding">
                  <!-- THE CALENDAR -->
                  <!-- <div id="wrap">
                  	<div id='external-event'> -->
                  <!-- 		<h4> Draggable Events</h4>
                  		<div class ='fc-event'> New Evvent</div>
                  		<p> </p></div> -->
                  		 <div class="response"></div>
                  		<div id='calendar'></div>
                  	<!-- 	<div style='clear:both'> -->

                  </div>
                </div><!-- /.box-body -->
              </div><!-- /. box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

   
   
<script>   
  $(document).ready(function () {  
    var calendar = $('#calendar').fullCalendar({
        editable: true,
        events: "../fetch-event.php",
        displayEventTime: false,
        eventRender: function (event, element, view) {
            if (event.allDay === 'true') {
                event.allDay = true;
            } else {
                event.allDay = false;
            }
        },
        selectable: true,
        selectHelper: true,
        select: function (startdate, enddate, allDay) {
            var title = prompt('Event Title:');

            if (title) {
                var start = $.fullCalendar.formatDate(start, "Y-MM-DD HH:mm:ss");
                var end = $.fullCalendar.formatDate(end, "Y-MM-DD HH:mm:ss");

                $.ajax({
                    url: '../add-event.php',
                    data: 'title=' + title + '&startdate=' + startdate + '&enddate=' + enddate,
                    type: "POST",
                    success:function() {
                      calendar.fullCalendar('refetchEvents');
                      alert('Add Successfully');
                    }
                });
                calendar.fullCalendar('renderEvent',
                        {
                            title: title,
                            startdate: startdate,
                            enddate: enddate,
                            allDay: allDay
                        },
                true
                        );
            }
            calendar.fullCalendar('unselect');
        },
        

                  eventDrop: function (event, delta) {
                    var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD HH:mm:ss");
                    var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD HH:mm:ss");
                    $.ajax({
                        url: 'edit-event.php',
                        data: 'title=' + event.title + '&start=' + start + '&end=' + end + '&id=' + event.id,
                        type: "POST",
                        success: function (response) {
                            displayMessage("Updated Successfully");
                        }
                    });
                },
        eventClick: function (event) {
            var deleteMsg = confirm("Do you really want to delete?");
            if (deleteMsg) {
                $.ajax({
                    type: "POST",
                    url: "delete-event.php",
                    data: "&id=" + event.id,
                    success: function (response) {
                        if(parseInt(response) > 0) {
                            $('#calendar').fullCalendar('removeEvents', event.id);
                            displayMessage("Deleted Successfully");
                        }
                    }
                });
            }
        },

        
        });
        function displayMessage(message) {
      $(".response").html("<div class='success'>"+message+"</div>");
    setInterval(function() { $(".success").fadeOut(); }, 1000);
}
      });
    </script>