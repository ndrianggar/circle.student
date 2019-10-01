<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CIRCLE STUDENT</title>
    <meta name="author" content="">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="vendor/tempfront/img/favicon.png" rel="icon" type="image/png">
    <!-- Bootstrap 3.3.5 -->
<!--     <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
 -->    <!-- Font Awesome -->
   
    <!--- template baru --->
      <link href="vendor/tempfront/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="vendor/tempfront/simple-line-icons/css/simple-line-icons.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
      <!-- Plugin CSS -->
     <link rel="stylesheet" href="vendor/tempfront/device-mockups/device-mockups.min.css">
     <!-- Custom styles for this template -->
     <link href="vendor/tempfront/css/new-age.css" rel="stylesheet">
     <link href="vendor/tempfront/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <!-- tempfront -->

      <!-- educatefront-->
    <!--Google Font
      ============================================= -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,500,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500i" rel="stylesheet">

  <!--
      CSS
      ============================================= -->
<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/css/linearicons.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/css/font-awesome.min.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/css/bootstrap.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/css/magnific-popup.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/ss/nice-select.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/css/animate.min.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/css/owl.carousel.css">
  <link rel="stylesheet" href="vendor/tempfront/educate/css/main.css">
 -->
    <!-- educatefront-->

    <!-- ckeditorq/ckeditor wysihtml5 - text editor -->
    <script src="ckeditor/ckeditor.js"></script>
    <style type="text/css"> .files{ position:absolute; z-index:2; top:0; left:0; filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; opacity:0; background-color:transparent; color:transparent; } </style>
    <style type="text/css">.checkbox-scroll { border:1px solid #ccc; width:100%; height: 400px; padding-left:8px; overflow-y: scroll; }</style>
    <style type="text/css">@media (min-width: 1200px){ .container { width: 1350px !important; } } </style>
<!--     <script type="text/javascript" src="plugins/jQuery/jquery-1.12.3.min.js"></script> -->
    <script language="javascript" type="text/javascript"> 
      var maxAmount = 160;
      function textCounter(textField, showCountField) {
        if (textField.value.length > maxAmount) {
          textField.value = textField.value.substring(0, maxAmount);
        } else { 
          showCountField.value = maxAmount - textField.value.length;
        }
      }
    </script>
  </head>
<script type="text/javascript">
function disableSelection(e){if(typeof e.onselectstart!="undefined")e.onselectstart=function(){return false};else if(typeof e.style.MozUserSelect!="undefined")e.style.MozUserSelect="none";else e.onmousedown=function(){return false};e.style.cursor="default"}window.onload=function(){disableSelection(document.body)}
</script>
 
<script type="text/javascript">
function mousedwn(e){try{if(event.button==2||event.button==3)return false}catch(e){if(e.which==3)return false}}document.oncontextmenu=function(){return false};document.ondragstart=function(){return false};document.onmousedown=mousedwn
</script>
  <body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="vendor/tempfront/img/logo.png" width="160" height="50"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
         Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">

               <?php 
         /*   include "main-header-siswa.php";*/
          ?>
            <a class="nav-link js-scroll-trigger" href="#page-top">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#features">Features</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#download">About Circle</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li>
           <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="siswa"> &nbsp; Login</li></a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
   <header class="masthead">
    <div class="container h-100">
      <div class="row h-100">
        <div class="col-lg-7 my-auto">
          <div class="header-content mx-auto">
            <h1 class="mb-5" style="color:white;">Circle student is an application that helps teacher and student in teaching and learning</h1>
            <a href="#download" class="btn btn-outline btn-xl js-scroll-trigger">Start Now for Free!</a>
          </div>
        </div>
        <div class="col-lg-5 my-auto">
          <div class="device-container">
            <div class="device-mockup iphone6_plus portrait white">
              <div class="device">
                <div class="screen">
                  <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                  <img src="vendor/tempfront/img/screen cs.png" class="img-fluid" alt="">
                </div>
                <div class="button">
                  <!-- You can hook the "home button" to some JavaScript events or just remove it -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </header>
    <section class="download bg-primary text-center" id="download" <?php echo $container; ?>>

         <?php 
          include "application/home_public.php";
          if ($_GET['view']=='home' OR $_GET['view']==''){
             
          }elseif ($_GET['view']=='detailhalaman'){
              $id = anti_injection(abs((int)$_GET[id]));
              $row = mysql_fetch_array(mysql_query("SELECT * FROM halamanstatis where id_halaman='$id'"));


            echo "<div class='container'>
                  <div class='row'>
                    <div class='col-md-8 mx-auto'>
                      <h3 class='box-body'><b>$row[judul]</b></h3>
                    </div>
                    <div class='box-body'>
                        <p>$row[isi_halaman]</p>
                    </div>
                  </div></div";
          }
        ?>

        </section>
      </div><!-- /.content-wrapper -->
       <section class="features" id="features">
    <div class="container">
      <div class="section-heading text-center">
        <h2>Unlimited Time and the Place</h2>
       <!--  <p class="text-muted">Check out what you can do with this app theme!</p> -->
        <hr>
      </div>
      <div class="row">
        <div class="col-lg-4 my-auto">
          <div class="device-container">
            <div class="device-mockup iphone6_plus portrait white">
              <div class="device">
                <div class="screen">
                  <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                  <img src="vendor/tempfront/img/screen cs.png" class="img-fluid" alt="">
                </div>
                <div class="button">
                  <!-- You can hook the "home button" to some JavaScript events or just remove it -->
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-8 my-auto">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-6">
                <div class="feature-item">
                  <i class="icon-screen-tablet text-primary"></i>
                  <h3>Compatible With All Device</h3>
                  <p class="text-muted">Ready to acces via PC / Handphone</p>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="feature-item">
                  <i class="icon-control-play text-primary"></i>
                  <h3>Content Video</h3>
                  <p class="text-muted">Put an image, video, animation, or anything else in the screen!</p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="feature-item">
                  <i class="icon-book-open  text-primary"></i>
                  <h3>E-Raport</h3>
                  <p class="text-muted">All parents can see student achievement</p>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="feature-item">
                  <i class="icon-note text-primary"></i>
                  <h3>online exams</h3>
                  <p class="text-muted">the test can be done on a computer based test</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
 <section class="cta">
    <div class="cta-content">
      <div class="container">
        <h2>Stop Manual Learn <br>Start Learn Mixing Traditional and Online.</h2>
        <a href="#contact" class="btn btn-outline btn-xl js-scroll-trigger">Let's Get Started!</a>
      </div>
    </div>
    <div class="overlay"></div>
  </section>

  <section class="contact bg-primary" id="contact">
    <div class="container">
      <h2>we are on 
        <i class="fas fa-heart"></i>
        social media </h2>
      <ul class="list-inline list-social">
        <li class="list-inline-item social-twitter">
          <a href="#">
            <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li class="list-inline-item social-facebook">
          <a href="#">
            <i class="fab fa-facebook-f"></i>
          </a>
        </li>
        <li class="list-inline-item social-google-plus">
          <a href="#">
            <i class="fab fa-google-plus-g"></i>
          </a>
        </li>
      </ul>
    </div>
  </section>


 <footer>
    <div class="container">
      <p>    <?php include "footer.php"; ?></p>
      <ul class="list-inline">
        <li class="list-inline-item">
          <a href="#">Privacy</a>
        </li>
        <li class="list-inline-item">
          <a href="#">Terms</a>
        </li>
        <li class="list-inline-item">
          <a href="#">FAQ</a>
        </li>
      </ul>
    </div>
  </footer>
<!-- 
      <footer class="main-footer">
      
      </footer> -->
    </div><!-- ./wrapper -->
    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
<!--     <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <script src="dist/js/bootstrap-clockpicker.min.js"></script>

    <!-- tempfront -->
     <!-- Bootstrap core JavaScript -->
  <script src="vendor/tempfront/jquery/jquery.min.js"></script>
  <script src="vendor/tempfront/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/tempfront/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="vendor/tempfront/js/new-age.min.js"></script>
 <!-- tempfront -->


 <!--educate-->
 <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
   crossorigin="anonymous"></script>
  <script src="vendor/tempfront/educate/js/vendor/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  <script src="vendor/tempfront/educate/js/easing.min.js"></script>
  <script src="vendor/tempfront/educate/js/hoverIntent.js"></script>
  <script src="vendor/tempfront/educate/js/superfish.min.js"></script>
  <script src="vendor/tempfront/educate/js/jquery.ajaxchimp.min.js"></script>
  <script src="vendor/tempfront/educate/js/jquery.magnific-popup.min.js"></script>
  <script src="vendor/tempfront/educate/js/owl.carousel.min.js"></script>
  <script src="vendor/tempfront/educate/js/owl-carousel-thumb.min.js"></script>
  <script src="vendor/tempfront/educate/js/jquery.sticky.js"></script>
  <script src="vendor/tempfront/educate/js/jquery.nice-select.min.js"></script>
  <script src="vendor/tempfront/educate/js/parallax.min.js"></script>
  <script src="vendor/tempfront/educate/js/waypoints.min.js"></script>
  <script src="vendor/tempfront/educate/js/wow.min.js"></script>
  <script src="vendor/tempfront/educate/js/jquery.counterup.min.js"></script>
  <script src="vendor/tempfront/educate/js/mail-script.js"></script>
  <script src="vendor/tempfront/educate/js/main.js"></script> -->
  <!-- educate-->

 <!--    <script>
    $('.clockpickera').clockpicker();
    $('.clockpickerb').clockpicker();
    $('.datepickera').datepicker({format: "dd-mm-yyyy"});
    $('.datepickerb').datepicker({format: "dd-mm-yyyy"});
    $("#datepicker1").datepicker({
        format: "mm-yyyy",
        startView: "months", 
        minViewMode: "months"
    });

      $(function () { 
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });

        $('#example3').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": false,
          "info": false,
          "autoWidth": false,
          "pageLength": 200
        });

        $('#mastersiswa').DataTable({
          "paging": false,
          "lengthChange": false,
          "searching": true,
          "ordering": false,
          "info": false,
          "autoWidth": false,
          "pageLength": 200
        });

        $('#example5').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "info": false,
          "autoWidth": false,
          "pageLength": 200,
          "order": [[ 5, "desc" ]]
        });
      });
    </script> -->
  </body>
</html>