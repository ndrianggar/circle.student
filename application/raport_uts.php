<?php 
if ($_GET[act]==''){
cek_session_admin_guru(); 
?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"><?php if (isset($_GET[kelas]) AND isset($_GET[tahun])){ echo "Jadwal Pelajaran"; }else{ echo "Jadwal Pelajaran Pada Tahun ".date('Y'); } ?></h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='raportuts'>
                    <select name='tahun' style='padding:4px'>
                        <?php 
                            echo "<option value=''>- Pilih Tahun Akademik -</option>";
                            $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                            while ($k = mysql_fetch_array($tahun)){
                              if ($_GET[tahun]==$k[id_tahun_akademik]){
                                echo "<option value='$k[id_tahun_akademik]' selected>$k[nama_tahun]</option>";
                              }else{
                                echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
                              }
                            }
                        ?>
                    </select>
                    <select name='kelas' style='padding:4px'>
                        <?php 
                            echo "<option value=''>- Pilih Kelas -</option>";
                            if ($_SESSION[unit]=="SMP PUTRA") {
                               $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                            } else if($_SESSION[unit]=="SMA PUTRA"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                            }else{
                              $kelas = mysql_query("SELECT * FROM rb_kelas");
                            }
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET[kelas]==$k[kode_kelas]){
                                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }else{
                                echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                        ?>
                    </select>
                    <input type="submit" style='margin-top:-4px' class='btn btn-success btn-sm' value='Lihat'>
                  </form>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                  <table id="dataInptnilai" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Jadwal Pelajaran</th>
                        <th>Kelas</th>
                        <th>Kelas Pararel</th>
                        <th>Guru</th>
                        <th>Hari</th>
                        <th>Mulai</th>
                        <th>Selesai</th>
                        <th>Ruangan</th>
                        <th>Aktif</th>
                        <?php
                        if (isset($_GET[tahun]) AND isset($_GET[tahun])){ 
                          if($_SESSION[level]!='kepala'){ 
                            echo "<th>Action</th>";
                          }
                        }  
                        ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if ($_SESSION[level]!="guru") {
                      if (isset($_GET[kelas]) AND isset($_GET[tahun])){
                        $tampil = mysql_query("SELECT a.*, e.nama_kelas,m.nm_pararel, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                          JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                          JOIN rb_guru c ON a.nip=c.nip 
                          JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                          JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                          JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel 
                          where a.kode_kelas='$_GET[kelas]' 
                          AND a.id_tahun_akademik='$_GET[tahun]' 
                          -- AND b.kode_kurikulum='$kurikulum[kode_kurikulum]' 
                          ORDER BY a.hari DESC");
                      
                      }
                    }else{
                      if (isset($_GET[kelas]) AND isset($_GET[tahun])){
                        $tampil = mysql_query("SELECT a.*, e.nama_kelas,m.nm_pararel, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                          JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                          JOIN rb_guru c ON a.nip=c.nip 
                          JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                          JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                          JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel 
                          where a.kode_kelas='$_GET[kelas]' AND a.nip ='$_SESSION[id]'
                          AND a.id_tahun_akademik='$_GET[tahun]' 
                          GROUP BY a.`kode_pelajaran`, a.`id_kls_pararel` ORDER BY a.hari DESC");
                      }
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[nm_pararel]</td>
                              <td>$r[nama_guru]</td>
                              <td>$r[hari]</td>
                              <td>$r[jam_mulai]</td>
                              <td>$r[jam_selesai]</td>
                              <td>$r[nama_ruangan]</td>
                              <td>$r[aktif]</td>";
                              if (isset($_GET[tahun]) AND isset($_GET[kelas])){
                                if($_SESSION[level]!='kepala'){
                                  echo "
                                        <td><button class='btn btn-success btn-xs' onClick='modalBulan($r[kodejdwl])'><span class='glyphicon glyphicon-th-list'></span> Input Nilai</button></td>
                                        <div id='myModal$r[kodejdwl]' class='modal fade' role='dialog'>
                                          <div class='modal-dialog modal-sm'>
                                            <div class='modal-content'>
                                              <div class='modal-header'>
                                                <button type='button' class='close' data-dismiss='modal'>&times;</button>
                                                <h4 class='modal-title'>Raport Bulanan</h4>
                                              </div>
                                              <div class='modal-body'>
                                              <form  method='GET' action=''>
                                                <input type='hidden' name='view' value='raportuts'>
                                                <input type='hidden' name='tahun' value='$_GET[tahun]'>
                                                <input type='hidden' name='kode_kelas' value='$r[kode_kelas]'>
                                                <input type='hidden' name='id_kls_pararel' value='$r[id_kls_pararel]'>
                                                <input type='hidden' name='kode_pelajaran' value='$r[kode_pelajaran]'>
                                                <input type='hidden' name='kodejdwl' value='$r[kodejdwl]'>
                                                <input class='form-control $r[kodejdwl]' type='text' name='blnRaport' autocomplete='off'>
                                                <span>Note : Pilih Bulan</span>
                                              </div>
                                              <div class='modal-footer'>
                                                <button class='btn btn-success' type='submit' href='#'><span class='fa fa-search'></span> Show</a>
                                              </div>
                                              </form>
                                            </div>
                                          </div>
                                        </div>
                                        ";
                                }
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[blnRaport])) {
                        echo "<script type='text/javascript'>window.location.href='index.php?view=raportuts&act=listsiswa&jdwl=$_GET[kodejdwl]&kd=$_GET[kode_pelajaran]&id=$_GET[kode_kelas]&ie=$_GET[id_kls_pararel]&tahun=$_GET[tahun]&bulan=$_GET[blnRaport]'</script>";
                    }
                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
                <?php 
                    if ($_GET[kelas] == '' AND $_GET[tahun] == ''){
                        echo "<center style='padding:60px; color:red'>Silahkan Memilih Tahun akademik dan Kelas Terlebih dahulu...</center>";
                    }
                ?>
                </div>
            </div>                               
<?php
}elseif($_GET[act]=='detailguru'){
cek_session_guru();
    include "raport/raport_uts_halaman_guru.php";

}elseif($_GET[act]=='listsiswa'){
cek_session_guru();
    if (isset($_POST[simpan])){
        $jumls = mysql_num_rows(mysql_query("SELECT * FROM rb_siswa where kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]'"));
        for ($ia=1; $ia<=$jumls; $ia++){
          $a  = $_POST['a'.$ia];
          $b  = $_POST['b'.$ia];
          $nisn = $_POST['nisn'.$ia];
          if ($a != '' || $b != ''){
            $cek = mysql_num_rows(mysql_query("SELECT * FROM rb_nilai_uts where kodejdwl='$_POST[jdwl]' AND nisn='$nisn' AND raport_bulan = '$_GET[bulan]'"));
            
            $cek2 = mysql_num_rows(mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kodejdwl='$_POST[jdwl]' AND nisn='$nisn'"));

            $cek3 = mysql_num_rows(mysql_query("SELECT nisn FROM rb_ledger WHERE kode_pelajaran = '$_GET[kd]' AND kode_kelas = '$_GET[id]' AND tahun = '$_GET[tahun]' AND nisn = '$nisn'"));
            if ($cek > 0){
              mysql_query("UPDATE rb_nilai_uts SET angka_pengetahuan='$a', angka_keterampilan='$b' where kodejdwl='$_POST[jdwl]' AND nisn='$nisn' AND raport_bulan = '$_GET[bulan]'");
         
              $range = mysql_fetch_array(mysql_query("SELECT SUM(`angka_pengetahuan`)/COUNT(*) as nilai FROM rb_nilai_uts where kodejdwl='$_POST[jdwl]' AND nisn='$nisn'"));
              mysql_query("UPDATE rb_nilai_pengetahuan_semester SET nilai1 = '$range[nilai]' where nisn='$nisn' AND kodejdwl = '$_POST[jdwl]'");
            }else{
              mysql_query("INSERT INTO rb_nilai_uts VALUES('','$_POST[jdwl]','$nisn','$a','','$b','','$_GET[bulan]','".date('Y-m-d H:i:s')."')");
              $range = mysql_fetch_array(mysql_query("SELECT SUM(`angka_pengetahuan`)/COUNT(*) as nilai FROM rb_nilai_uts where kodejdwl='$_POST[jdwl]' AND nisn='$nisn'"));
              if ($cek2 > 0) {
                mysql_query("UPDATE rb_nilai_pengetahuan_semester SET nilai1 = '$range[nilai]' where nisn='$nisn' AND kodejdwl = '$_POST[jdwl]'");
              }else{
                mysql_query("INSERT INTO `rb_nilai_pengetahuan_semester`(`id_nilai_pengetahuan_semester`, `kodejdwl`, `nisn`, `nilai1`, `nilai2`, `user_akses`, `waktu`, `tahun`) VALUES ('','$_POST[jdwl]','$nisn',$range[nilai],'','$_SESSION[id]','".date('Y-m-d H:i:s')."','$_GET[tahun]')");
              }
            }
            if ($cek3 > 0) {
              $range = mysql_fetch_array(mysql_query("SELECT SUM(`angka_pengetahuan`)/COUNT(*) as nilai FROM rb_nilai_uts where kodejdwl='$_POST[jdwl]' AND nisn='$nisn'"));
              
              mysql_query("UPDATE rb_ledger SET ub = '$range[nilai]' WHERE kode_pelajaran = '$_GET[kd]' AND nisn = '$nisn' AND tahun = '$_GET[tahun]'");
            }else{
              $range = mysql_fetch_array(mysql_query("SELECT SUM(`angka_pengetahuan`)/COUNT(*) as nilai FROM rb_nilai_uts where kodejdwl='$_POST[jdwl]' AND nisn='$nisn'"));
              mysql_query("INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_POST[jdwl]','$_GET[kd]',$nisn,$_GET[id],$_GET[ie],'$range[nilai]','','','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')");
            }
          }
        }
        // echo "<script>document.location='index.php?view=raportuts&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&bulan=$_GET[bulan]';</script>";
    }

    $d = mysql_fetch_array(mysql_query("SELECT * FROM rb_kelas where kode_kelas='$_GET[id]'"));
    $e = mysql_fetch_array(mysql_query("SELECT * FROM rb_kls_pararel where id_kls_pararel='$_GET[ie]'"));
    $m = mysql_fetch_array(mysql_query("SELECT * FROM rb_mata_pelajaran where kode_pelajaran='$_GET[kd]'"));
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Input Nilai UTS Siswa</b></h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='POST'>
                    <input type='hidden' name='id' value='$_GET[id]'>
                    <input type='hidden' name='ie' value='$_GET[ie]'>
                    <input type='hidden' name='jdwl' value='$_GET[jdwl]'>

                </div>
              <div class='box-body'>

              <div class='col-md-12'>
              <table class='table table-condensed table-hover'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[kodekelas]'>
                    <tr><th width='120px' scope='row'>Kode Kelas</th> <td>$d[kode_kelas]</td></tr>
                    <tr><th scope='row'>Nama Kelas</th>               <td>$d[nama_kelas]</td></tr>
                    <tr><th scope='row'>Kelas Pararel</th>            <td>$e[nm_pararel]</td></tr>
                    <tr><th scope='row'>Mata Pelajaran</th>           <td>$m[namamatapelajaran]</td></tr>
                  </tbody>
              </table>
              </div>

                <div class='col-md-12'>
                  <table class='table table-bordered table-striped'>
                      <tr>
                        <th style='border:1px solid #e3e3e3' width='30px' rowspan='2'>No</th>
                        <th style='border:1px solid #e3e3e3' width='90px' rowspan='2'>NISN</th>
                        <th style='border:1px solid #e3e3e3' width='190px' rowspan='2'>Nama Lengkap</th>
                        <th style='border:1px solid #e3e3e3' colspan='2'><center>Pengetahuan</center></th>
                     
                      <tr>
                        <th style='border:1px solid #e3e3e3'><center>Angka</center></th>
                        <th style='border:1px solid #e3e3e3'><center>Predikat</center></th>
                        
                      </tr>
                    <tbody>";
                    $no = 1;
                    $tampil = mysql_query("SELECT * FROM rb_siswa where kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]' AND status_siswa !='Lulus' ORDER BY id_siswa");
                    while($r=mysql_fetch_array($tampil)){
                      $n = mysql_fetch_array(mysql_query("SELECT * FROM rb_nilai_uts where nisn='$r[nisn]' AND kodejdwl='$_GET[jdwl]' AND raport_bulan = '$_GET[bulan]'"));
                      $cekpredikat = mysql_num_rows(mysql_query("SELECT * FROM rb_predikat where kode_kelas='$_GET[id]'"));
                      if ($cekpredikat >= 1){
                        $grade1 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where ($n[angka_pengetahuan] >=nilai_a) AND ($n[angka_pengetahuan] <= nilai_b) AND kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]'"));
                        $grade2 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where ($n[angka_keterampilan] >=nilai_a) AND ($n[angka_keterampilan] <= nilai_b) AND kode_kelas='$_GET[id]' AND id_kls_pararel='$_GET[ie]'"));
                      }else{
                        $grade1 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where ($n[angka_pengetahuan] >=nilai_a) AND ($n[angka_pengetahuan] <= nilai_b) AND kode_kelas='0'"));
                        $grade2 = mysql_fetch_array(mysql_query("SELECT * FROM `rb_predikat` where ($n[angka_keterampilan] >=nilai_a) AND ($n[angka_keterampilan] <= nilai_b) AND kode_kelas='0'"));
                      }
                        echo "<tr>
                              <td>$no</td>
                              <td>$r[nisn]</td>
                              <td>$r[nama]</td>
                              <input type='hidden' name='nisn".$no."' value='$r[nisn]'>
                              <td align=center><input type='number' name='a".$no."' value='$n[angka_pengetahuan]' style='width:90px; text-align:center; padding:0px' placeholder='-'></td>
                                        <td align=center><input type='text' value='$grade1[grade]' style='width:90px; text-align:center; padding:0px' placeholder='-' disabled></td>
                                       
                            </tr>";
                      $no++;
                      }

                    echo "</tbody>
                  </table>
                </div>
                <div style='clear:both'></div>
                                <div class='box-footer'>
                                  <button type='submit' name='simpan' class='btn btn-info'>Simpan</button>
                                  <button type='reset' class='btn btn-default pull-right'>Cancel</button>
                                </div>
                </form>

            </div>";

}elseif($_GET[act]=='detailsiswa'){
cek_session_siswa();
    include "raport/raport_uts_halaman_siswa.php";
}
?>
<script type="text/javascript">
  function modalBulan(id) {
    $("."+id).attr("id","blnRaport"+id);
    $('#blnRaport'+id).datepicker({
      format: "mm-yyyy",
      viewMode: "months", 
      autoclose : true,
      minViewMode: "months"
    });
    $("#myModal"+id).modal("show");
  }
</script>
