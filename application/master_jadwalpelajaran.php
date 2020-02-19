<?php if ($_GET[act]==''){ ?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"><?php if (isset($_GET[kelas]) AND isset($_GET[tahun])){ echo "Jadwal Pelajaran"; }else{ echo "Jadwal Pelajaran Pada Tahun ".date('Y'); } ?></h3>
                  <?php if($_SESSION[level]!='kepala'){ 
                    if (isset($_GET[tahun]) AND isset($_GET[kelas])){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=jadwalpelajaran&act=tambah&tahun=<?php echo $_GET[tahun]; ?>&kelas=<?php echo $_GET[kelas]; ?>'>Tambahkan Jadwal Pelajaran</a>
                    <button style='margin-top:-3px; margin-right:5px' class='btn btn-success pull-right' data-toggle='modal' data-target='#importJadwal'><span class='fa fa-file'></span> Import</button>
                  
                  
                  <?php }} ?>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='jadwalpelajaran'>
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
                            }else if($_SESSION[unit]=="SMA PUTRA"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                            }else if ($_SESSION[unit]=="SMP PUTRI"){
                                 $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII SMP','VIII SMP','IX SMP') ");
                            }else if($_SESSION[unit]=="SMA PUTRI"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X.IPA','XI.IPA','XI.IPS') ");
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
                <?php 
                      if($_GET[status]=='sukses'){
                     echo'<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data berhasil di import</div>';
                    }else if($_GET[status]=='gagal'){
                      echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data Gagal di import</div>';
                    }
                    ?>
                <div class="box-body" style="overflow: auto;">
 		 <table id="dataGuru" class="table table-bordered table-striped">

                <?php 
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
                ?>
                  
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Kode Jadwal</th>
                        <th>Kode Mapel</th>
                        <th>Jadwal Pelajaran</th>
                        <th>Kelas</th>
                        <th>Kelas Pararel</th>
                        <th>Guru</th>
                        <th>Hari</th>
                        <th>Mulai</th>
                        <th>Selesai</th>
                        <th>Ruangan</th>
                        <th>KKM</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th>Daftar Hadir</th>
                        <?php }
                        if($_SESSION[level]!='kepala'){ ?>
                        <th>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET[kelas]) AND isset($_GET[tahun])){
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas, m.nm_pararel, b.namamatapelajaran, b.kode_kurikulum, b.kode_pelajaran, b.kkm, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                  JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                           JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel
                           where a.kode_kelas='$_GET[kelas]' AND 
                               a.id_tahun_akademik='$_GET[tahun]' ORDER BY a.hari DESC");
                    
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[kodejdwl]</td>
                              <td>$r[kode_pelajaran]</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[nm_pararel]</td>
                              <td>$r[nama_guru]</td>
                              <td>$r[hari]</td>
                              <td>$r[jam_mulai]</td>
                              <td>$r[jam_selesai]</td>
                              <td>$r[nama_ruangan]</td>
                              <td>$r[kkm]</td>";
                              if($_SESSION[level]!='kepala'){
                                  echo "<td><a class='btn btn-xs btn-warning' href='index.php?view=absensiswa&act=tampilabsen&id=$r[kode_kelas]&kd=$r[kode_pelajaran]&ie=$r[id_kls_pararel]&jdwl=$r[kodejdwl]'>Buka Absensi Siswa</a></td>";
                              }
                              if($_SESSION[level]!='kepala'){
                                echo "<td style='width:70px !important'><center>
                                        <a class='btn btn-success btn-xs' title='Edit Jadwal' href='index.php?view=jadwalpelajaran&act=edit&id=$r[kodejdwl]&kelas=$r[kode_kelas]&kelasp=$r[id_kls_pararel]'><span class='glyphicon glyphicon-edit'></span></a>
                                        <a class='btn btn-danger btn-xs' title='Hapus Jadwal' href='index.php?view=jadwalpelajaran&hapus=$r[kodejdwl]' onclick=\"return confirm('Apakah anda Yakin Data ini Dihapus?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                      </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }

                      if (isset($_GET[hapus])){
                        mysql_query("DELETE FROM rb_jadwal_pelajaran where kodejdwl='$_GET[hapus]'");
                        echo "<script>document.location='index.php?view=jadwalpelajaran';</script>";
                      }
                  ?>
                    <tbody>
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
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
        $query = mysql_query("INSERT INTO rb_jadwal_pelajaran VALUES('','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[f]','$_POST[g]','$_POST[h]','$_POST[i]','$_POST[j]','$_POST[k]','$_POST[l]')");
        if ($query){
          echo "<script>document.location='index.php?view=jadwalpelajaran&tahun=$_POST[a]&kelas=$_POST[b]&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=jadwalpelajaran&tahun=$_POST[a]&kelas=$_POST[b]&gagal';</script>";
        }
    }

    $ex = explode('.',$_GET[kelas]);
    $tingkat = $ex[0];

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Jadwal Pelajaran</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th style='width:120px' scope='row'>Tahun Akademik</th>   <td><select class='form-control' name='a'> 
                                                <option value='0' selected>- Pilih Tahun Akademik -</option>"; 
                                                $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                                                while($a = mysql_fetch_array($tahun)){
                                                  if ($_GET[tahun]==$a[id_tahun_akademik]){
                                                    echo "<option value='$a[id_tahun_akademik]' selected>$a[nama_tahun]</option>";
                                                  }else{
                                                    echo "<option value='$a[id_tahun_akademik]'>$a[nama_tahun]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Kelas</th>   <td><select class='form-control' name='b'> 
                                                <option value='0' selected>- Pilih Kelas -</option>"; 
                                                if ($_SESSION[unit]=="SMP PUTRA") {
                                                  $kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('VII','VIII','IX')");
                                                }elseif ($_SESSION[unit]=="SMA PUTRA") {
                                                  $kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('X','XI','XII')");
                                                 }else if ($_SESSION[unit]=="SMP PUTRI"){
                                                   $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII SMP','VIII SMP','IX SMP') "); 
                                                }elseif ($_SESSION[unit]=="SMA PUTRI") {
                                                  $kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('X.IPA','XI.IPA','XI.IPS')");  
                                                }else{
                                                  $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                }
                                                
                                                while($a = mysql_fetch_array($kelas)){
                                                  if ($_GET[kelas]==$a[kode_kelas]){
                                                    echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                  }else{
                                                    echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
           <tr><th scope='row'>Kelas Pararel</th>   <td><select class='form-control' name='c'> 
                                                <option value='0' selected>- Pilih Kelas -</option>"; 
                                                if ($_SESSION[unit]=="SMP PUTRA") {
                                                  $kelasp = mysql_query("SELECT * FROM rb_kls_pararel WHERE kode_kelas IN ('VII','VIII','IX')");
                                                }elseif ($_SESSION[unit]=="SMA PUTRA") {
                                                  $kelasp = mysql_query("SELECT * FROM rb_kls_pararel WHERE kode_kelas IN ('X','XI','XII')");
                                                }elseif ($_SESSION[unit]=="SMP PUTRI") {
                                                  $kelasp = mysql_query("SELECT * FROM rb_kls_pararel WHERE kode_kelas IN ('VII SMP','VIII SMP','IX SMP')"); 
                                                }elseif ($_SESSION[unit]=="SMA PUTRI") {
                                                  $kelasp = mysql_query("SELECT * FROM rb_kls_pararel WHERE kode_kelas IN ('X.IPA','XI.IPA','XI.IPS')"); 
                                                }else{
                                                  $kelasp = mysql_query("SELECT * FROM rb_kls_pararel");
                                                }
                                                
                                                while($a = mysql_fetch_array($kelasp)){
                                                  if ($_GET[kelasp]==$a[id_kls_pararel]){
                                                    echo "<option value='$a[id_kls_pararel]' selected>$a[nm_pararel]</option>";
                                                  }else{
                                                    echo "<option value='$a[id_kls_pararel]'>$a[nm_pararel]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Mata Pelajaran</th>   <td><select class='form-control' name='d'> 
                                                <option value='0' selected>- Pilih Mata Pelajaran -</option>"; 
                                                if ($_SESSION[unit]=="SMP PUTRA") {
                                                  $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran WHERE tingkat='$_GET[kelas]' ORDER BY namamatapelajaran ASC");
                                                }else if($_SESSION[unit]=="SMA PUTRA"){
                                                   $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran WHERE tingkat='$_GET[kelas]' ORDER BY namamatapelajaran ASC");
                                                 }else if($_SESSION[unit]=="SMP PUTRI"){
                                                   $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran WHERE tingkat='$_GET[kelas]' ORDER BY namamatapelajaran ASC");  
                                                }else if ($_SESSION[unit]=="SMA PUTRI"){
                                                    $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran WHERE tingkat in ('X SMA','XI SMA')ORDER BY namamatapelajaran ASC"); 
                                                }else{   
                                                  $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran  ORDER BY namamatapelajaran ASC");
                                                }
                                                
                                                while($a = mysql_fetch_array($mapel)){
                                                  echo "<option value='$a[kode_pelajaran]'>$a[kode_pelajaran] - $a[namamatapelajaran]</option>";
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Ruangan</th>   <td><select class='form-control' name='e'> 
                                                <option value='0' selected>- Pilih Ruangan -</option>"; 
                                                $ruangan = mysql_query("SELECT * FROM rb_ruangan a JOIN rb_gedung b ON a.kode_gedung=b.kode_gedung");
                                                while($a = mysql_fetch_array($ruangan)){
                                                  echo "<option value='$a[kode_ruangan]'>$a[nama_gedung] - $a[nama_ruangan]</option>";
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Guru</th>   <td><select class='form-control' name='f'> 
                                                <option value='0' selected>- Pilih Guru -</option>"; 
                                                $guru = mysql_query("SELECT * FROM rb_guru /*WHERE unit = '$_SESSION[unit]' */ORDER BY nama_guru ASC");
                                                while($a = mysql_fetch_array($guru)){
                                                  echo "<option value='$a[nip]'>$a[nama_guru]</option>";
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Jadwal Paralel</th>  <td><input type='text' class='form-control' name='g'></td></tr>
                    <tr><th scope='row'>Jadwal Serial</th>  <td><input type='text' class='form-control' name='h'></td></tr>
          <div class='bootstrap-timepicker'>
          <th scope='row'>Jam Mulai</th><td><input type='text' class='form-control' id='jamMulaiJdwl'  name='i'  placeholder='hh:ii:ss' value='00:00:00'></tr>
           </div>
                    <tr><th scope='row'>Jam Selesai</th><td><input type='text' class='form-control timepicker' name='j' placeholder='hh:ii:ss' value='00:00:00' id='jamSelesaiJdwl'></td></tr></div>
                    <tr><th scope='row'>Hari</th>  <td><select class='form-control' name='k'>
                                                <option value='0' selected>- Pilih Hari -</option>
                                                <option value='Senin'>Senin</option>
                                                <option value='Selasa'>Selasa</option>
                                                <option value='Rabu'>Rabu</option>
                                                <option value='Kamis'>Kamis</option>
                                                <option value='Jumat'>Jumat</option>
                                                <option value='Sabtu'>Sabtu</option>
                                                <option value='Minggu'>Minggu</option>
                    </td></tr>
                    </div>
                    <tr><th scope='row'>Aktif</th>                <td><input type='radio' name='l' value='Ya' checked> Ya
                                                                             <input type='radio' name='l' value='Tidak'> Tidak
                    </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=kelas' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='edit'){
    if (isset($_POST[update])){
        $query = mysql_query("UPDATE rb_jadwal_pelajaran SET id_tahun_akademik = '$_POST[a]',
                                                    kode_kelas = '$_POST[b]',
                          id_kls_pararel = '$_POST[c]',
                                                    kode_pelajaran = '$_POST[d]',
                                                    kode_ruangan = '$_POST[e]',
                                                    nip = '$_POST[f]',
                                                    paralel = '$_POST[g]',
                                                    jadwal_serial = '$_POST[h]',
                                                    jam_mulai = '$_POST[i]',
                                                    jam_selesai = '$_POST[j]',
                                                    hari = '$_POST[k]',
                                                    aktif = '$_POST[l]' where kodejdwl='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=jadwalpelajaran&tahun=$_POST[a]&kelas=$_POST[b]&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=jadwalpelajaran&tahun=$_POST[a]&kelas=$_POST[b]&gagal';</script>";
        }
    }
    
    $e = mysql_fetch_array(mysql_query("SELECT * FROM rb_jadwal_pelajaran where kodejdwl='$_GET[id]'"));
    $ex = explode('.',$e[kode_kelas]);
    $tingkat = $ex[0];
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Jadwal Pelajaran</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                  <input type='hidden' name='id' value='$_GET[id]'>
                    <tr><th style='width:120px' scope='row'>Tahun Akademik</th>   <td><select class='form-control' name='a'> 
                                                <option value='0' selected>- Pilih Tahun Akademik -</option>"; 
                                                $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                                                while($a = mysql_fetch_array($tahun)){
                                                  if ($e[id_tahun_akademik]==$a[id_tahun_akademik]){
                                                    echo "<option value='$a[id_tahun_akademik]' selected>$a[nama_tahun]</option>";
                                                  }else{
                                                    echo "<option value='$a[id_tahun_akademik]'>$a[nama_tahun]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Kelas</th>   <td><select class='form-control' name='b'>"; 
                                                $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                while($a = mysql_fetch_array($kelas)){
                                                  if ($e[kode_kelas]==$a[kode_kelas]){
                                                    echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                  }else{
                                                    echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
           <tr><th scope='row'>Kelas Pararel</th>   <td><select class='form-control' name='c'> 
                                                <option value='0' selected>- Pilih Kelas -</option>"; 
                                                $kelasp = mysql_query("SELECT * FROM rb_kls_pararel");
                                                while($a = mysql_fetch_array($kelasp)){
                                                  if ($_GET[kelasp]==$a[id_kls_pararel]){
                                                    echo "<option value='$a[id_kls_pararel]' selected>$a[nm_pararel]</option>";
                                                  }else{
                                                    echo "<option value='$a[id_kls_pararel]'>$a[nm_pararel]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Mata Pelajaran</th>   <td><select class='form-control' name='d'> 
                                                <option value='0' selected>- Pilih Mata Pelajaran -</option>"; 
                                                $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran where tingkat='$tingkat'");
                                                while($a = mysql_fetch_array($mapel)){
                                                  if ($e[kode_pelajaran]==$a[kode_pelajaran]){
                                                    echo "<option value='$a[kode_pelajaran]' selected>$a[kode_pelajaran] - $a[namamatapelajaran]</option>";
                                                  }else{
                                                    echo "<option value='$a[kode_pelajaran]'>$a[kode_pelajaran] - $a[namamatapelajaran]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Ruangan</th>   <td><select class='form-control' name='e'> 
                                                <option value='0' selected>- Pilih Ruangan -</option>"; 
                                                $ruangan = mysql_query("SELECT * FROM rb_ruangan a JOIN rb_gedung b ON a.kode_gedung=b.kode_gedung");
                                                while($a = mysql_fetch_array($ruangan)){
                                                  if ($e[kode_ruangan]==$a[kode_ruangan]){
                                                    echo "<option value='$a[kode_ruangan]' selected>$a[nama_gedung] - $a[nama_ruangan]</option>";
                                                  }else{
                                                    echo "<option value='$a[kode_ruangan]'>$a[nama_gedung] - $a[nama_ruangan]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Guru</th>   <td><select class='form-control' name='f'> 
                                                <option value='0' selected>- Pilih Guru -</option>"; 
                                                $guru = mysql_query("SELECT * FROM rb_guru");
                                                while($a = mysql_fetch_array($guru)){
                                                  if ($e[nip]==$a[nip]){
                                                    echo "<option value='$a[nip]' selected>$a[nama_guru]</option>";
                                                  }else{
                                                    echo "<option value='$a[nip]'>$a[nama_guru]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Jadwal Paralel</th>  <td><input type='text' class='form-control' name='g' value='$e[paralel]'></td></tr>
                    <tr><th scope='row'>Jadwal Serial</th>  <td><input type='text' class='form-control' name='h' value='$e[jadwal_serial]'></td></tr>
                    <tr><th scope='row'>Jam Mulai</th>  <td><input type='text' class='form-control' name='i' placeholder='hh:ii:ss' value='$e[jam_mulai]'></td></tr>
                    <tr><th scope='row'>Jam Selesai</th><td><input type='text' class='form-control' name='j' placeholder='hh:ii:ss' value='$e[jam_selesai]'></td></tr>
                    <tr><th scope='row'>Hari</th>  <td><select class='form-control' name='k'>
                                                <option value='$e[hari]' selected>$e[hari]</option>
                                                <option value='Senin'>Senin</option>
                                                <option value='Selasa'>Selasa</option>
                                                <option value='Rabu'>Rabu</option>
                                                <option value='Kamis'>Kamis</option>
                                                <option value='Jumat'>Jumat</option>
                                                <option value='Sabtu'>Sabtu</option>
                                                <option value='Minggu'>Minggu</option>
                    </td></tr>
                    <tr><th scope='row'>Aktif</th>                <td>";
                                                                  if ($e[aktif]=='Ya'){
                                                                      echo "<input type='radio' name='l' value='Ya' checked> Ya
                                                                             <input type='radio' name='l' value='Tidak'> Tidak";
                                                                  }else{
                                                                      echo "<input type='radio' name='l' value='Ya'> Ya
                                                                             <input type='radio' name='l' value='Tidak' checked> Tidak";
                                                                  }
                  echo "</td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=kelas' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>
      
      ";
      
} 
?>


<div class='modal fade bs-example-modal-lg' id='importJadwal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'  aria-hidden='true'>
  <div class='modal-dialog modal-lg'>
    <div class='modal-content'>
      <div class='modal-header'>
        <button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>
        <h5 class='modal-title' id='myModalLabel'>Import Jadwal Pelajaran</h5>
      </div>
    <div class='modal-body'> 
     <section id='main-content'>
      <div class='row mt'>
        <div class='col-lg-12'>
          <div class='panel panel-success'>
            <div class='panel-heading'>
                <h3 class='panel-title'><i class='fa fa-user'></i> Form Jadwal Pelajaran</h3> 
             </div>
           <div class='panel-body'>
            <div class='alert alert-info alert-dismissable'><button type='button'  class='close'    data-dismiss='alert' aria-hidden='true'>&times;</button><h4>Pastikan Extensi File Excel yang digunakan excel 2003 (.xls) untuk format excel anda bisa download dibawah ini</a></h4></div>
            <div style='padding: 0 15px;'>
            <?php  
             
         echo " <form action='index.php?view=importJadwal&tahun=".$_GET[tahun]."&kelas=".$_GET[kelas]."' method='post' enctype='multipart/form-data'>
              <a href='import_data/format_jadwal.xls'class='btn btn-default'>
               <span class='glyphicon glyphicon-download'></span>
                Download Format
              </a>

              <input type='file' id='fileJadwal' name='fileJadwal' class='pull-left' accept='.xls,.xlsx'>           
                <button type='submit' name='importjadwal' class='btn btn-success btn-sm'>
                <span class='glyphicon glyphicon-eye-open'></span> IMPORT
                </button>

               </form>
              </div>
            </div>
          </div>
          </section>
        </div>";?>
