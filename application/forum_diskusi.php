<?php 
if ($_GET[act]==''){
cek_session_admin(); 
?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"><?php if (isset($_GET[kelas]) AND isset($_GET[tahun])){ echo "Jadwal Pelajaran"; }else{ echo "Jadwal Pelajaran Pada Tahun ".date('Y'); } ?></h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='forum'>
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
                            $kelas = mysql_query("SELECT * FROM rb_kelas");
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
                <div class="box-body">
                  <table id="example" class="table table-bordered table-striped">
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
                        <th>Total</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET[kelas]) AND isset($_GET[tahun])){
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas,m.nm_pararel, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                  JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                                                  JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel 
                                                  where a.kode_kelas='$_GET[kelas]' 
                                                    AND a.id_tahun_akademik='$_GET[tahun]' 
                                                      AND b.kode_kurikulum='$kurikulum[kode_kurikulum]' ORDER BY a.hari DESC");
                    
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $total = mysql_num_rows(mysql_query("SELECT * FROM rb_forum_topic where kodejdwl='$r[kodejdwl]'"));
                    echo "<tr><td>$no</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[nm_pararel]</td>
                              <td>$r[nama_guru]</td>
                              <td>$r[hari]</td>
                              <td>$r[jam_mulai]</td>
                              <td>$r[jam_selesai]</td>
                              <td>$r[nama_ruangan]</td>
                              <td style='color:red'>$total Record</td>";
                        echo "<td style='width:70px !important'><center>
                                <a class='btn btn-success btn-xs' title='Masuk Forum Diskusi' href='index.php?view=forum&act=list&jdwl=$r[kodejdwl]&kd=$r[kode_pelajaran]&id=$r[kode_kelas]&ie=$r[id_kls_pararel]'><span class='glyphicon glyphicon-th-list'></span> Masuk Forum Diskusi</a>
                              </center></td>";
                            echo "</tr>";
                      $no++;
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
}elseif($_GET[act]=='list'){
cek_session_siswa();
    $d = mysql_fetch_array(mysql_query("SELECT * FROM rb_kelas where kode_kelas='$_GET[id]'"));
    $e = mysql_fetch_array(mysql_query("SELECT * FROM rb_kls_pararel where id_kls_pararel='$_GET[ie]'"));
    $m = mysql_fetch_array(mysql_query("SELECT * FROM rb_mata_pelajaran where kode_pelajaran='$_GET[kd]'"));
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Daftar Topic Forum Diskusi</b></h3>";
                  if ($_SESSION[level]!='siswa' AND $_SESSION[level]!='kepala'){
                    echo "<a class='pull-right btn btn-primary btn-sm' href='index.php?view=forum&act=tambah&jdwl=$_GET[jdwl]&id=$_GET[id]&kd=$_GET[kd]&ie=$_GET[ie]'>Buat Topic Baru</a>";
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
                    <tr><th scope='row'>Nama Kelas pararel</th>       <td>$e[nm_pararel]</td></tr>
                    <tr><th scope='row'>Mata Pelajaran</th>           <td>$m[namamatapelajaran]</td></tr>
                  </tbody>
              </table>
              </div>

                <div class='col-md-12'>
                  <table id='example1' class='table table-condensed table-bordered table-striped'>
                      <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Judul Topic</th>
                        <th>Komentar</th>
                        <th>Waktu Posting</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>";
                    
                    $no = 1;
                    $tampil = mysql_query("SELECT * FROM rb_forum_topic where kodejdwl='$_GET[jdwl]' ORDER BY id_forum_topic DESC");
                    while($r=mysql_fetch_array($tampil)){
                    $ko = mysql_fetch_array(mysql_query("SELECT count(*) as total FROM rb_forum_komentar where id_forum_topic='$r[id_forum_topic]'"));
                    echo "<tr>
                            <td>$no</td>
                            <td style='color:red'>$r[judul_topic]</td>
                            <td>$ko[total] Balasan</td>
                            <td>$r[waktu] WIB</td>";
                            if ($_SESSION[level]=='siswa' OR $_SESSION[level]=='kepala'){
                              echo "<td style='width:100px'><a class='btn btn-success btn-xs' title='Lihat Detail' href='index.php?view=forum&act=detailtopic&jdwl=$_GET[jdwl]&idtopic=$r[id_forum_topic]&id=$_GET[id]&kd=$_GET[kd]'><span class='glyphicon glyphicon-th-list'></span> Lihat Balasan</a></td>";
                            }else{
                              echo "<td style='width:140px'><a class='btn btn-success btn-xs' title='Lihat Detail' href='index.php?view=forum&act=detailtopic&jdwl=$_GET[jdwl]&idtopic=$r[id_forum_topic]&id=$_GET[id]&kd=$_GET[kd]'><span class='glyphicon glyphicon-th-list'></span> Lihat Balasan</a>
                                  <a class='btn btn-danger btn-xs' title='Delete Topic' href='index.php?view=forum&act=list&jdwl=$_GET[jdwl]&id=$_GET[id]&ie=$_GET[ie]&kd=$_GET[kd]&hapus=$r[id_forum_topic]' onclick=\"return confirm('Apakah anda Yakin Data ini Dihapus?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              
                </td>";
                            }

                          echo "</tr>";
                      $no++;
                      }

                      if (isset($_GET[hapus])){
                        mysql_query("DELETE FROM rb_quiz_ujian where id_quiz_ujian='$_GET[hapus]'");
                        echo "<script>document.location='index.php?view=forum&act=list&jdwl=".$_GET[jdwl]."&id=".$_GET[id]."&ie=".$_GET[ie]."&kd=".$_GET[kd]."';</script>";
                      }

                    echo "</tbody>
                  </table>
                </div>
              </div>
              </form>
            </div>";

}elseif($_GET[act]=='tambah'){
cek_session_guru();
  if (isset($_POST[tambah])){
    $waktu = date("Y-m-d H:i:s");
    $query = mysql_query("INSERT INTO rb_forum_topic VALUES ('','$_GET[jdwl]','$_POST[a]','$_POST[b]','$waktu')");
        if ($query){
          echo "<script>document.location='index.php?view=forum&act=list&jdwl=".$_GET[jdwl]."&id=".$_GET[id]."&ie=".$_GET[ie]."&kd=".$_GET[kd]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=forum&act=list&jdwl=".$_GET[jdwl]."&id=".$_GET[id]."&ie=".$_GET[ie]."&kd=".$_GET[kd]."&gagal';</script>";
        } 
  }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambahkan Topic Baru</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='120px' scope='row'>Judul Topic</th>    <td><input type='text' class='form-control' name='a'></td></tr>
                    <tr><th scope='row'>Isi Topic</th>      <td><textarea class='form-control' rows='10' name='b'></textarea></td></tr>
                  </tbody>
                  </table>
                </div>
                
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=forum'><button class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";

}elseif($_GET[act]=='detailtopic'){
cek_session_siswa();
  $topic = mysql_fetch_array(mysql_query("SELECT * FROM rb_forum_topic a 
              JOIN rb_jadwal_pelajaran b ON a.kodejdwl=b.kodejdwl
                JOIN rb_guru c ON b.nip=c.nip where a.id_forum_topic='$_GET[idtopic]'"));

  if (isset($_GET[deletetopic])){
      mysql_query("DELETE FROM rb_forum_topic where id_forum_topic='$_GET[idtopic]'");
      echo "<script>document.location='index.php?view=forum&act=detailtopic&jdwl=".$_GET[jdwl]."&idtopic=".$_GET[idtopic]."&id=".$_GET[id]."&kd=".$_GET[kd]."';</script>";
  }

  if (isset($_GET[deletekomentar])){
      mysql_query("DELETE FROM rb_forum_komentar where id_forum_komentar='$_GET[deletekomentar]' AND id_forum_topic='$_GET[idtopic]'");
      echo "<script>document.location='index.php?view=forum&act=detailtopic&jdwl=".$_GET[jdwl]."&idtopic=".$_GET[idtopic]."&id=".$_GET[id]."&kd=".$_GET[kd]."';</script>";
  }

    echo "<div class='col-md-12'>
              <div class='box box-success'>
                <div class='box-header'>
                  <i class='fa fa-comments-o'></i>
                  <h3 class='box-title'>Topic Forum - $topic[judul_topic] </h3> 
                  <a href='index.php?view=forum&act=detailtopic&jdwl=$_GET[jdwl]&idtopic=$_GET[idtopic]&id=$_GET[id]&kd=$_GET[kd]&deletetopic' onclick=\"return confirm('Apakah anda Yakin Data ini Dihapus?')\"><i class='fa fa-remove pull-right'></i></a>
                </div>
                <div class='box-body chat' id='chat-box'>";

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

                  echo "<div class='item'>";
                  if (trim($topic[foto])==''){
                    echo "<img src='foto_siswa/no-image.jpg' alt='user image' class='online'>";
                  }else{
                    echo "<img src='foto_pegawai/$topic[foto]' alt='user image' class='online'>";
                  }
                    echo "<p class='message'>
                      <a href='index.php?view=guru&act=detailguru&id=$topic[nip]' class='name'>
                        <small class='text-muted pull-right'><i class='fa fa-clock-o'></i> $topic[waktu] WIB</small>
                        $topic[nama_guru] (Guru)
                      </a>
                      $topic[isi_topic]</p>
                  </div>
              </div>
          </div>

          <div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-body chat' id='chat-box'>";
                $komentar = mysql_query("SELECT * FROM rb_forum_komentar a 
                              LEFT JOIN rb_siswa b ON a.nisn_nip=b.nisn
                                where a.id_forum_topic='$_GET[idtopic]' 
                                  ORDER BY a.id_forum_komentar ASC");
                while ($k = mysql_fetch_array($komentar)){
                    if ($k[nama]==''){
                        echo "<div class='item'>";
                          if (trim($topic[foto])==''){
                            echo "<img src='foto_siswa/no-image.jpg' alt='user image' class='online'>";
                          }else{
                            echo "<img src='foto_pegawai/$topic[foto]' alt='user image' class='online'>";
                          }
                          echo "<p class='message'><small class='text-muted'>
                                <a href='index.php?view=forum&act=detailtopic&jdwl=$_GET[jdwl]&idtopic=$_GET[idtopic]&id=$_GET[id]&kd=$_GET[kd]&deletekomentar=$k[id_forum_komentar]' onclick=\"return confirm('Apakah anda Yakin Data ini Dihapus?')\"><i class='fa fa-remove pull-right'></i></a> <i class='fa fa-clock-o'></i> $k[waktu_komentar] WIB </small>
                                <a href='#' class='name'>$topic[nama_guru] (Guru)</a> $k[isi_komentar]</p>
                        </div>";
                    }else{
                        echo "<div class='item'>";
                          if (trim($k[foto])==''){
                            echo "<img src='foto_siswa/no-image.jpg' alt='user image' class='offline'>";
                          }else{
                            echo "<img src='foto_siswa/$k[foto]' alt='user image' class='offline'>";
                          }
                          echo "<p class='message'><small class='text-muted'>
                                <a href='index.php?view=forum&act=detailtopic&jdwl=$_GET[jdwl]&idtopic=$_GET[idtopic]&id=$_GET[id]&kd=$_GET[kd]&deletekomentar=$k[id_forum_komentar]'><i class='fa fa-remove pull-right'></i></a> <i class='fa fa-clock-o'></i> $k[waktu_komentar] WIB</small> 
                                <a href='#' class='name'>$k[nama] (Siswa)</a>$k[isi_komentar]</p>
                        </div>";
                    }
                }
                
                echo "</div>
                <form action='' method='POST'>
                <div class='box-footer'>
                  <div class='input-group'>
                    <input class='form-control' name='a' placeholder='Tuliskan Komentar...'>
                    <div class='input-group-btn'>
                      <button type='submit' name='komentar' class='btn btn-success'><i class='fa fa-send'></i></button>
                    </div>
                  </div>
                </div>
                </form>
              </div>
          </div>";

          if (isset($_POST[komentar])){
              $waktu = date("Y-m-d H:i:s");
              $query = mysql_query("INSERT INTO rb_forum_komentar VALUES('','$_GET[idtopic]','$_SESSION[id]','$_POST[a]','$waktu')");
              if ($query){
                echo "<script>document.location='index.php?view=forum&act=detailtopic&jdwl=".$_GET[jdwl]."&idtopic=".$_GET[idtopic]."&id=".$_GET[id]."&kd=".$_GET[kd]."&sukses';</script>";
              }else{
                echo "<script>document.location='index.php?view=forum&act=detailtopic&jdwl=".$_GET[jdwl]."&idtopic=".$_GET[idtopic]."&id=".$_GET[id]."&kd=".$_GET[kd]."&gagal';</script>";
              }
          }
}elseif($_GET[act]=='detailguru'){
cek_session_guru(); 
?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"><?php echo "Forum Diskusi pada $tahunakademik[id_tahun_akademik]" ; ?></h3>
                 <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='forum'>
                    <input type="hidden" name='act' value='detailguru'>
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

                </div>
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
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
                        <th>Semester</th>
                        <th>Total</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET[tahun])){
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas, m.nm_pararel, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                  JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                                                  JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel 
                                                  where a.nip='$_SESSION[id]' 
                                                    AND a.id_tahun_akademik='$_GET[tahun]' 
                                                       ORDER BY a.hari DESC");
                    
                    }else{
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas,m.nm_pararel, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
												JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel
                                                  where a.nip='$_SESSION[id]'
                                                    
                                                      AND a.id_tahun_akademik='$tahunakademik[id_tahun_akademik]' ORDER BY a.hari DESC");
                    
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $total = mysql_num_rows(mysql_query("SELECT * FROM rb_forum_topic where kodejdwl='$r[kodejdwl]'"));

                    echo "<tr><td>$no</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[nm_pararel]</td>
                              <td>$r[nama_guru]</td>
                              <td>$r[hari]</td>
                              <td>$r[jam_mulai]</td>
                              <td>$r[jam_selesai]</td>
                              <td>$r[nama_ruangan]</td>
                              <td>$r[id_tahun_akademik]</td>
                              <td style='color:red'>$total Record</td>
                              <td><a class='btn btn-success btn-xs' title='List Forum Diskusi' href='index.php?view=forum&act=list&jdwl=$r[kodejdwl]&id=$r[kode_kelas]&kd=$r[kode_pelajaran]&ie=$r[id_kls_pararel]'><span class='glyphicon glyphicon-th-list'></span> Tampilkan</a></td>
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
}elseif($_GET[act]=='detailsiswa'){
cek_session_siswa(); 
?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"><?php if (isset($_GET[kelas]) AND isset($_GET[tahun])){ echo "Forum Diskusi"; }else{ echo "Forum Diskusi ".date('Y'); } ?></h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='forum'>
                    <input type="hidden" name='act' value='detailsiswa'>
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
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Kode</th>
                        <th>Jadwal Pelajaran</th>
                        <th>Kelas</th>
                        <th>Kelas Pararel</th>
                        <th>Guru</th>
                        <th>Hari</th>
                        <th>Mulai</th>
                        <th>Selesai</th>
                        <th>Ruangan</th>
                        <th>Semester</th>
                        <th>Total</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                     if (isset($_GET[tahun])){
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas, m.nm_pararel, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                  JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                                                  JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel 
                                                  where a.id_kls_pararel ='$_SESSION[id_kls_pararel]'
                                                    AND a.id_tahun_akademik='$_GET[tahun]' 
                                                       ORDER BY a.hari DESC");
                    
                  /*  }else{
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas,m.nm_pararel, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
												JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel
                                                  where a.nisn='$_SESSION[id]'
                                                    
                                                      AND a.id_tahun_akademik='$tahunakademik[id_tahun_akademik]' ORDER BY a.hari DESC");*/
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $total = mysql_num_rows(mysql_query("SELECT * FROM rb_forum_topic where kodejdwl='$r[kodejdwl]'"));
                    echo "<tr><td>$no</td>
                              <td>$r[kode_pelajaran]</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[nm_pararel]</td>
                              <td>$r[nama_guru]</td>
                              <td>$r[hari]</td>
                              <td>$r[jam_mulai]</td>
                              <td>$r[jam_selesai]</td>
                              <td>$r[nama_ruangan]</td>
                              <td>$r[id_tahun_akademik]</td>
                              <td style='color:red'>$total Record</td>
                              <td><a class='btn btn-success btn-xs' title='Masuk Forum Diskusi' href='index.php?view=forum&act=list&jdwl=$r[kodejdwl]&id=$r[kode_kelas]&kd=$r[kode_pelajaran]&ie=$r[id_kls_pararel]'><span class='glyphicon glyphicon-th-list'></span> Tampilkan</a></td>
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
}
?>