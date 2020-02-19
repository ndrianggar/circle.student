<?php 
    if (isset($_POST[simpan])){
      if ($_POST[status]=='Update'){
        mysql_query("UPDATE rb_nilai_keterampilan SET kd='$_POST[a]', nilai1='$_POST[b]', nilai2='$_POST[c]', nilai3='$_POST[d]', nilai4='$_POST[e]', nilai5='$_POST[f]', nilai6='$_POST[g]', deskripsi='$_POST[h]' where id_nilai_keterampilan='$_POST[id]'");
        $nilaiK = ($_POST[b]+$_POST[c]+$_POST[d]+$_POST[e]+$_POST[f]+$_POST[g])/6;
        $cekLedger = mysql_num_rows(mysql_query("SELECT nisn FROM rb_ledger WHERE kode_pelajaran = '$_GET[kd]' AND kode_kelas = '$_GET[id]' AND tahun = '$_GET[tahun]' AND nisn = '$_POST[nisn]'"));
        if ($cekLedger > 0) {
          mysql_query("UPDATE rb_ledger SET keterampilan = '$nilaiK' WHERE kode_pelajaran = '$_GET[kd]' AND nisn = '$_POST[nisn]' AND tahun = '$_GET[tahun]'");
         /* echo "INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_GET[jdwl]','$_GET[kd]','$_POST[nisn]','$_GET[id]','$_GET[ie]','','','$nilaiK','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')";*/
        }else{
          mysql_query("INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_GET[jdwl]','$_GET[kd]','$_POST[nisn]','$_GET[id]','$_GET[ie]','','','$nilaiK','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')");

        }
      }else{
        mysql_query("INSERT INTO rb_nilai_keterampilan VALUES('','$_GET[jdwl]',$_GET[kd],'$_POST[nisn]','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[f]','$_POST[g]','$_POST[h]','$_SESSION[id]','".date('Y-m-d H:i:s')."','$_GET[tahun]')");

        $nilaiK = ($_POST[b]+$_POST[c]+$_POST[d]+$_POST[e]+$_POST[f]+$_POST[g])/6;
        $cekLedger = mysql_num_rows(mysql_query("SELECT nisn FROM rb_ledger WHERE kode_pelajaran = '$_GET[kd]' AND kode_kelas = '$_GET[id]' AND tahun = '$_GET[tahun]' AND nisn = '$_POST[nisn]'"));
        if ($cekLedger > 0) {
          mysql_query("UPDATE rb_ledger SET keterampilan = '$nilaiK' WHERE kode_pelajaran = '$_GET[kd]' AND nisn = '$_POST[nisn]' AND tahun = '$_GET[tahun]'");
        }else{
          mysql_query("INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_GET[jdwl]','$_GET[kd]','$_POST[nisn]','$_GET[id]','$_GET[ie]','','','$nilaiK','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')");

        }


      }
   // echo "<script>document.location='index.php?view=raport&act=listsiswaketerampilan&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]#$_POST[nisn]';</script>";
    }

    if (isset($_GET[delete])){
        mysql_query("DELETE FROM rb_nilai_keterampilan where id_nilai_keterampilan='$_GET[delete]'");
        echo "<script>document.location='index.php?view=raport&act=listsiswaketerampilan&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]#$_GET[nisn]';</script>";
    }

    $d = mysql_fetch_array(mysql_query("SELECT * FROM rb_kelas where kode_kelas='$_GET[id]'"));
    $n = mysql_fetch_array(mysql_query("SELECT * FROM rb_kls_pararel where id_kls_pararel='$_GET[ie]'"));
    $m = mysql_fetch_array(mysql_query("SELECT * FROM rb_mata_pelajaran where kode_pelajaran='$_GET[kd]'"));
    echo "<div class='col-md-12'>
            <div class='box box-info'>
              <div class='box-header with-border'>
                <h3 class='box-title'>Input Nilai Keterampilan Siswa</b></h3>   
                 <button type='button' class='btn btn-primary pull-right' data-toggle='modal' data-target='#importnilaik'>
  IMPORT
