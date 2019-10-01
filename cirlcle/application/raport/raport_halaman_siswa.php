<?php 
  echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                <h3 class='box-title'>Laporan Nilai Akhir : <b>$nama</b></h3>
                <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type='hidden' name='view' value='raport'>
                    <input type='hidden' name='act' value='detailsiswa'>
                    <select name='tahun' style='padding:4px'>
                        <option value=''>- Pilih Tahun Akademik -</option>";
                            $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                            while ($k = mysql_fetch_array($tahun)){
                              if ($_GET[tahun]==$k[id_tahun_akademik]){
                                echo "<option value='$k[id_tahun_akademik]' selected>$k[nama_tahun]</option>";
                              }else{
                                echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
                              }
                            }

                    echo "</select>
                    <input type='submit' style='margin-top:-4px' class='btn btn-success btn-sm' value='Lihat'>
                  </form>
                </div>
                <div class='box-body'>
                <b class='semester'>CAPAIAN KOMPETENSI</b>

        <table class='table table-bordered table-striped'>
          <tr>
            <th bgcolor=#e3e3e3 rowspan='3'> <center>No</center></th>
            <th bgcolor=#e3e3e3 width='160px' rowspan='3'><center>Komponen</center></th>
            <th bgcolor=#e3e3e3 width='120px' rowspan='3'><center>Kriteria Ketuntasan Minimal (KKM)</center></th>
            <th bgcolor=#e3e3e3 colspan='5'><center>Nilai Hasil Belajar</center></th>
          </tr>
          </tr>
            <th bgcolor=#e3e3e3 colspan='2' style='text-align:center'><center>Pengetahuan dan Pemahaman Konsep</center></th>
            <th bgcolor=#e3e3e3 colspan='2' style='text-align:center'><center>Praktik</center></th>
            <th bgcolor=#e3e3e3 colspan='2' style='text-align:center'><center>Sikap / Afektif</center></th>
          </tr>
          <tr>
            <th bgcolor=#e3e3e3><center>Angka</center></th>
            <th bgcolor=#e3e3e3><center>Huruf</center></th>
            <th bgcolor=#e3e3e3><center>Angka</center></th>
            <th bgcolor=#e3e3e3><center>Huruf</center></th>
            <th bgcolor=#e3e3e3><center>Predikat</center></th>
          </tr>";

      echo "<tr>
            <td align=center><b>A.</b></td><td><b>Mata Pelajaran</b></td><td></td><td></td><td></td><td></td><td></td><td></td>
          </tr>";
        $mapel = mysql_query("SELECT * FROM rb_jadwal_pelajaran a JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran 
                                  where a.kode_kelas='$iden[kode_kelas]' AND a.id_tahun_akademik='$_GET[tahun]'");
        $no = 1;
        while ($m = mysql_fetch_array($mapel)){    
                            
        $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$iden[nisn]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$iden[nisn]')) as a where a.kodejdwl='$m[kodejdwl]' GROUP by a.kodejdwl"));

        $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$iden[nisn]' and `kodejdwl` = '$m[kodejdwl]'"));

        $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$iden[nisn]' and `kodejdwl` = '$m[kodejdwl]'"));
        $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
        $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kodejdwl='$m[kodejdwl]' AND nisn='$iden[nisn]'"));

        $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;

        $grandTotal += number_format($total);

        $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[kelas]'"));
            if ($cekpredikat >= 1){
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$_GET[kelas]'"));
            }else{
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
            }

        $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$iden[kode_kelas]'"));
            if ($cekpredikat >= 1){
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='$iden[kode_kelas]'"));
            }else{
                $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[raport])." >=nilai_a) AND (".number_format($rapn[raport])." <= nilai_b) AND kode_kelas='0'"));
            }

        $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$s[nisn]'"));

        $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$iden[nisn]'"));
        
        $rapnk = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$iden[nisn]'"));
        $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$iden[kode_kelas]'"));
        if ($cekpredikat2 >= 1){
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$iden[kode_kelas]'"));
        }else{
          $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
        }      
        $totalKeterampilan+= number_format($rapnk[total]); 

        // $rapnk = mysql_fetch_array(mysql_query("SELECT sum(GREATEST(nilai1,nilai2,nilai3,nilai4,nilai5,nilai6))/count(nisn) as raport FROM rb_nilai_keterampilan where kodejdwl='$m[kodejdwl]' AND nisn='$iden[nisn]'"));
        // $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$iden[kode_kelas]'"));
        //     if ($cekpredikat2 >= 1){
        //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='$iden[kode_kelas]'"));
        //     }else{
        //         $grade = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapnk[raport])." >=nilai_a) AND (".number_format($rapnk[raport])." <= nilai_b) AND kode_kelas='0'"));
        //     }
        $des = mysql_fetch_array(mysql_query("SELECT * FROM rb_ledger where kodejdwl='$m[kodejdwl]' AND nisn='$iden[nisn]' AND kode_kelas='$iden[kode_kelas]'"));
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
                <td>".ucwords(terbilang(number_format($total)))."</td>
                <td align=center>".number_format($rapnk[total])."</td>
                <td>".ucwords(terbilang(number_format($rapnk[total])))."</td>
                <td align=center>$sikap</td>
            </tr>";
        $no++;
        }

        $ta = mysql_fetch_array(mysql_query("SELECT sum(d.total) as total FROM (SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/4 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$iden[nisn]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$iden[nisn]')) as a GROUP by a.kodejdwl) as d"));
        $rapnk = mysql_fetch_array(mysql_query("SELECT sum(raport) as raporttotal FROM (SELECT sum(GREATEST(nilai1,nilai2,nilai3,nilai4,nilai5,nilai6))/count(nisn) as raport FROM rb_nilai_keterampilan where nisn='$iden[nisn]' GROUP BY kodejdwl) as a"));
        $siswa = mysql_num_rows(mysql_query("SELECT * FROM rb_siswa where kode_kelas='$iden[kode_kelas]' AND id_kls_pararel='$iden[id_kls_pararel]'"));
        $rank = mysql_fetch_array(mysql_query("SELECT * FROM rb_peringkat where nisn='$iden[nisn]' AND kode_kelas='$iden[kode_kelas]' AND id_kls_pararel='$iden[id_kls_pararel]' AND id_tahun_akademik='$_GET[tahun]'"));
        echo "<tr>
                <td colspan='3' align=center><b>JUMLAH</b></td>
                <td align=center><b>".number_format($grandTotal)."</b></td>
                <td>".ucwords(terbilang(number_format($grandTotal)))."</td>
                <td align=center><b>".number_format($totalKeterampilan)."</b></td>
                <td>".ucwords(terbilang(number_format($totalKeterampilan)))."</td>
                <td></td>
            </tr>"; 

        echo "<tr>
                <td bgcolor=#e3e3e3 align=center><b></b></td>
                <td bgcolor=#e3e3e3><b>PERINGKAT</b></td>
                <td bgcolor=#e3e3e3 align=center><b>$rank[rank]</b></td>
                <td bgcolor=#e3e3e3 colspan='2'><b>Dari $siswa Siswa</b></td>
                <td bgcolor=#e3e3e3 align=center></td>
                <td bgcolor=#e3e3e3 align=center></td>
                <td bgcolor=#e3e3e3></td>
            </tr>"; 

        echo "</table></div></div>";