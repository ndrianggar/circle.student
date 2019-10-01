<?php

include "config/koneksi.php";
$id_siswa = $_POST['id_siswa'];
$id_jadwal = $_POST['id_jadwal'];
$id_pertanyaan = $_POST['id_pertanyaan'];
$jwb = $_POST['jwb'];
$date = date('Y-m-d H:i:s');

$chek = mysql_num_rows(mysql_query("SELECT * FROM  rb_jawaban_objektif WHERE id_siswa = '$id_siswa' AND id_jadwal = '$id_jadwal' AND id_pertanyaan_objektif = '$id_pertanyaan'"));

$chek2 = mysql_num_rows(mysql_query("SELECT * FROM  rb_jawaban_objektif WHERE id_siswa = '$id_siswa' AND id_jadwal = '$id_jadwal'"));


// if ($chek2==0) {
	if ($chek>0) {
	$query = mysql_query("UPDATE rb_jawaban_objektif SET id_siswa = '$_POST[id_siswa]', id_jadwal = '$_POST[id_jadwal]', id_pertanyaan_objektif = '$_POST[id_pertanyaan]', jawaban = '$_POST[jwb]',waktu_objektif = '$date' WHERE id_siswa = '$id_siswa' AND id_jadwal = '$id_jadwal' AND id_pertanyaan_objektif = '$id_pertanyaan'");
	}else{
		$query = mysql_query("INSERT INTO rb_jawaban_objektif VALUES('','$_POST[id_siswa]','$_POST[id_jadwal]','$_POST[id_pertanyaan]','$_POST[jwb]','$date')");
	}

if ($query) {
		echo "berhasil";
	}else{
		echo "gagal";
	} 
// }

?>