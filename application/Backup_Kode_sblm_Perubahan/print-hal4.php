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
<!-- <img src="../dist/img/watermark_smp.png" class="watermark"> -->
<?php
$t = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where id_tahun_akademik='$_GET[tahun]'"));
$s = mysql_fetch_array(mysql_query("SELECT a.*, b.*, c.nama_guru as walikelas, c.nip, d.nm_pararel FROM rb_siswa a 
                                      JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas LEFT JOIN rb_kls_pararel d on d.id_kls_pararel = a.id_kls_pararel LEFT JOIN rb_guru c ON d.nip=c.nip  where a.nisn='$_GET[id]'"));
if (substr($_GET[tahun],4,5)=='1'){ $semester = 'Ganjil'; }else{ $semester = 'Genap'; }
$iden = mysql_fetch_array(mysql_query("SELECT * FROM rb_identitas_sekolah where unit ='$_SESSION[unit]' ORDER BY id_identitas_sekolah DESC LIMIT 1"));

echo "<table width=100% style='font-size:13px;'>
        <tr>
          <td width=135px>Nama Sekolah</td> <td>:</td> <td> $iden[nama_sekolah] </td>
          <td width=135px>Kelas</td> <td> :</td><td> $s[kode_kelas]</td>       
        </tr>
        <tr>
          <td>Alamat </td> <td>:</td>                   
          <td>  $iden[alamat_sekolah] </td>
          <td width=130px>Kelas Pararel </td> <td>:</td>   <td width=150px> $s[nm_pararel]</td>     
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
      </table>";

echo "<table id='tablemodul1' width=100% border=1>
          <tr>
            <th rowspan='3'>No</th>
            <th width='160px' rowspan='3'>Mata Pelajaran</th>
            <th rowspan='3'>KKM</th>
            <th colspan='5'>Nilai Hasil Belajar</th>
          </tr>
          </tr>
            <th colspan='2' style='text-align:center'>Pengetahuan</th>
            <th colspan='2' style='text-align:center'>Keterampilan</th>
            <th colspan='2' style='text-align:center'>Sikap</th>
          </tr>
          <tr>
            <th>Angka</th>
            <th width='130px'>Huruf</th>
            <th>Angka</th>
            <th width='130px'>Huruf</th>
            <th>Predikat</th>
          </tr>";

      echo "
          <tr>
            <td colspan='2'><b>Kelompok A</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
          </tr>
          <tr>
            <td align='center'>1</td><td><b><font size='2'>Pendidikan Agama Islam</font></b></td><td></td><td></td><td></td><td></td><td></td><td></td>
          </tr>";

          // syntax
        // $mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran where a.kode_kelas='$_GET[kelas]' AND a.id_kls_pararel = '$_GET[ie]' AND a.id_tahun_akademik='$_GET[tahun]' GROUP BY a.kode_pelajaran");
        // $mapel = mysql_query("SELECT * FROM  rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran where a.kode_kelas='$_GET[kelas]' AND a.id_kls_pararel = '$_GET[ie]' AND a.id_tahun_akademik='$_GET[tahun]' AND b.sub_mapel = 'PAI' GROUP BY a.kode_pelajaran ORDER BY urutan asc");

         // query asal print-hal4 
       /* $mapel = mysql_query("SELECT * FROM  rb_mata_pelajaran where tingkat='$_GET[kelas]' AND sub_mapel = 'PAI' GROUP BY kode_pelajaran, namamatapelajaran ORDER BY urutan asc");
        $no = 1; $h = 1;
        while ($m = mysql_fetch_array($mapel)){                                
        $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

        $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));

        $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));
        $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
        $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]'"));

        // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
        $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;

        $grandTotal += number_format($total);

        $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
            if ($cekpredikat >= 1){
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
            }else{
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
            }
        $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));*/

        /*query nilai keterampilan 	PAI
        $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]'"));
        
        $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]'"));
     
        $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
        if ($cekpredikat2 >= 1){
        
        $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
        }else{
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
        }  

        $totalKeterampilan+= number_format($rapnk[total]);  */

        // $rapnk = mysql_fetch_array(mysql_query("SELECT sum(GREATEST(nilai1,nilai2,nilai3,nilai4,nilai5,nilai6))/count(nisn) as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
        // $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
        //     if ($cekpredikat2 >= 1){
        //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
        //     }else{
        //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='0'"));
        //     } // sampai sini query print-hal4

        //query mapel PAI
        $mapel = mysql_query("SELECT a.* FROM rb_mata_pelajaran a left join rb_jadwal_pelajaran b on a.kode_pelajaran = b.kode_pelajaran where a.tingkat='$_GET[kelas]' AND a.sub_mapel = 'PAI' AND id_tahun_akademik ='$_GET[tahun]' GROUP BY a.kode_pelajaran, a.namamatapelajaran ORDER BY a.urutan asc
");
             $no = 1; $h = 1;
                    while ($m = mysql_fetch_array($mapel)){                                
                    $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

                    $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));
/*
                    $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));*/
                    $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
                    //query nilai PAI
                    $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]' AND tahun ='$_GET[tahun]'"));

                    // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
                    $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;

                    $grandTotal += number_format($total);

                    $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
                        if ($cekpredikat >= 1){
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                        }else{
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
                        }
                    $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
                    // echo "SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]'";
                    $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun = '$_GET[tahun]'"));
                    // echo "SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun = '$_GET[tahun]'";
                    $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun = '$_GET[tahun]'"));
                    $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                    if ($cekpredikat2 >= 1){
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                    }else{
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
                    }  

                    $totalKeterampilan+= number_format($rapnk[total]);  

        $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran='$m[kode_pelajaran]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'  AND tahun = '$_GET[tahun]'"));   
        if ($des[sikap]=='A') {
            $sikap= "A";
        }elseif ($des[sikap]=='B') {
             $sikap = "B";
        }elseif ($des[sikap]=='C') {
            $sikap = "C";
        }elseif ($des[sikap]=='D'){
            $sikap = "D";
        }elseif($des[sikap]=='E'){
            $sikap = "E";
        }else{
            $sikap = "";
        }
        $huruf = array('','a','b','c','d','e','f','g','h','i');
        
        echo "<tr>
                <td align=center></td>
                <td>$huruf[$h]. $m[namamatapelajaran]</td>
                <td align=center>$m[kkm]</td>
                <td align=center>".number_format($total)."</td>
                <td style='font-size:13px;'>".ucwords(terbilang(number_format($total)))."</td>
                <td align=center>".number_format($rapnk[total])."</td>
                <td style='font-size:13px;'>".ucwords(terbilang(number_format($rapnk[total])))."</td>
                <td align=center>$sikap</td>
            </tr>";
        $h++;
        }



        // query asal  Nilai Umum
      /*  $mapel = mysql_query("SELECT * FROM  rb_mata_pelajaran where tingkat='$_GET[kelas]' AND sub_mapel != 'PAI' AND id_kelompok_mata_pelajaran = '1' GROUP BY namamatapelajaran ORDER BY urutan asc");
        $no = 2; $h = 1;
        while ($m = mysql_fetch_array($mapel)){                                
        $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

        $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));

        $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));
        $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
        $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]'"));*/

        // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
     /*   $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;

        $grandTotal += number_format($total);

        $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
            if ($cekpredikat >= 1){
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
            }else{
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
            }
        $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));
*/
        /*ini untuk nilai 2-7*/
       /* $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6) as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]'"));*/