</button>

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
                      <th style='border:1px solid #e3e3e3' width='170px' rowspan='2'>Nama Lengkap</th>
                      <th style='border:1px solid #e3e3e3; width:55px' rowspan='2'><center>KD</center></th>
                      <th style='border:1px solid #e3e3e3' colspan='6'><center>Penilaian</center></th>
                      <th style='border:1px solid #e3e3e3; width:55px' rowspan='2'><center>Nilai</center></th>
                      <th style='border:1px solid #e3e3e3; width:55px' rowspan='2'><center>Grade</center></th>
                      <th style='border:1px solid #e3e3e3' rowspan='2'><center>Deskripsi</center></th>
                      <th style='border:1px solid #e3e3e3; width:65px' rowspan='2'><center>Action</center></th>
                    </tr>
                    <tr>
                      <th style='border:1px solid #e3e3e3; width:110px' colspan=2><center>Praktek</center></th>
                      <th style='border:1px solid #e3e3e3; width:110px' colspan=2><center>Proyek</center></th>
                      <th style='border:1px solid #e3e3e3; width:110px' colspan=2><center>Portofolio</center></th>
                    </tr>
                  <tbody>";
                  $no = 1;
                  $tampil = mysql_query("SELECT * FROM rb_siswa where kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]' AND status_siswa !='Lulus' ORDER BY id_siswa");
                  while($r=mysql_fetch_array($tampil)){
                      if (isset($_GET[edit])){
                          $e = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_keterampilan where id_nilai_keterampilan='$_GET[edit]'"));
                          $name = 'Update';
                      }else{
                          $name = 'Simpan';
                      }
                      if ($_GET[nisn]==$r[nisn]){
                        echo "<form action='index.php?view=raport&act=listsiswaketerampilan&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&kdpelajaran=$m[kode_pelajaran]' method='POST'>
                          <tr>
                            <td>$no</td>
                            <td style='font-size:12px' id='$r[nisn]'>$r[nama]</td>
                            <input type='hidden' name='nisn' value='$r[nisn]'>
                            <input type='hidden' name='id' value='$e[id_nilai_keterampilan]'>
                            <input type='hidden' name='status' value='$name'>
                            <td align=center><input type='text' name='a' value='$e[kd]' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='b' value='$e[nilai1]' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='c' value='$e[nilai2]' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='d' value='$e[nilai3]' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='e' value='$e[nilai4]' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='f' value='$e[nilai5]' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='g' value='$e[nilai6]' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' style='width:35px; background:#e3e3e3; border:1px solid #e3e3e3;' disabled></td>
                            <td align=center><input type='text' style='width:35px; background:#e3e3e3; border:1px solid #e3e3e3;' disabled></td>
                            <td align=center><input type='text' name='h' value='$e[deskripsi]' style='width:100%; padding:0px'></td>
                            <td align=center><input type='submit' name='simpan' class='btn btn-xs btn-primary' style='width:65px' value='$name'></td>
                          </tr>
                          </form>";
                      }else{
                        echo "<form action='index.php?view=raport&act=listsiswaketerampilan&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&kdpelajaran=$m[kode_pelajaran]' method='POST'>
                          <tr>
                            <td>$no</td>
                            <td style='font-size:12px' id='$r[nisn]'>$r[nama]</td>
                            <input type='hidden' name='nisn' value='$r[nisn]'>
                            <input type='hidden' name='id' value='$e[id_nilai_pengetahuan]'>
                            <input type='hidden' name='status' value='$name'>
                            <td align=center><input type='text' name='a' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='b' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='c' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='d' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='e' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='f' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' name='g' style='width:35px; text-align:center; padding:0px'></td>
                            <td align=center><input type='text' style='width:35px; background:#e3e3e3; border:1px solid #e3e3e3;' disabled></td>
                            <td align=center><input type='text' style='width:35px; background:#e3e3e3; border:1px solid #e3e3e3;' disabled></td>
                            <td align=center><input type='text' name='h' style='width:100%; padding:0px'></td>
                            <td align=center><input type='submit' name='simpan' class='btn btn-xs btn-primary' style='width:65px' value='$name'></td>
                          </tr>
                          </form>";
                      }

                        $pe = mysql_query("SELECT * FROM rb_nilai_keterampilan where kodejdwl='$_GET[jdwl]' AND nisn='$r[nisn]'");
                        while ($n = mysql_fetch_array($pe)){
                        $ratarata = ($n[nilai1]+$n[nilai2]+$n[nilai3]+$n[nilai4]+$n[nilai5]+$n[nilai6])/6;
                        $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                          if ($cekpredikat >= 1){
                            $grade1 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($ratarata)." >=nilai_a) AND (".number_format($ratarata)." <= nilai_b) AND kode_kelas='$_GET[id]'"));
                          }else{
                            $grade1 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($ratarata)." >=nilai_a) AND (".number_format($ratarata)." <= nilai_b) AND kode_kelas='0'"));
                          }
                        
                          echo "<tr>
                            <td></td>
                            <td></td>
                            <td align=center>$n[kd]</td>
                            <td align=center>$n[nilai1]</td>
                            <td align=center>$n[nilai2]</td>
                            <td align=center>$n[nilai3]</td>
                            <td align=center>$n[nilai4]</td>
                            <td align=center>$n[nilai5]</td>
                            <td align=center>$n[nilai6]</td>
                            <td align=center>".number_format($ratarata)."</td>
                            <td align=center>$grade1[grade]</td>
                            <td>$n[deskripsi]</td>
                            <td align=center><a href='index.php?view=raport&act=listsiswaketerampilan&jdwl=".$_GET[jdwl]."&kd=".$_GET[kd]."&id=".$_GET[id]."&ie=".$_GET[ie]."&tahun=".$_GET[tahun]."&edit=".$n[id_nilai_keterampilan]."&nisn=".$r[nisn]."#$r[nisn]' class='btn btn-xs btn-success'><span class='glyphicon glyphicon-edit'></span></a>
                                            <a href='index.php?view=raport&act=listsiswaketerampilan&jdwl=".$_GET[jdwl]."&kd=".$_GET[kd]."&id=".$_GET[id]."&ie=".$_GET[ie]."&tahun=".$_GET[tahun]."&delete=".$n[id_nilai_keterampilan]."&nisn=".$r[nisn]."' class='btn btn-xs btn-danger' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a></td>
                          </tr>";
                        }
                          $maxn = mysql_fetch_array(mysql_query("SELECT deskripsi, GREATEST(nilai1,nilai2,nilai3,nilai4,nilai5,nilai6) as tertinggi FROM rb_nilai_keterampilan where kodejdwl='$_GET[jdwl]' AND nisn='$r[nisn]' ORDER BY tertinggi DESC LIMIT 1"));
                          $cekpredikat1 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]'"));
                          if ($cekpredikat1 >= 1){
                            $grade2 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($maxn[tertinggi])." >=nilai_a) AND (".number_format($maxn[tertinggi])." <= nilai_b) AND kode_kelas='$_GET[id]'"));
                          }else{
                            $grade2 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($maxn[tertinggi])." >=nilai_a) AND (".number_format($maxn[tertinggi])." <= nilai_b) AND kode_kelas='0'"));
                          }

                          $rangeGlobal = mysql_fetch_array(mysql_query("SELECT (nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6 as raport FROM rb_nilai_keterampilan where kodejdwl='$_GET[jdwl]' AND nisn='$r[nisn]'"));

                          $contKd = mysql_fetch_array(mysql_query("SELECT count(kd) as count FROM rb_nilai_keterampilan where kodejdwl='$_GET[jdwl]' AND nisn='$r[nisn]'"));
                          
                          $rapn = mysql_fetch_array(mysql_query("SELECT SUM((nilai1+nilai2+nilai3+nilai4+nilai5+nilai6)/6)/$contKd[count]  as total FROM rb_nilai_keterampilan where kodejdwl='$_GET[jdwl]' AND nisn='$r[nisn]'"));
                          $cekpredikat2 = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                          if ($cekpredikat2 >= 1){
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='$_GET[id]'"));
                          }else{
                            $grade3 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where (".number_format($rapn[total])." >=nilai_a) AND (".number_format($rapn[total])." <= nilai_b) AND kode_kelas='0'"));
                          }

                          echo "
                                <tr>
                                  <td></td><td></td>
                                  <td align=center colspan='7' style='text-align:right;'>Raport : </td>
                                  <td align=center>".number_format($rapn[total])."</td>
                                  <td align=center>$grade3[grade]</td><td>$maxn[deskripsi]</td>
                                </tr>";
                      $no++;
                    }

                    echo "</tbody>
                </table>
              </div>

          </div>
        </div>
        
      </div>";

