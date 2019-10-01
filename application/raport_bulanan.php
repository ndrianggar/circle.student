
<?php 
	include "../config/koneksi.php";
	include "../config/fungsi_indotgl.php"; 
	include "../config/library.php"; 
	$content .='
	<!DOCTYPE html>
	<html lang="en">
	<head>
	  <title>Monthly Report</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link href="https://fonts.googleapis.com/css?family=Amiri" rel="stylesheet">
	  <style type="text/css">
	  .watermark{
	    width: 100%;
	    height: auto;
	    position: absolute;
	    /*margin-top : 50px;*/
	    /*top: 50%;
	    left: 50%;
	    margin-left: -1240px;
	    margin-top: -1754px;*/
	    z-index: -999;
	    opacity: 0.2;
	    filter: alpha(opacity=30);
	  }

	  .img-banner{
	    width: 120px;
	    position: absolute;
	    top: -4px;
	    left: 0px;
	    z-index: -999;
	    margin-bottom:10px;
	  }

	  .banner{
	    position: absolute;
	    top: -4px;
	    left: 0px;
	    z-index: -999;
	  } 
	</style>
  </head>
	<body>
		<img src="../dist/img/logo_ihbs.png" class="img-banner">
		<h1 class="lembaga" style="text-align:center; font-size:33px; top:45px; left:190px; position:absolute; z-index:-999;">موسسه نورالعلم للدعوةالاسلاميه <br><span style="font-size:25px;">ممعهدابن حجر الاسلامي للمرحله الثانويه </span><p style="text-align:center; font-size:12px; padding-top:10px;">  Jl. Raya Munjul, Mushola Fathul Ulum RT 03/02 No. 11 Munjul – Cipayung Jakarta Timur 13850</p><p style="text-align:center; font-size:12px; padding-top:2px; margin-bottom:10px;">Tlp :  (021) 84312279 / 089 9910 9596 | Website : www.ihbs.sch.id | Email : info@ihbs.or.id</p>
		</h1>
		&nbsp;
		<hr style="margin:2px; padding-top:50px;"><hr style="margin:0px;">
		<h3 style="text-align:center;">كشف الدرجات  </h3>
		<h4 style="text-align:center; margin-bottom:10px; font-family: Times;">STUDENTS ACHIEVEMENT REPORT</h4>
	
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
		</table>
		<table id="tablemodul1" width=100% border=1>
			<thead>
			  <tr style="height:20px;">
			    <th align="center" style="height:30px;">NO</th>
			    <th align="center">SCHOOL SUBJECTS</th>
			    <th align="center">MARK</th>
			  </tr>
		  	</thead>
		  	<tbody>';

		  	$s = mysql_fetch_array(mysql_query('SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                        LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn="'.$_GET["id"].'"'));
		  	$mapel = mysql_query('SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran 
                                  where a.kode_kelas="VII" AND id_kls_pararel = "34" AND a.id_tahun_akademik="20181"');$no = 1; $n = 0;
			while ($m = mysql_fetch_array($mapel)){ 
				$nilai = mysql_fetch_array(mysql_query('SELECT * FROM rb_nilai_uts where kodejdwl="'.$m["kodejdwl"].'" and nisn = "'.$_GET["id"].'" AND raport_bulan = "'.$_GET["blnRaport"].'"'));
				$content.='
				  <tr>
				    <td align="center">'.$no.'</td>
				    <td>'.$m["namamatapelajaran_en"].'</td>
				    <td align="center">'.$nilai["angka_pengetahuan"].'</td>
				  </tr>';
				$no++;
				$colorArray = array("#FF6633", "#FFB399", "#FF33FF", "#FFFF99", "#00B3E6", 
				"#E6B333", "#3366E6", "#999966", "#99FF99", "#B34D4D",
				"#80B300", "#809900", "#E6B3B3", "#6680B3", "#66991A", 
				"#FF99E6", "#CCFF1A", "#FF1A66", "#E6331A", "#33FFCC",
				"#66994D", "#B366CC", "#4D8000", "#B33300", "#CC80CC", 
				"#66664D", "#991AFF", "#E666FF", "#4DB3FF", "#1AB399",
				"#E666B3", "#33991A", "#CC9999", "#B3B31A", "#00E680", 
				"#4D8066", "#809980", "#E6FF80", "#1AFF33", "#999933",
				"#FF3380", "#CCCC00", "#66E64D", "#4D80CC", "#9900B3", 
				"#E64D66", "#4DB380", "#FF4D4D", "#99E6E6", "#6666FF");
				if (empty($m["namamatapelajaran_en"])||empty($nilai["angka_pengetahuan"])) {
				$kategoriChart[] = '"$m[namamatapelajaran_en]"';
				$nilaiChart[] = '{y:0, color:"$colorArray[$n]"}';
				}else{
				$kategoriChart[] = '"$m[namamatapelajaran_en]"';
				$nilaiChart[] = '{y:$nilai[angka_pengetahuan], color:"$colorArray[$n]"}';
				}
				$n++;

				$absen = mysql_fetch_array(mysql_query('SELECT COUNT(IF(kode_kehadiran="H",1, NULL)) "hadir", COUNT(IF(kode_kehadiran="S",1, NULL)) "sakit", COUNT(IF(kode_kehadiran="I",1, NULL)) "izin", COUNT(IF(kode_kehadiran="A",1, NULL)) "alpa" FROM rb_absensi_siswa where nisn = "'.$_GET["id"].'" and  kodejdwl="$m[kodejdwl]"'));
				$sakit+= $absen["sakit"];
				$izin+= $absen["izin"];
				$alpa+= $absen["alpa"];
			} 
	$content.= '</tbody>
		</table><br>
		<table id="tablemodul1" width="100%" border="1">
			<thead>
				<tr>
				  <th style="width: 33.3%; height:30px; text-align:center;">SICK</th>
				  <th style="width: 33.3%; text-align:center;">PERMIT</th>
				  <th style="width: 33.3%; text-align:center;">ABSENT</th>
				</tr>
				</thead>
				<tbody>
				<tr>
				  <td align="center">'.$sakit.'</td>
				  <td align="center">'.$izin.'</td>
				  <td align="center">'.$alpa.'</td>
				</tr>
			</tbody>
		</table>
		<script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<div id="container" style="min-width: 310px; max-width: 800px; height: 305px; margin: 0 auto; padding-bottom: 0;"></div>

		
		<table border=0 width=100% style="position: absolute; bottom: 0px;">
		  <tr>
		    <td width="260" align="left">Parents of students / الوك</td>
		    <td width="260" align="left">Homeroom Teacher /المشرف</td>
		    <td width="260"align="left">Jakarta, '.tgl_raport(date("Y-m-d")).'<br> Principal / مديرالمدرسة</td>
		  </tr>
		  <tr>
		    <td align="left"><br /><br /><br /><br /><br /><br />
		      ................................... <br /><br /></td>
		    <td align="left" valign="top"><br /><br /><br /><br /><br />
		      <b>'.$s["walikelas"].'<br />
		      NIP :'.$s["nip"].'</b>
		    </td>
		    <td align="left" valign="top" width="200"><br /><br /><br /><br /><br />';
		    $kelas = $_GET["kelas"];
			if ($kelas == "VII" || $kelas == "VIII" || $kelas == "IX") {
			$kepsek = mysql_fetch_array(mysql_query('select * from rb_users where jabatan = "kepala sekolah" and unit = "SMP"'));
			}elseif ($kelas=="X"||$kelas=="XI"||$kelas=="XII") {
			$kepsek = mysql_fetch_array(mysql_query('select * from rb_users where jabatan = "kepala sekolah" and unit = "SMA"'));
			}
		    $content .=  '<b>'.$kepsek["nama_lengkap"].'<br>
		      NIP : '. $kepsek["username"].'</b>
		    </td>
		  </tr>
		</table>
	</body>';
	$nilai  = join($nilaiChart,",");
	$kategori = join($kategoriChart,",");
	$content .='<script type="text/javascript">
			Highcharts.chart("container", {
			  chart: {  defaultSeriesType: "bar",
			            backgroundColor:"rgba(255, 255, 255, 0.0)",
			            spacingBottom: 80,
			            spacingTop: 10,
			            spacingLeft: 10,
			            spacingRight: 10,
			          },
			  title: {
			    text: ""
			  },
			  subtitle: {
			    text: ""
			  },
			  xAxis: {
			    categories: ["a"],
			    title: {
			      text: null
			    }
			  },
			  yAxis: {
			    min: 0,
			    max: 100,
			    title: {
			      text: "",
			      align: "high"
			    },
			    labels: {
			      overflow: "justify"
			    }
			  },
			  tooltip: {
			    valueSuffix: " millions"
			  },
			  plotOptions: {
			    bar: {
			      dataLabels: {
			        enabled: true
			      }
			    }
			  },
			  legend: {
			    // layout: "vertical",
			    // align: "right",
			    // verticalAlign: "top",
			    // x: -40,
			    // y: 80,
			    // floating: true,
			    // borderWidth: 1,
			    // backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || "#FFFFFF"),
			    // shadow: true
			  },
			  credits: {
			    enabled: false
			  },
			  series: [{
			    showInLegend: false, 
			    name: "mark",
			    data: [1]
			  }]
			});
			</script>
</html>';

	require_once '../vendor/autoload.php';
	$mpdf = new \Mpdf\Mpdf();
	$stylesheet1 = file_get_contents('../bootstrap/css/bootstrap.css'); // external css
	$mpdf->WriteHTML($stylesheet1,1);
	$mpdf->SetWatermarkImage('../dist/img/watermark_smp.png',0.2, 
    'F');
	$mpdf->showWatermarkImage = true;
	$mpdf->WriteHTML($content);
	// $mpdf->AddPage();
	// $mpdf->WriteHTML();
	$mpdf->Output();
?>