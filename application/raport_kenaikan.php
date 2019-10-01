<?php
	include "../config/koneksi.php";
	include "../config/fungsi_indotgl.php"; 
	require_once '../vendor/autoload.php';
$t = mysql_fetch_array(mysql_query('SELECT * FROM rb_tahun_akademik where id_tahun_akademik="'.$_GET["tahun"].'"'));
$s = mysql_fetch_array(mysql_query('SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                        LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn="'.$_GET["id"].'"'));
if (substr($_GET["tahun"],4,5)=="1"){ $semester = "Ganjil"; }else{ $semester = "Genap"; }
$iden = mysql_fetch_array(mysql_query('SELECT * FROM rb_identitas_sekolah ORDER BY id_identitas_sekolah DESC LIMIT 1'));
$content .= '
<style type="text/css">
	table tr th{
		padding: 5px;
	}

	table tr td{
		padding: 5px;
	}
</style>
<table width=100% style>
    <tr>
      <td width=150px height=25px>Nama Sekolah</td> <td>:</td> <td> '.$_SESSION["unit"].$iden["nama_sekolah"].'</td>
      <td width=130px height=25px>Kelas</td> <td> :</td><td> '.$s["kode_kelas"].'</td>       
    </tr>
    <tr>
      <td height=25px>Alamat </td> <td>:</td>                   
      <td height=25px>'.$iden["alamat_sekolah"].'</td>
      <td width=125px height=25px>Kelas Pararel </td> <td>:</td>   <td width=150px height=25px>'.$s["nm_pararel"].'</td>     
    </tr>
    <tr>
      <td height=25px>Nama Peserta Didik </td> <td>:</td>       
      <td height=25px>  <b>'.$s["nama"].'</b> </td>     
      <td height=25px>Semester </td> <td>:</td> <td> '.$semester.'</td>      
    </tr>
    <tr>
      <td height=25px>No Induk/NISN </td> <td>:</td>            
      <td height=25px>  '.$s["nipd"].' / '.$s["nisn"].'</td>        
       <td height=25px>Tahun Pelajaran </td> <td>:</td> <td>'.$t["keterangan"].'</td>
    </tr>
</table><br>
<table id="tablemodul1" width=100% border=1>
  <tr>
    <th rowspan="3" align="center">No</th>
    <th width="160px" rowspan="3" align="center">Komponen</th>
    <th rowspan="3" align="center">KKM</th>
    <th colspan="5" align="center">Nilai Hasil Belajar</th>
  </tr>
  <tr>
    <th colspan="2" align="center" style="text-align:center">Pengetahuan dan Pemahaman Konsep</th>
    <th colspan="2" align="center" style="text-align:center">Praktik</th>
    <th colspan="2" align="center" style="text-align:center">Sikap
    </th>
  </tr>
  <tr>
    <th align="center">Angka</th>
    <th align="center" width="130px">Huruf</th>
    <th align="center">Angka</th>
    <th align="center" width="130px">Huruf</th>
    <th align="center">Predikat</th>
  </tr>
  <tr>
    <td align=center><b>A.</b></td><td align=center><b>Mata Pelajaran</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
  </tr>';