?>
<div class="modal fade" id="importnilaik" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Import Nilai Keterampilan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    <div class='panel panel-success'>
            <div class='panel-heading'>
                <h3 class='panel-title'><i class='fa fa-user'></i> Form Import Nilai</h3> 
             </div>
           <div class='panel-body'>
            <div class='alert alert-info alert-dismissable'><button type='button'  class='close'    data-dismiss='alert' aria-hidden='true'>&times;</button><h4>Pastikan Extensi File Excel yang digunakan excel 2003 (.xls) untuk format excel anda bisa download dibawah ini</a></h4></div>
            <div style='padding: 0 15px;'>
                  <!-- Buat sebuah tag form dan arahkan action nya ke file ini lagi -->
             <?php
             echo "<form action='index.php?view=importnilaik&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]' method='post' enctype='multipart/form-data'>
              <a href='import_data/format_nilaik.xls'class='btn btn-defaulkt'>
               <span class='glyphicon glyphicon-download'></span>
                Download Format
              </a> <br/><br/><label><input type='checkbox' name='drop' value='1' /> <u>Kosongkan tabel sql terlebih dahulu.</u> </label> <br><br>

              <input type='file' id='nilaik' name='nilaik' class='pull-left' accept='.xls,.xlsx'>           
                <button type='submit' name='importnilaik' class='btn btn-success btn-sm'>
                <span class='glyphicon glyphicon-eye-open'></span> IMPORT
                </button>

               </form>
              </div>
            </div>
          </div>
          </section>
        </div>";?>
     