<?php
error_reporting(0);
include "config/koneksi.php";
$id_jadwal = $_GET['id_jadwal'];
$data = mysql_query("SELECT a.id_jadwal, b.id_cbt, d.* FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_quiz_cbt_soal c ON b.id_cbt=c.id_cbt
JOIN rb_bank_pertanyaan_objektif d ON c.id_bank_pertanyaan_objektif=d.id_bank_pertanyaan_objektif where d.kategori_soal='objektif' AND a.id_jadwal='$id_jadwal'");
$json = '{"soal":[ ';
while($x = mysql_fetch_array($data)){
    $json .= '{';
    $json .= '"id":"'.$x['id_bank_pertanyaan_objektif'].'",
        "kategori":"'.$x['kategori_soal'].'",
        "pertanyaan":"'.$x['pertanyaan'].'",
        "a":"'.$x['jawab_a'].'",
        "b":"'.$x['jawab_b'].'",
        "c":"'.$x['jawab_c'].'",
        "d":"'.$x['jawab_d'].'",
        "e":"'.$x['jawab_e'].'",
        "jawaban":"'.$x['kunci_jawaban'].'"
    },';
}
$json = substr($json,0,strlen($json)-1);
$json .= ']';

$json .= '}';
echo $json;

?>
