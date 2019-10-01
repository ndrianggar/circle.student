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
</head>
<body onload="window.print()">
<img src="../dist/img/logo_ihbs.png" class="watermark">
<?php
$t = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where id_tahun_akademik='$_GET[tahun]'"));
$s = mysql_fetch_array(mysql_query("SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                        LEFT JOIN rb_guru c ON b.nip=c.nip JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel  where a.nisn='$_GET[id]'"));
if (substr($_GET[tahun],4,5)=='1'){ $semester = 'Ganjil'; }else{ $semester = 'Genap'; }
$iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah ORDER BY id_identitas_sekolah DESC LIMIT 1"));

echo "<table width=100%>
        <tr>
          <td width=140px>Nama Sekolah</td> <td>:</td> <td>  $iden[nama_sekolah] </td>
          <td width=140px>Kelas</td> <td> :</td><td> $s[kode_kelas]</td>       
        </tr>
        <tr>
          <td>Alamat </td> <td>:</td>                   
          <td>  $iden[alamat_sekolah] </td>
          <td width=140px>Kelas Pararel </td> <td>:</td>   <td width=150px> $s[nm_pararel]</td>     
        </tr>
        <tr>
          <td>Nama Peserta Didik </td> <td>:</td>       
          <td>  <b>$s[nama]</b> </td>     
          <td>Semester </td> <td>:</td> <td> $semester</td>      
        </tr>
        <tr>
          <td>No Induk/NISN </td> <td>:</td>            
          <td>  $s[nipd] / $s[nisn]</td>        
           <td>Tahun Pelajaran </td> <td>:</td> <td> $t[keterangan]</td>
        </tr>
      </table><br>";

echo "<table id='tablemodul1' width=100% border=1>
          <tr>
            <th rowspan='3'>No</th>
            <th width='160px' rowspan='3'>Komponen</th>
            <th rowspan='3'>KKM</th>
            <th colspan='5'>Nilai Hasil Belajar</th>
          </tr>
          </tr>
            <th colspan='2' style='text-align:center'>Pengetahuan dan Pemahaman Konsep</th>
            <th colspan='2' style='text-align:center'>Praktik</th>
            <th colspan='2' style='text-align:center'>Sikap / Afektif</th>
          </tr>
          <tr>
            <th>Angka</th>
            <th width='130px'>Huruf</th>
            <th>Angka</th>
            <th width='130px'>Huruf</th>
            <th>Predikat</th>
          </tr>";

      echo "<tr>
            <td align=center><b>A.</b></td><td><b>Mata Pelajaran</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
          </tr>";
        $mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran 
                                  where a.kode_kelas='$_GET[kelas]' AND a.id_tahun_akademik='$_GET[tahun]'");
        $no = 1;
        while ($m = mysql_fetch_array($mapel)){                                
        $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

        $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));

        $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));
        $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
        $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kodejdwl='$m[kodejdwl]' AND nisn='$_GET[id]'"));

        $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;

        $grandTotal += number_format($total);

        $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
            if ($cekpredikat >= 1){
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
            }else{
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
            }
        $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));

        $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
        
        $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
        $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
        if ($cekpredikat2 >= 1){
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
        }else{
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
        }  

        $totalKeterampilan+= number_format($rapnk[total]);  

        // $rapnk = mysql_fetch_array(mysql_query("SELECT sum(GREATEST(nilai1,nilai2,nilai3,nilai4,nilai5,nilai6))/count(nisn) as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
        // $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
        //     if ($cekpredikat2 >= 1){
        //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
        //     }else{
        //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='0'"));
        //     }
        $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kodejdwl='$m[kodejdwl]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'"));   
        if ($des[sikap]=='T') {
            $sikap= "Tinggi";
        }elseif ($des[sikap]=='S') {
             $sikap = "Sedang";
        }elseif ($des[sikap]=='R') {
            $sikap = "Rendah";
        }else{
            $sikap = "";
        }
        echo "<tr>
                <td align=center>$no</td>
                <td>$m[namamatapelajaran]</td>
                <td align=center>$m[kkm]</td>
                <td align=center>".number_format($total)."</td>
                <td style='font-size:13px;'>".ucwords(terbilang(number_format($total)))."</td>
                <td align=center>".number_format($rapnk[total])."</td>
                <td style='font-size:13px;'>".ucwords(terbilang(number_format($rapnk[total])))."</td>
                <td align=center>$sikap</td>
            </tr>";
        $no++;
        }

        $ta = mysql_fetch_array(mysql_query("SELECT sum(d.total) as total FROM (SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a GROUP by a.kodejdwl) as d"));
        $siswa = mysql_num_rows(mysql_query("SELECT * FROM rb_siswa where kode_kelas='$_GET[kelas]' AND id_kls_pararel='$_GET[ie]'"));
        $rank = mysql_fetch_array(mysql_query("SELECT * FROM rb_peringkat where nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]' AND id_tahun_akademik='$_GET[tahun]'"));
        echo "<tr>
                <td colspan='3' align=center><b>JUMLAH</b></td>
                <td align=center><b>".number_format($grandTotal)."</b></td>
                <td style='font-size:13px;'>".ucwords(terbilang(number_format($grandTotal)))."</td>
                <td align=center><b>".number_format($totalKeterampilan)."</b></td>
                <td style='font-size:13px;'>".ucwords(terbilang(number_format($totalKeterampilan)))."</td>
                <td></td>
            </tr>"; 

        echo "<tr>
                <td align=center><b></b></td>
                <td><b>PERINGKAT</b></td>
                <td align=center><b>$rank[rank]</b></td>
                <td colspan='2'><b>Dari $siswa Siswa</b></td>
                <td align=center></td>
                <td align=center></td>
                <td></td>
            </tr>"; 

        echo "</table><br/>";
?>

<table border=0 width=100%>
  <tr>
    <td width="260" align="left">Orang Tua / Wali</td>
    <td width="520"align="center">Mengetahui <br> Kepala Ibnnu Hajar Boarding</td>
    <td width="260" align="left">jakarta, <?php echo tgl_raport(date("Y-m-d")); ?> <br> Wali Kelas</td>
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
<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 500);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
     window.onafterprint = function () {  window.close(); }
</script>
</body>