$mapel = mysql_query('SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran where a.kode_kelas="VII" AND a.id_kls_pararel = "34" AND a.id_tahun_akademik="20181"');
$no = 1;
while ($m = mysql_fetch_array($mapel)){                                
$rapn = mysql_fetch_array(mysql_query('SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn="'.$_GET["id"].'" GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn="'.$_GET["id"].'")) as a where a.kodejdwl="'.$m["kodejdwl"].'" GROUP by a.kodejdwl'));

$countKD = mysql_fetch_array(mysql_query('SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn="'.$_GET["id"].'" and `kodejdwl` = "'.$m["kodejdwl"].'"'));

$range =  mysql_fetch_array(mysql_query('SELECT sum(nilai1)/'.$countKD["countKD"].' as uh, sum(nilai2)/'.$countKD["countKD"].' as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn="'.$_GET["id"].'" and `kodejdwl` = "'.$m["kodejdwl"].'"'));
$ee = mysql_fetch_array(mysql_query('SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester="'.$_GET["editsemester"].'"'));
$sms = mysql_fetch_array(mysql_query('SELECT * FROM rb_nilai_pengetahuan_semester where kodejdwl="'.$m["kodejdwl"].'" AND nisn="'.$_GET["id"].'"'));

// $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
$total = ($sms["nilai1"]*6+$sms["nilai2"]*4)/10;

$grandTotal = number_format($total);

$cekpredikat = mysql_num_rows(mysql_query('SELECT * FROM rb_predikat where kode_kelas="'.$_GET["kelas"].'"'));
    if ($cekpredikat >= 1){
        $grade3 = mysql_fetch_array(mysql_query('SELECT * FROM `rb_predikat` where ('.number_format($rapn["raport"]).' >=nilai_a) AND ('.number_format($rapn["raport"]).' <= nilai_b) AND kode_kelas="'.$_GET["kelas"].'"'));
    }else{
        $grade3 = mysql_fetch_array(mysql_query('SELECT * FROM `rb_predikat` where ('.number_format($rapn["raport"]).' >=nilai_a) AND ('.number_format($rapn["raport"]).' <= nilai_b) AND kode_kelas="0"'));
    }
$rangeGlobal = mysql_fetch_array(mysql_query('SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl="'.$m["kodejdwl"].'" AND nisn="'.$s["nisn"].'"'));

$contKd = mysql_fetch_array(mysql_query('SELECT count(kd) as count FROM rb_nilai_keterampilan where kodejdwl='.$m["kodejdwl"].' AND nisn="'.$s["nisn"].'"'));

$rapnk = mysql_fetch_array(mysql_query('SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/'.$contKd["count"].'  as total FROM rb_nilai_keterampilan where kodejdwl="'.$m["kodejdwl"].'" AND nisn="'.$s["nisn"].'"'));
$cekpredikat2 = mysql_num_rows(mysql_query('SELECT * FROM rb_predikat where kode_kelas="'.$_GET["id"].'"'));
if ($cekpredikat2 >= 1){
  $grade3 = mysql_fetch_array(mysql_query('SELECT * FROM `rb_predikat` where ('.number_format($rapn["total"]).' >=nilai_a) AND ('.number_format($rapn["total"]).' <= nilai_b) AND kode_kelas="'.$_GET["kelas"].'"'));
}else{
  $grade3 = mysql_fetch_array(mysql_query('SELECT * FROM `rb_predikat` where ('.number_format($rapn["total"]).' >=nilai_a) AND ('.number_format($rapn["total"]).' <= nilai_b) AND kode_kelas="0"'));
}  

$totalKeterampilan= number_format($rapnk["total"]);  

$des = mysql_fetch_array(mysql_query('SELECT * FROM rb_ledger where kodejdwl="'.$m["kodejdwl"].'" AND nisn="'.$_GET["id"].'" AND kode_kelas="'.$_GET["kelas"].'"'));   
	if ($des["sikap"]=="T") {
	    $sikap= "Tinggi";
	}elseif ($des["sikap"]=="S") {
	     $sikap = "Sedang";
	}elseif ($des["sikap"]=="R") {
	    $sikap = "Rendah";
	}else{
	    $sikap = "";
	}
}

$content.='
	<tr>
        <td align=center>'.$no.'</td>
        <td>'.$m["namamatapelajaran"].'</td>
        <td align=center>'.$m["kkm"].'</td>
        <td align=center>'.number_format($total).'</td>
        <td style="font-size:13px;">'.ucwords(terbilang(number_format($total))).'</td>
        <td align=center>'.number_format($rapnk["total"]).'</td>
        <td style="font-size:13px;">'.ucwords(terbilang(number_format($rapnk["total"]))).'</td>
        <td align=center>'.$sikap.'</td>
    </tr>
</table>';

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