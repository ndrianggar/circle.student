<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 
$frt = mysql_fetch_array(mysql_query("SELECT * FROM rb_header_print ORDER BY id_header_print DESC LIMIT 1")); 
?>
<head>
<title>Hal 4 - Raport Siswa</title>
<link rel="stylesheet" href="../bootstrap/css/printer.css">
<style type="text/css">
  .img-banner{
    width: 120px;
    position: absolute;
    top: -4px;
    left: 0px;
    z-index: -1;
  }
</style>
</head>
<body>
<img src="../dist/img/watermark_smp.png" class="watermark">
<?php
$t = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where id_tahun_akademik='$_GET[tahun]'"));
$s = mysql_fetch_array(mysql_query("SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                        LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn='$_GET[id]'"));
if (substr($_GET[tahun],4,5)=='1'){ $semester = 'Ganjil'; }else{ $semester = 'Genap'; }
$iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah ORDER BY id_identitas_sekolah DESC LIMIT 1"));
$arrBulan = array('', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
$getBulan = substr($_GET[bulan], -7,2);
$getTahun = substr($_GET[bulan], 3);
if ($getBulan[0]=='0') {
  $m = str_replace('0', '', $getBulan);
}else{
  $m = date('m');
}
$nmBulan = $arrBulan[$m];
echo 
"
<img src='../dist/img/logo_ihbs.png' class='img-banner'>
<h1 class='lembaga' style='text-align:center; font-size:33px; margin:0px; margin-bottom:10px;'>موسسه نورالعلم للدعوةالاسلاميه <br><span style='font-size:25px;'>ممعهدابن حجر الاسلامي للمرحله الثانويه </span></h1>
<p style='text-align:center; font-size:12px;  margin:1px;'>  Jl. Raya Munjul, Mushola Fathul Ulum RT 03/02 No. 11 Munjul – Cipayung Jakarta Timur 13850</p>
<p style='text-align:center; font-size:12px; margin-top:1px; margin-bottom:10px;'>Tlp :  (021) 84312279 / 089 9910 9596 | Website : www.ihbs.sch.id | Email : info@ihbs.or.id
<hr style='margin:1px;'><hr style='margin:0px;'><h2 style='text-align:center; margin-bottom:0px;'>كشف الدرجات   </br>STUDENT'S ACHIEVEMENT REPORT</h2>
<h3 style='text-align:center; margin:0px;'>ACADEMIC YEAR $t[keterangan] </h3>
<h3 style='text-align:center; margin-top:0px;'>$nmBulan $getTahun</h3>
<table width=100%>
  <tr>
    <td>Name / الاسم </td> <td>:</td>       
    <td>  <b>$s[nama]</b> </td>  
    <td>Semester / الفصل </td> <td>:</td> <td> $semester</td>
  </tr>
  <tr>
    <td width=140px>Class / الصف</td> <td> :</td><td> $s[kode_kelas]</td> 
    <td>Academic Year / العام الدراسي</td> <td>:</td> <td> $t[keterangan]</td> 
  </tr>
</table><br>";

echo 
"<table id='tablemodul1' width=100% border=1>
  <tr>
    <th>NO</th>
    <th>SCHOOL SUBJECT</th>
    <th>MARK</th>
  </tr>";
?>

<?php 
$mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran 
                                  where a.kode_kelas='$_GET[kelas]' AND id_kls_pararel = '$_GET[kelasp]' AND a.id_tahun_akademik='$_GET[tahun]'");$no = 1; $n = 0;
while ($m = mysql_fetch_array($mapel)){ 
$nilai = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_uts where kodejdwl='$m[kodejdwl]' and nisn = '$_GET[id]' AND raport_bulan = '$_GET[bulan]'"));
  echo "
  <tr>
    <td align='center'>$no</td>
    <td align='center'>$m[namamatapelajaran]</td>
    <td align='center'>$nilai[angka_pengetahuan]</td>
  </tr>";
  $no++;
  
  $colorArray = array('#FF6633', '#FFB399', '#FF33FF', '#FFFF99', '#00B3E6', 
      '#E6B333', '#3366E6', '#999966', '#99FF99', '#B34D4D',
      '#80B300', '#809900', '#E6B3B3', '#6680B3', '#66991A', 
      '#FF99E6', '#CCFF1A', '#FF1A66', '#E6331A', '#33FFCC',
      '#66994D', '#B366CC', '#4D8000', '#B33300', '#CC80CC', 
      '#66664D', '#991AFF', '#E666FF', '#4DB3FF', '#1AB399',
      '#E666B3', '#33991A', '#CC9999', '#B3B31A', '#00E680', 
      '#4D8066', '#809980', '#E6FF80', '#1AFF33', '#999933',
      '#FF3380', '#CCCC00', '#66E64D', '#4D80CC', '#9900B3', 
      '#E64D66', '#4DB380', '#FF4D4D', '#99E6E6', '#6666FF');
  if (empty($m[namamatapelajaran])||empty($nilai[angka_pengetahuan])) {
    $kategoriChart[] = "'$m[namamatapelajaran]'";
    $nilaiChart[] = "{y:0, color:'$colorArray[$n]'}";
  }else{
    $kategoriChart[] = "'$m[namamatapelajaran]'";
    $nilaiChart[] = "{y:$nilai[angka_pengetahuan], color:'$colorArray[$n]'}";
  }
  $n++;

  $absen = mysql_fetch_array(mysql_query("SELECT COUNT(IF(kode_kehadiran='H',1, NULL)) 'hadir', COUNT(IF(kode_kehadiran='S',1, NULL)) 'sakit', COUNT(IF(kode_kehadiran='I',1, NULL)) 'izin', COUNT(IF(kode_kehadiran='A',1, NULL)) 'alpa' FROM rb_absensi_siswa where nisn = '$_GET[id]' and  kodejdwl='$m[kodejdwl]'"));
  $sakit+= $absen[sakit];
  $izin+= $absen[izin];
  $alpa+= $absen[alpa];
}   
?> 
<table id='tablemodul1' width='100%' border='1'>
  <thead>
    <!-- <tr>
      <th colspan="3">ATTENDANCE REPORT</th>
    </tr> -->
    <tr>
      <th style="width: 33.3%;">SICK</th>
      <th style="width: 33.3%;">PERMIT</th>
      <th style="width: 33.3%;">ABSENT</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="center"><?php echo $sakit ?></td>
      <td align="center"><?php echo $izin ?></td>
      <td align="center"><?php echo $alpa ?></td>
    </tr>
  </tbody>

</table>
<table>
  <script src="https://code.highcharts.com/highcharts.js"></script>
<!-- <script src="https://code.highcharts.com/modules/exporting.js"></script> -->
<!-- <script src="https://code.highcharts.com/modules/export-data.js"></script> -->

<div id="container" style="min-width: 310px; max-width: 800px; height: 350px; margin: 0 auto; padding-bottom: 0;"></div>

</table>



<table border=0 width=100% style="position: absolute; bottom: 0px;">
  <tr>
    <td width="260" align="left">Parents of students / الوك</td>
    <td width="520"align="center">Principal / مديرالمدرسة</td>
    <td width="260" align="left">Jakarta, <?php echo tgl_raport(date("Y-m-d")); ?> <br> Homeroom Teacher /المشرف</td>
  </tr>
  <tr>
    <td align="left"><br /><br /><br /><br /><br />
      ................................... <br /><br /></td>

    <td align="center" valign="top"><br /><br /><br /><br /><br />
      <b>Zaky. Lc<br>
                NIP : 1966 1231 199702 1 022</b>
    </td>

    <td align="left" valign="top"><br /><br /><br /><br /><br />
      <b><?php echo $s[walikelas]; ?><br />
      NIP : <?php echo $s[nip]; ?></b>
    </td>
  </tr>
</table>
<?php 
$nilai  = join($nilaiChart,',');
$kategori = join($kategoriChart,',');
?>
<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 1200);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
    window.onafterprint = function () {  window.close(); }


Highcharts.chart('container', {
  chart: {  defaultSeriesType: 'bar',
            backgroundColor:'rgba(255, 255, 255, 0.0)',
            spacingBottom: 80,
            spacingTop: 10,
            spacingLeft: 10,
            spacingRight: 10,
          },
  title: {
    text: ''
  },
  subtitle: {
    text: ''
  },
  xAxis: {
    categories: [<?php echo $kategori; ?>],
    title: {
      text: null
    }
  },
  yAxis: {
    min: 0,
    max: 100,
    title: {
      text: '',
      align: 'high'
    },
    labels: {
      overflow: 'justify'
    }
  },
  tooltip: {
    valueSuffix: ' millions'
  },
  plotOptions: {
    bar: {
      dataLabels: {
        enabled: true
      }
    }
  },
  legend: {
    // layout: 'vertical',
    // align: 'right',
    // verticalAlign: 'top',
    // x: -40,
    // y: 80,
    // floating: true,
    // borderWidth: 1,
    // backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
    // shadow: true
  },
  credits: {
    enabled: false
  },
  series: [{
    showInLegend: false, 
    name: 'mark',
    data: [<?php echo $nilai; ?>]
  }]
});
</script>
</body>