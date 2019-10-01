<?php 
if ($_GET[act]==''){ 
cek_session_siswa();
?>
             <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Materi Computer Based Tes</h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='bahantugas'>
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
                    <input type="submit" style='margin-top:-4px' class='btn btn-success btn-sm' value='Lihat'>
                  </form>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th width='100px'>Kode</th>
                        <th>Jadwal Pelajaran</th>
                        <th width='90px'></th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET[tahun])){
                      $tampil = mysql_query("SELECT b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum FROM
                                        rb_mata_pelajaran b where b.tingkat='$_SESSION[kode_kelas]' ORDER BY b.urutan DESC");
                    
                    }else{
                      $tampil = mysql_query("SELECT b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum FROM rb_mata_pelajaran b where b.tingkat='$_SESSION[kode_kelas]' ORDER BY b.urutan DESC");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                            <td>$r[kode_pelajaran]</td>
                            <td>$r[namamatapelajaran]</td>
                            <td><a class='btn btn-success btn-xs' title='List Bahan dan Tugas' href='index.php?view=bahantugas&act=listbahantugas&kelas=$_SESSION[kode_kelas]&mapel=$r[kode_pelajaran]'><span class='glyphicon glyphicon-th'></span> Mulai Belajar</a></td>
                          </tr>";
                      $no++;
                      }
                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
                </div>
            </div>
<?php 
}elseif($_GET['act']=='listbahantugas'){
cek_session_siswa();
    $d = mysql_fetch_array(mysql_query("SELECT * FROM rb_kelas where kode_kelas='$_GET[kelas]'"));
    $m = mysql_fetch_array(mysql_query("SELECT * FROM rb_mata_pelajaran where kode_pelajaran='$_GET[mapel]'"));
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>List Upload Bahan dan Tugas</b></h3>";
                  if ($_SESSION['level']=='guru' OR $_SESSION['level']=='superuser'){
                    echo "<a class='pull-right btn btn-primary btn-sm' href='index.php?view=bahantugas&act=tambah&id=$_GET[id]&kd=$_GET[kd]'>Tambahkan Data</a>";
                  }
                echo "</div>
              <div class='box-body'>";
                  if (isset($_GET['sukses'])){
                      echo "<div class='alert alert-success alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Sukses!</strong> - Data telah Berhasil Di Proses,..
                          </div>";
                  }elseif(isset($_GET['gagal'])){
                      echo "<div class='alert alert-danger alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Gagal!</strong> - Data tidak Di Proses, terjadi kesalahan dengan data..
                          </div>";
                  }

              echo "<div class='col-md-12'>
              <table class='table table-condensed table-hover'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[kodekelas]'>
                    <tr><th width='120px' scope='row'>Kode Kelas</th> <td>$d[kode_kelas]</td></tr>
                    <tr><th scope='row'>Nama Kelas</th>               <td>$d[nama_kelas]</td></tr>
                    <tr><th scope='row'>Mata Pelajaran</th>           <td>$m[namamatapelajaran]</td></tr>
                  </tbody>
              </table>
              </div>

              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
              <input type='hidden' name='kelas' value='$_GET[id]'>
              <input type='hidden' name='pelajaran' value='$_GET[kd]'>
                <div class='col-md-12 table-responsive'>
                  <table class='table table-condensed table-bordered table-striped table-responsive'>
                      <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Nama Materi</th>";
                        if ($_SESSION['level']!='kepala'){
                          echo "<th width='80px'>Action</th>";
                        }
                      echo "</tr>
                    </thead>
                    <tbody>";
                    
                    $no = 1;
                    $tampil = mysql_query("SELECT * FROM rb_quiz_materi_kategori where kode_pelajaran='$_GET[mapel]' AND kode_kelas='$_GET[kelas]' ORDER BY id_materi_kategori");
                    while($r=mysql_fetch_array($tampil)){
                      echo "<tr style='background:#c3e6c3'>
                              <td>$no</td>
                              <td>$r[nama_kategori]</td>
                              <td></td>
                            </tr>";
                        $mpokok = mysql_query("SELECT * FROM rb_quiz_materi where id_materi_kategori='$r[id_materi_kategori]'");
                        while($row=mysql_fetch_array($mpokok)){
                          echo "<tr>
                                  <td>-</td>
                                  <td>$row[materi_pokok]</td>
                                  <td><a class='btn btn-info btn-xs' title='Lihat Soal' href='index.php?view=bahantugas&act=lihatmateridetail&mapel=$r[kode_pelajaran]&kelas=$_GET[kelas]&idm=$r[id_materi_kategori]&id_materi=$row[id_materi]'><span class='glyphicon glyphicon-book'></span> Materi</a></td>
                                </tr>";
                        }
                        $no++;
                      }

                      if (isset($_GET[hapus])){
                        mysql_query("DELETE FROM rb_elearning where id_elearning='$_GET[hapus]'");
                        echo "<script>document.location='index.php?view=bahantugas&act=listbahantugas&jdwl=".$_GET[jdwl]."&id=".$_GET[id]."&kd=".$_GET[kd]."';</script>";
                      }

                    echo "</tbody>
                  </table>
                </div>
              </div>
              </form>
            </div>";

}elseif($_GET['act']=='lihatmateridetail'){
  unset($_COOKIE['waktucookies']);
  $d = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_kategori, c.namamatapelajaran, d.kode_kelas, d.nama_kelas FROM `rb_quiz_materi` a 
                                      LEFT JOIN rb_quiz_materi_kategori b ON a.id_materi_kategori=b.id_materi_kategori 
                                        LEFT JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran
                                          LEFT JOIN rb_kelas d ON b.kode_kelas=d.kode_kelas where a.id_materi='$_GET[id_materi]'"));
  $m = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_materi_kategori b 
                                        LEFT JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran
                                          LEFT JOIN rb_kelas d ON b.kode_kelas=d.kode_kelas where b.id_materi_kategori='$_GET[idm]'"));
  $idm = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_materi_kategori where id_materi_kategori='$_GET[idm]'"));
  echo "<div class='col-xs-12'>  
    <div class='box'>
      <div class='box-header'>
        <h3 class='box-title'>List Materi Pembelajaran</h3>
      </div>
      <div class='box-body'>";

        if (isset($_GET['sukses'])){
          echo "<div class='alert alert-success alert-dismissible fade in' role='alert'> 
                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                <span aria-hidden='true'>×</span></button> <strong>Sukses!</strong> - Data telah Berhasil Di Proses,..
                </div>";
        }elseif(isset($_GET['gagal'])){
          echo "<div class='alert alert-danger alert-dismissible fade in' role='alert'> 
                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                <span aria-hidden='true'>×</span></button> <strong>Gagal!</strong> - Data tidak Di Proses, terjadi kesalahan dengan data..
                </div>";
        }

        echo "<div class='col-md-12 table-responsive'>
                <table class='table table-condensed table-hover'>
                    <tbody>
                      <tr><th width='120px' scope='row'>Kode Kelas</th> <td>$m[kode_kelas]</td></tr>
                      <tr><th scope='row'>Nama Kelas</th>           <td>$m[nama_kelas]</td></tr>
                      <tr><th scope='row'>Mata Pelajaran</th>           <td>$m[namamatapelajaran]</td></tr>
                      <tr><th scope='row'>Materi</th>           <td>$idm[nama_kategori]</td></tr>
                      <tr><th scope='row'>Materi Pokok</th>           <td><select class='form-control' style='display:inline-block; width:70%' onchange=\"document.location.href=this.value\">
                                                                        <option value=''>- Pilih -</option>";
                                                                      $topik_soal = mysql_query("SELECT * FROM rb_quiz_materi where id_materi_kategori='$_GET[idm]'");
                                                                      while ($k = mysql_fetch_array($topik_soal)){
                                                                        if ($_GET['id_materi']==$k['id_materi']){
                                                                          echo "<option value='index.php?view=bahantugas&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$k[id_materi]' selected>$k[materi_pokok]</option>";
                                                                        }else{
                                                                          echo "<option value='index.php?view=bahantugas&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$k[id_materi]'>$k[materi_pokok]</option>";
                                                                        }
                                                                      }
                                                                    echo "</select>"; 
                                                                    $jumlahsoal = mysql_num_rows(mysql_query("SELECT * FROM rb_bank_pertanyaan_objektif where id_materi='$_GET[id_materi]'"));
                                                                    if ($_GET['id_materi'] AND $jumlahsoal > 0){ echo " <a style='margin-top:-3px' class='btn btn btn-primary' href='bahan_tugas_mulai.php?id_materi=$_GET[id_materi]'><span class='fa fa-th-list'></span> Soal Latihan</a>"; } echo "</td></tr>
                    </tbody>
                </table>";
                if ($_GET['id_materi']){
                  if (trim($d['materi_content'])==''){
                    echo "<center style='padding:10%; color:red'><i>Maaf, Belum ada Data / Naskah untuk Materi ini...</i></center>";
                  }else{
                    echo "$d[materi_content]";
                  }
                }else{
                  echo "<center style='padding:10%; color:red'><i>Maaf, Silahkan Memilih materi pokok terlebih dahulu...</i></center>";
                }
              echo "</div>
      </div>
      </div>
  </div>";

}
?>