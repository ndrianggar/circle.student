<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sistem Informasi Akademik Sekolah</title>
<meta name="author" content="phpmu.com">
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/bootstrap-clockpicker.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
<!-- Morris chart -->
<link rel="stylesheet" href="plugins/morris/morris.css">
<!-- jvectormap -->
<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- ckeditorq/ckeditor wysihtml5 - text editor -->
  <script src="ckeditor/ckeditor.js"></script>
<style type="text/css"> .files{ position:absolute; z-index:2; top:0; left:0; filter: alpha(opacity=0);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; opacity:0; background-color:transparent; color:transparent; } </style>
<style type="text/css">.checkbox-scroll { border:1px solid #ccc; width:100%; height: 400px; padding-left:8px; overflow-y: scroll; }</style>

<script type="text/javascript" src="plugins/jQuery/jquery-1.12.3.min.js"></script>
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

<script>
var totalwaktu = 20; //batas waktu pengerjaan semua soal
var indexsoal = 0;
var topik;
var timer;
var habis = 0;
var nilaiakhir = 0;
var inputpilihan;
var inputjawaban;
$(document).ready(function(){
    $("#benar").val(nilaiakhir);
    checkCookie();
    topik = $("#divtopik").html();
    url = "ambilsoal.php?topik="+topik
    $.ajax({
        url: url,
        dataType: 'json',
        cache: false,
        success: function(msg){
            topik = msg;
            setinputpilihan();
            setinputjawaban()
            tampilkan();
            mainkanwaktu();
        }
    });
    $("#next").click(function(){
        indexsoal++;
        $("#divpertanyaan").hide();
        $("#divoption").hide();
        tampilkan();
    });
});

function setinputpilihan(){
    inputpilihan = "";
    for(i=0;i<topik.soal.length;i++){
        inputpilihan = inputpilihan+"<input type=hidden name=pilihan[] id=pilihan"+i+">";
    }
    $("#divpilihan").html(inputpilihan);
}

function setinputjawaban(){
    inputjawaban = "";
    for(i=0;i<topik.soal.length;i++){
        inputjawaban = inputjawaban+"<input type=hidden name=jawaban[] value='"+topik.soal[i].jawaban+"'>";
    }
    $("#divjawaban").html(inputjawaban);
}
function mainkanwaktu(){
    if(totalwaktu>0){
        $("#divtotalwaktu").html(totalwaktu);
        totalwaktu--;
        timer = setTimeout("mainkanwaktu()",1000);
    }else{
        clearTimeout(timer);
        habis = 1;
        document.getElementById("formulir").submit();
    }
}
function setnilai(nilai){
    idinput = "#pilihan"+indexsoal;
    $(idinput).val(nilai);
}
function tampilkan(){
    if(indexsoal<topik.soal.length){
        nomorsoal = indexsoal + 1;
        $("#divnomor").html("Soal "+nomorsoal+" dari "+ topik.soal.length);
        $("#divpertanyaan").html(topik.soal[indexsoal].pertanyaan);
        $("#divpertanyaan").fadeIn(2000);
        $("#jawaban_a").html("<input type='radio' onclick='setnilai(this.value)' name='R"+indexsoal+"'value='a'>A. "+topik.soal[indexsoal].a);
        $("#jawaban_b").html("<input type='radio' onclick='setnilai(this.value)' name='R"+indexsoal+"'value='b'>B. "+topik.soal[indexsoal].b);
        $("#jawaban_c").html("<input type='radio' onclick='setnilai(this.value)' name='R"+indexsoal+"'value='c'>C. "+topik.soal[indexsoal].c);
        $("#jawaban_d").html("<input type='radio' onclick='setnilai(this.value)' name='R"+indexsoal+"'value='d'>D. "+topik.soal[indexsoal].d);
        $("#jawaban_e").html("<input type='radio' onclick='setnilai(this.value)' name='R"+indexsoal+"'value='e'>E. "+topik.soal[indexsoal].e);
        $("#divoption").slideDown(750);
    }else{
        habis = 1;
        document.getElementById("formulir").submit();
    }
}

function getCookie(c_name){
    if (document.cookie.length>0){
        c_start=document.cookie.indexOf(c_name + "=");
        if (c_start!=-1){
            c_start=c_start + c_name.length+1;
            c_end=document.cookie.indexOf(";",c_start);
            if (c_end==-1) c_end=document.cookie.length;
            return unescape(document.cookie.substring(c_start,c_end));
        }
    }
    return "";
}

function setCookie(c_name,value,expiredays){
    var exdate=new Date();
    exdate.setDate(exdate.getDate()+expiredays);
    document.cookie=c_name+ "=" +escape(value)+((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
}

function checkCookie(){
    totalwaktucookies=getCookie('waktucookies');
    if (totalwaktucookies!=null && totalwaktucookies!=""){
        totalwaktu = totalwaktucookies;
    }else{
        setCookie('waktucookies',totalwaktu,7);
    }
}
function keluar(){
    if(habis==0){
        setCookie('waktucookies',totalwaktu,7);
    }else{
        setCookie('waktucookies',0,-1);
    }
}
</script>
</head>

<body onunload=keluar() class="hold-transition skin-blue sidebar-mini">

<?php 
$row = mysql_fetch_array(mysql_query("SELECT b.judul_cbt FROM rb_quiz_jadwal a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt where a.id_jadwal='$_GET[id_jadwal]'"));
echo "<div class='col-xs-12'>  
  <div class='box'>
    <div class='box-header'>
      <h3 class='box-title'>Computer Based Test - $row[judul_cbt]</h3>
    </div>
    <div class='box-body'>
      <h2 class=waktu>Total Waktu Mengerjakan soal: <span id='divtotalwaktu'></span></h2>

    <div id='divnomor'></div>
    <b><div id='divpertanyaan'></div></b>
    <div id='divoption'>
    <span id='jawaban_a'></span><br>
    <span id='jawaban_b'></span><br>
    <span id='jawaban_c'></span><br>
    <span id='jawaban_d'></span>
    <span id='jawaban_e'></span>
    </div>

    <p>
    <img id='next' style='cursor:pointer' src='next.jpg'>
    <form action='nilaiakhir.php' method='post' id='formulir'>
        <input type='hidden' name='nama' id='nama' value='$_SESSION[id]'>
        <div id='divpilihan'></div>
        <div id='divjawaban'></div>
    </form>
    </div>
    </div>
</div>";     
?>
</body>
</html>