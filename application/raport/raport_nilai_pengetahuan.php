<?php 
    if (isset($_POST[simpan])){
      if ($_POST[status]=='Update'){
        mysql_query("UPDATE rb_nilai_pengetahuan_semester SET  bid_kompetensi_dasar='$_POST[a]', nilai1='$_POST[b]', nilai2='$_POST[c]' where id_nilai_pengetahuan='$_POST[id]'");
      }else{
        mysql_query("INSERT INTO rb_nilai_pengetahuan_semester VALUES('','$_GET[jdwl]','$_GET[kdpelajaran]','$_POST[nisn]','$_POST[a]','$_POST[b]','$_POST[c]','$_SESSION[id]','".date('Y-m-d H:i:s')."')");
      }
      echo "<script>document.location='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]#$_POST[nisn]';</script>";
    }

    if (isset($_GET[delete])){
      mysql_query("DELETE FROM rb_nilai_pengetahuan where id_nilai_pengetahuan='$_GET[delete]'");
      echo "<script>document.location='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]#$_GET[nisn]';</script>";
    }

    $d = mysql_fetch_array(mysql_query("SELECT * FROM rb_kelas where kode_kelas='$_GET[id]'"));
    $n = mysql_fetch_array(mysql_query("SELECT * FROM rb_kls_pararel where id_kls_pararel='$_GET[ie]'"));
    $m = mysql_fetch_array(mysql_query("SELECT * FROM rb_mata_pelajaran where kode_pelajaran='$_GET[kd]'"));
    if($_GET[status]=='sukses'){
     echo'<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data berhasil di import</div>';
    }else if($_GET[status]=='gagal'){
      echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data Gagal di import</div>';
    }
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Input Nilai Pengetahuan Siswa</b></h3>
                  <a style='margin-top:-3px; margin-right:5px' class='btn btn-success pull-right' data-toggle='modal' data-target='#importnilaip'><span class='fa fa-file'></span> Import</a>
                  

                </div>
            
        <div class='box-body'>
              <div class='col-md-12'>
              <table class='table table-condensed table-hover'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[kodekelas]'>
                    <tr><th width='120px' scope='row'>Kode Kelas</th> <td>$d[kode_kelas]</td></tr>
                    <tr><th scope='row'>Nama Kelas</th>               <td>$d[nama_kelas]</td></tr>
                    <tr><th scope='row'>Kelas Paralel</th>               <td>$n[nm_pararel]</td></tr>
                    <tr><th scope='row'>Mata Pelajaran</th>           <td>$m[namamatapelajaran]</td></tr>
                  </tbody>
              </table>
              </div>

          <div class='panel-body table-responsive'>
              <table class='table table-bordered table-striped'>
                                <tr>
                                  <th style='border:1px solid #e3e3e3' width='30px' rowspan='2'>No</th>
                                  <th style='border:1px solid #e3e3e3' width='170px' rowspan='2'>Nisn</th>
                                  <th style='border:1px solid #e3e3e3' width='170px' rowspan='2'>Nama Lengkap</th>
                                  <th style='border:1px solid #e3e3e3' colspan='3'><center>Penilaian</center></th>
                                  <th style='border:1px solid #e3e3e3; width:65px' rowspan='2'><center>Action</center></th>
                                </tr>
                              <tbody>";
                           
                              $no = 1;
                              $tampil = mysql_query("SELECT * FROM rb_siswa where kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]' AND status_siswa != 'lulus' ORDER BY id_siswa");
                              while($r=mysql_fetch_array($tampil)){
                                  if (isset($_GET[edit])){
                                      $e = mysql_fetch_array(mysql_query("SELECT  FROM rb_nilai_pengetahuan where id_nilai_pengetahuan='$_GET[edit]'"));
                                      $name = 'Update';
                                  }else{
                                      $name = 'Insert';
                                  }
                                  if ($_GET[nisn]==$r[nisn]){
                                    echo "<form action='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&kdpelajaran=$m[kode_pelajaran]' method='POST'>
                                      <tr>
                                        <td>$no</td>
                                        <td style='font-size:12px'>$r[nisn]</td>
                                        <td style='font-size:12px' id='$r[nisn]'>$r[nama]</td>
                                        <input type='hidden' name='nisn' value='$r[nisn]'>
                                        <input type='hidden' name='id' value='$e[id_nilai_pengetahuan]'>
                                        <input type='hidden' name='status' value='$name'>
                                        ";
                                  }else{
                                    echo "<form action='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&kdpelajaran=$m[kode_pelajaran]' method='POST'>
                                      <tr>
                                        <td>$no</td>
                                        <td style='font-size:12px'>$r[nisn]</td>
                                        <td style='font-size:12px' id='$r[nisn]'>$r[nama]</td>
                                        <input type='hidden' name='nisn' value='$r[nisn]'>
                                        <input type='hidden' name='id' value='$e[id_nilai_pengetahuan]'>
                                        <input type='hidden' name='status' value='$name'>
                                      ";
                                  }

                                    $pe = mysql_query("SELECT * FROM rb_nilai_pengetahuan a LEFT JOIN rb_kompetensi_dasar b ON a.id_kompetensi_dasar=b.id_kompetensi_dasar where a.kodejdwl='$_GET[jdwl]' AND a.nisn='$r[nisn]'");
                                    while ($n = mysql_fetch_array($pe)){
                                    $ratarata = average(array($n[nilai1],$n[nilai2],$n[nilai3],$n[nilai4],$n[nilai5]));
                                    $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]'"));
                                    if ($cekpredikat >= 1){
                                      $grade1 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($ratarata)." >=nilai_a) AND (".number_format($ratarata)." <= nilai_b) AND kode_kelas='$_GET[id]'"));
                                    }else{
                                      $grade1 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($ratarata)." >=nilai_a) AND (".number_format($ratarata)." <= nilai_b) AND kode_kelas='0'"));
                                    }
                                    
                                /*      echo "<tr>
                                        <td></td>
                                        <td></td>
                                        <td>$n[kd]. $n[kompetensi_dasar]</td>
                                        <td align=center>$n[nilai1]</td>
                                        <td align=center>$n[nilai2]</td>
                                        <td align=center><a href='index.php?view=raport&act=listsiswa&jdwl=".$_GET[jdwl]."&kd=".$_GET[kd]."&id=".$_GET[id]."&ie=".$_GET[ie]."&tahun=".$_GET[tahun]."&edit=".$n[id_nilai_pengetahuan]."&nisn=".$r[nisn]."#$r[nisn]' class='btn btn-xs btn-success'><span class='glyphicon glyphicon-edit'></span></a>
                                                        <a href='index.php?view=raport&act=listsiswa&jdwl=".$_GET[jdwl]."&kd=".$_GET[kd]."&id=".$_GET[id]."&ie=".$_GET[ie]."&tahun=".$_GET[tahun]."&delete=".$n[id_nilai_pengetahuan]."&nisn=".$r[nisn]."' class='btn btn-xs btn-danger' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a></td>
                                      </tr>";*/
                                    }
                                      $ta = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$r[nisn]' AND kodejdwl='$_GET[jdwl]' GROUP BY kodejdwl"));
                                      $countKD = mysql_fetch_array(mysql_query("SELECT count(`id_nilai_pengetahuan`) as countKD FROM `rb_nilai_pengetahuan` WHERE nisn='$r[nisn]' and `kodejdwl` = '$_GET[jdwl]'"));

                                      $range =  mysql_fetch_array(mysql_query("SELECT sum(nilai1)/$countKD[countKD] as uh, sum(nilai2)/$countKD[countKD] as tugas FROM `rb_nilai_pengetahuan` WHERE  nisn='$r[nisn]' and `kodejdwl` = '$_GET[jdwl]'"));
                                      $ee = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where id_nilai_pengetahuan_semester='$_GET[editsemester]'"));
                                      $sms = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kodejdwl='$_GET[jdwl]' AND nisn='$r[nisn]' AND tahun = '$_GET[tahun]'"));

                                      // $total = ($range[uh]+$range[tugas]+$sms[nilai1]+$sms[nilai2])/4;
                                      $total = ($sms[nilai1]*6+$sms[nilai2]*4)/10;
                                      // $total = ($sms[nilai1]+$sms[nilai2])/2;

                                      $rapn = mysql_fetch_array(mysql_query("SELECT kodejdwl, nisn, (sum(uh)+sum(tugas))/2 as total FROM ((SELECT kodejdwl, nisn, sum(nilai1)/count(nisn) as uh, sum(nilai2)/count(nisn) as tugas FROM `rb_nilai_pengetahuan` where nisn='$r[nisn]' GROUP BY kodejdwl) UNION (SELECT kodejdwl, nisn, nilai1, (nilai2*2) FROM rb_nilai_pengetahuan_semester where nisn='$r[nisn]')) as a where a.kodejdwl='$_GET[jdwl]' GROUP by a.kodejdwl"));
                                      
                                      
                                      // echo "<tr>
                                      //         <td></td><td></td>
                                      //         <td align=center class='pull-right'>Nilai Rata-Rata</td>
                                      //         <td align=center>".number_format($ta[uh])."</td>
                                      //         <td align=center>".number_format($ta[tugas])."</td>
                                      //       </tr>";

                                          if ($_GET[nis]==$r[nisn]){
                                              echo "<form action='' method='POST'>
                                              <input type='hidden' value='$_GET[jdwl]' name='jdwl'>
                                                <td align=right>Nilai Rata-Rata Bulanan  :</td>
                                                <td align=center colspan='2'><input type='hidden' value='$r[nisn]' name='nis'><input type='hidden' value='$ee[id_nilai_pengetahuan_semester]' name='id'><input type='text' name='a' class='form-control' style='width:95px; text-align:center; padding:0px; border:1px solid red' value='$ee[nilai1]'></td>
                                                <td rowspan='3' align=center colspan='2' style='vertical-align:middle;'>
                                                  <button type='submit' name='updatesemester' title='Simpan Nilai UTS atau UAS' class='btn btn-lg btn-success' style='margin-top:5px'><span class='glyphicon glyphicon-ok'></span></button></a>
                                                </td>
                                              </tr>
                                              <tr>
                                                <td></td><td></td><td></td>
                                                <td align=right>Nilai UAS</td>
                                                <td align=center colspan='2'><input type='text' name='b' class='form-control' style='width:95px; text-align:center; padding:0px; border:1px solid red' value='$ee[nilai2]'></td>
                                              </tr>
                                              </form>";
                                          }else{

                                              echo "
                                                <td align=right>Rata-Rata Nilai Bulanan :</td>
                                                <td align=center colspan='2'>".number_format($sms[nilai1])."</td>
                                                <td rowspan='3' align=center colspan='2' style='vertical-align:middle;'>
                                                  <a title='Ubah Nilai UTS atau UAS' href='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&nis=$r[nisn]&editsemester=$sms[id_nilai_pengetahuan_semester]#$r[nisn]' class='btn btn-lg btn-primary' style='margin-top:5px'><span class='glyphicon glyphicon-edit'></span></a>
                                                </td>
                                              </tr>
                                              <tr>
                                                <td></td><td></td></td><td>
                                                <td align=right>Nilai UAS :</td>
                                                <td align=center colspan='2'>".number_format($sms[nilai2])."</td>
                                              </tr>";
                                          }

                                            echo "<tr>
                                              <td></td><td></td></td><td>
                                              <td align=right ><b style='color:blue'>Nilai Raport :</b></td>
                                              <td align=center colspan='2'><b style='color:blue'>".number_format($total)."</b></td>
                                            </tr>";
                                  $no++;
                                }

                                if (isset($_POST[updatesemester])){
                                    if (trim($_POST[id])==''){
                                      $query = mysql_query("INSERT INTO rb_nilai_pengetahuan_semester VALUES('','$_POST[jdwl]','$_GET[kdpelajaran]','$_POST[nis]','$_POST[a]','$_POST[b]','$_SESSION[id]','".date('Y-m-d H:i:s')."','$_GET[tahun]')");
                                      $raport = ($_POST[a]*6+$_POST[b]*4)/10;
                                      $cekLedger = mysql_num_rows(mysql_query("SELECT nisn FROM rb_ledger WHERE kode_pelajaran = '$_GET[kdpelajaran]' AND kode_kelas = '$_GET[id]' AND tahun = '$_GET[tahun]' AND nisn = '$_POST[nis]'"));
                                      if ($cekLedger > 0) {
                                        mysql_query("UPDATE rb_ledger SET ub = '$_POST[a]', uas = '$_POST[b]', pengetahuan = '$raport' WHERE kode_pelajaran = '$_GET[kdpelajaran]' AND nisn = '$_POST[nis]' AND tahun = '$_GET[tahun]'");
                                      }else{
                                        mysql_query("INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_POST[jdwl]','$_GET[kdpelajaran]','$_POST[nis]','$_GET[id]','$_GET[ie]','$_POST[a]','$_POST[b]','$raport','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')");
                                      }
                                     
                                    }else{
                                      $query = mysql_query("UPDATE rb_nilai_pengetahuan_semester SET nilai1 = '$_POST[a]', nilai2 = '$_POST[b]' where id_nilai_pengetahuan_semester='$_POST[id]'");
                                      $raport = ($_POST[a]*6+$_POST[b]*4)/10;
                                      $cekLedger = mysql_num_rows(mysql_query("SELECT nisn FROM rb_ledger WHERE kode_pelajaran = '$_GET[kdpelajaran]' AND kode_kelas = '$_GET[id]' AND tahun = '$_GET[tahun]' AND nisn = '$_POST[nis]'"));
                                      if ($cekLedger > 0) {
                                        mysql_query("UPDATE rb_ledger SET ub = '$_POST[a]', uas = '$_POST[b]', pengetahuan = '$raport' WHERE kode_pelajaran = '$_GET[kdpelajaran]' AND nisn = '$_POST[nis]' AND tahun = '$_GET[tahun]'");
                                      }else{
                                        mysql_query("INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_POST[jdwl]','$_GET[kdpelajaran]','$_POST[nis]','$_GET[id]','$_GET[ie]','$_POST[a]','$_POST[b]','$raport','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')");
                                      }
                                    }

                                    if ($query){
                                      echo "<script>document.location='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&sukses#$_POST[nis]';</script>";
                                    }else{
                                      echo "<script>document.location='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&gagal#$_POST[nis]';</script>";
                                    }
                            }

                                echo "</tbody>
                            </table>
              			</div>";
         
                 ?>