/*       */
      /*  $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
        if ($cekpredikat2 >= 1){
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
        }else{
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
        }  

        $totalKeterampilan+= number_format($rapnk[total]);  sampai sini nilai umum A */
         $mapel = mysql_query("SELECT * FROM  rb_mata_pelajaran where tingkat='$_GET[kelas]' AND sub_mapel != 'PAI' AND id_kelompok_mata_pelajaran = '1' GROUP BY namamatapelajaran ORDER BY urutan asc");
                    $no = 2; $h = 1;
                    while ($m = mysql_fetch_array($mapel)){                                
                    $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan_semester` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

                    $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan_semester` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));

                    $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan_semester` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));

                    $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));

                    $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]' AND tahun ='$_GET[tahun]'"));
                    

                    $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;

                    $grandTotal += number_format($total);

                    $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
                        if ($cekpredikat >= 1){
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                        }else{
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
                        }
                    $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));

                    $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun = '$_GET[tahun]'"));
                    $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun = '$_GET[tahun]'"));
                    $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                    if ($cekpredikat2 >= 1){
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                    }else{
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
                    }  

                    $totalKeterampilan+= number_format($rapnk[total]);  

        $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran='$m[kode_pelajaran]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]' AND tahun = '$_GET[tahun]'")); 
       if ($des[sikap]=='A') {
            $sikap= "A";
        }elseif ($des[sikap]=='B') {
             $sikap = "B";
        }elseif ($des[sikap]=='C') {
            $sikap = "C";
        }elseif ($des[sikap]=='D'){
            $sikap = "D";
        }elseif($des[sikap]=='E'){
            $sikap = "E";
        }else{
            $sikap = "";
        }
        $huruf = array('','a','b','c','d','e','f','g','h','i');
        
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

        // Nilai Kelompok B
        echo "
          <tr>
            <td colspan='2'><b>Kelompok B</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
          </tr>";


         // query asal Nilai Kelompok B   
    /*    $mapel = mysql_query("SELECT * FROM  rb_mata_pelajaran where tingkat='$_GET[kelas]' AND sub_mapel != 'PAI' AND id_kelompok_mata_pelajaran = '2' GROUP BY kode_pelajaran, namamatapelajaran ORDER BY urutan asc");
        $no = 1; $h = 1;
        while ($m = mysql_fetch_array($mapel)){                                
        $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

        $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));

        $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));
        $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
        $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]'"));

        // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
        $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;

        $grandTotal += number_format($total);

        $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
            if ($cekpredikat >= 1){
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
            }else{
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
            }
        $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));

        $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]'"));
        
        $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]'"));
        $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
        if ($cekpredikat2 >= 1){
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
        }else{
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
        }  
                sampai sini query nilai kelompok b*/
                // echo "SELECT * FROM  rb_mata_pelajaran where tingkat='$_GET[kelas]' AND sub_mapel != 'PAI' AND id_kelompok_mata_pelajaran = '2' GROUP BY namamatapelajaran, namamatapelajaran ORDER BY urutan asc";
         $mapel = mysql_query("SELECT * FROM  rb_mata_pelajaran where tingkat='$_GET[kelas]' AND sub_mapel != 'PAI' AND id_kelompok_mata_pelajaran = '2' GROUP BY namamatapelajaran, namamatapelajaran ORDER BY urutan asc");
                    $no = 1; $h = 1;
                    while ($m = mysql_fetch_array($mapel)){                                
                    $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$_GET[id]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$_GET[id]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

                    $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));

                    $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$_GET[id]' and `kodejdwl` = '$m[kodejdwl]'"));
                    $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
                   $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kode_pelajaran = '$m[kode_pelajaran]' AND nisn='$_GET[id]' AND tahun = '$_GET[tahun]'"));
                    // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
                    $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;

                    $grandTotal += number_format($total);

                    $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
                        if ($cekpredikat >= 1){
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                        }else{
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
                        }
                    $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));

                    $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun = '$_GET[tahun]'"));
                    
                    $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kode_pelajaran ='$m[kode_pelajaran]' AND nisn='$s[nisn]' AND tahun = '$_GET[tahun]'"));
                    $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                    if ($cekpredikat2 >= 1){
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
                    }else{
                      $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
                    }  

              

        $totalKeterampilan+= number_format($rapnk[total]);  
        $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kode_pelajaran='$m[kode_pelajaran]' AND nisn='$_GET[id]' AND kode_kelas='$_GET[kelas]'  AND tahun = '$_GET[tahun]'"));   
        if ($des[sikap]=='A') {
            $sikap= "A";
        }elseif ($des[sikap]=='B') {
             $sikap = "B";
        }elseif ($des[sikap]=='C') {
            $sikap = "C";
        }elseif ($des[sikap]=='D'){
            $sikap = "D";
        }elseif($des[sikap]=='E'){
            $sikap = "E";
        }else{
            $sikap = "";
        }
        $huruf = array('','a','b','c','d','e','f','g','h','i');
        
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

       /*  echo "<tr>
               <td colspan='3'align=center><b>PERINGKAT</b></td>
                <td align=center><b>$rank[rank]</b></td>
                <td colspan='4' align='center'><b>Dari $siswa Siswa</b></td>
              </tr>";*/
        //     if ($_GET[kelas]=="VII" || $_GET[kelas]=="VIII" || $_GET[kelas]=="X" || $_GET[kelas]=="XI") {
        //       echo "
        //       <tr><td colspan='8' align='center' height='30'>KETERANGAN KENAIKAN KELAS : <strike>TIDAK NAIK</strike>  NAIK KELAS</td>
        //       </tr>";
        //     }else
        //     {
        //       echo "<tr><td colspan='8' align='center' height='30'>KETERANGAN KELULUSAN : <strike>TIDAK LULUS</strike>  LULUS</td></tr>";
        //     }
        echo "</table>";
?>
		<table id='tablemodul1' width=50% border=1 style="font-size: 11px;">
          <tr>
            <th align="center">Predikat</th>
            <th align="center">Keterangan</th>
          </tr>
          <tr>
          	<td align="center">A</td>
          	<td align="center">Amat Baik</td>
          </tr>
          <tr>
          	<td align="center">B</td>
          	<td align="center">Baik</td>
          </tr>
          <tr>
          	<td align="center">C</td>
          	<td align="center">Cukup</td>
          </tr>
          <tr>
          	<td align="center">D</td>
          	<td align="center">Kurang</td>
          </tr>
        </table>

<table border="0" width="100%" style="bottom: 10px; position: absolute;">
  <tr>
    <td width="300" align="left">Orang Tua / Wali</td>
    <td width="260" align="left">Wali Kelas</td>
      <?php
             $kls = $_GET[kelas];
            if($kls=="VII" || $kls=="VIII"){
              $tanggal ="Jakarta, 28 Juni 2019";
              }elseif ($kls =="IX"){
                $tanggal= "Jakarta, 29 Mei 2019";
              }else{
                $tanggal= "Tanggal Di Tentukan";
              }
              ?>
    <td width="260"align="left"> <?php echo $tanggal ?><br> Kepala Sekolah</td>
  </tr>
  <tr>
    <td align="left"><br /><br /><br /><br /><br />
      ................................... <br /><br /></td>
    <td width="300" align="left" valign="top"><br /><br /><br /><br />
      <b><?php echo $s[walikelas]; ?><br />
      NIP : <?php echo $s[nip]; ?></b>
    </td>
    <td align="left" valign="top"><br /><br /><br /><br />
       <?php
          $kelas = $_GET[kelas];
           if ($kelas == "VII" || $kelas == "VIII" || $kelas == "IX") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRA'"));
          }elseif ($kelas== "X" || $kelas== "XI" || $kelas == "XII") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRA'"));
          }elseif ($kelas == "VII SMP" || $kelas== "VIII SMP" || $kelas== "XI SMP") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMP PUTRI'")); 

          }elseif ($kelas == "X.IPA" || $kelas == "XI.IPA" || $kelas == "XI.IPS") {
            $kepsek = mysql_fetch_array(mysql_query("select * from rb_users where jabatan = 'kepala sekolah' and unit = 'SMA PUTRI'"));
          }   
        ?>
      <b><?php echo $kepsek[nama_lengkap];?><br>
      NIP : <?php echo $kepsek[username]; ?></b>
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