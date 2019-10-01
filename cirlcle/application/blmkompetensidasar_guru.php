<?php if ($_GET[act]==''){ ?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title"><?php echo "Data Komptensi Dasar pada $tahunakademik[id_tahun_akademik]" ; ?></h3>
                 <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='kompetensidasar'>
                    <select name='tingkat' style='padding:4px'>
                        <option value='0' selected>- Pilih Tingkat -</option>
                        <?php 
                          $tingkat = array('VII','VIII','IX','X','XI','XII');
                          for ($i = 0; $i <= 4; $i++){
                            if ($_GET[tingkat]==$tingkat[$i]){
                              echo "<option value='".$tingkat[$i]."' selected>Kelas ".$tingkat[$i]."</option>";
                            }else{
                              echo "<option value='".$tingkat[$i]."'>Kelas ".$tingkat[$i]."</option>";
                            }
                          }
                        ?>   
                    </select>
                    <input type="submit" style='margin-top:-4px' class='btn btn-success btn-sm' value='Lihat'>
                  </form>
                 <div class="box-body">
                  <table id="example2" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Kode Mapel</th>
                        <th>Nama Mapel</th>
                        <th>Nama Jurusan</th>
                        <?php
                        if($_SESSION[level]!='kepala'){ ?>
                        <th>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET[tingkat])){
                      $tampil = mysql_query("SELECT * FROM rb_mata_pelajaran a LEFT JOIN rb_jurusan b ON a.kode_jurusan=b.kode_jurusan where a.tingkat='$_GET[tingkat]'");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[kode_pelajaran]</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_jurusan]</td>";
                              if($_SESSION[level]!='kepala'){
                                echo "<td style='width:200px !important'><center>
                                        <a class='btn btn-success btn-xs' title='Lihat Kompetensi Dasar' href='index.php?view=kompetensidasar&act=lihat&id=$r[kode_pelajaran]&tingkat=$_GET[tingkat]'><span class='glyphicon glyphicon-search'></span> Lihat Kompetensi</a>
                                      </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                  ?>
                    <tbody>
                  </table>
                </div><!-- /.box-body -->
                <?php 
                    if ($_GET[tingkat] == ''){
                        echo "<center style='padding:60px; color:red'>Silahkan Memilih Tingkat Terlebih dahulu...</center>";
                    }
                ?>
                </div>
            </div>


<?php 
}elseif($_GET[act]=='lihat'){
    $d = mysql_fetch_array(mysql_query("SELECT a.kode_kelas, b.nama_kelas, c.kode_pelajaran, c.namamatapelajaran, d.nama_guru, e.id_kls_pararel, e.nm_pararel FROM `rb_jadwal_pelajaran` a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran JOIN rb_guru d ON a.nip=d.nip JOIN rb_kls_pararel e ON a.id_kls_pararel=e.id_kls_pararel where a.kodejdwl='$_GET[id]'"));
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Journal Kegiatan Belajar Mengajar</h3>
                      <a style='margin-left:5px' class='pull-right btn btn-success btn-sm' href='index.php?view=kompetensiguru&act=lihat&id=$_GET[id]'>Lihat Kompetensi Dasar</a>";
                  if($_SESSION[level]!='kepala'){
                      echo "<a class='pull-right btn btn-primary btn-sm' href='index.php?view=journalguru&act=tambah&jdwl=$_GET[id]'>Tambahkan Journal</a>";
                  }
                echo "</div>
                <div class='box-body'>
                  <div class='col-md-12'>
                  <table class='table table-condensed table-hover'>
                      <tbody>
                        <tr><th width='120px' scope='row'>Nama Kelas</th> <td>$d[nama_kelas]</td></tr>
                        <tr><th width='120px' scope='row'>Nama Kelas Pararel</th> <td>$d[nm_pararel]</td></tr>
                        <tr><th scope='row'>Nama Guru</th>           <td>$d[nama_guru]</td></tr>
                        <tr><th scope='row'>Mata Pelajaran</th>           <td>$d[namamatapelajaran]</td></tr>
                      </tbody>
                  </table>
                  </div>

                  <table id='example' class='table table-bordered table-striped'>
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Hari</th>
                        <th style='width:90px'>Tanggal</th>
                        <th style='width:70px'>Jam Ke</th>
                        <th style='width:220px'>Materi</th>
                        <th>Keterangan</th>";
                        if($_SESSION[level]!='kepala'){
                            echo "<th>Action</th>";
                        }
                      echo "</tr>
                    </thead>
                    <tbody>";
                      $tampil = mysql_query("SELECT * FROM rb_journal_list where kodejdwl='$_GET[id]' ORDER BY id_journal DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[hari]</td>
                              <td>".tgl_indo($r[tanggal])."</td>
                              <td align=center>$r[jam_ke]</td>
                              <td>$r[materi]</td>
                              <td>$r[keterangan]</td>";
                              if($_SESSION[level]!='kepala'){
                                echo "<td style='width:80px !important'><center>
                                         <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=journalguru&act=edit&id=$r[id_journal]&jdwl=$_GET[id]'><span class='glyphicon glyphicon-edit'></span></a>
										 <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=journalguru&hapus=$r[id_journal]&jdwl=$_GET[id]'><span class='glyphicon glyphicon-remove'></span></a>
										
                                      </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }

                      if (isset($_GET[hapus])){
                        mysql_query("DELETE FROM rb_journal_list where id_journal='$_GET[hapus]'");
                        echo "<script>document.location='index.php?view=journalguru&act=lihat&id=$_GET[jdwl]';</script>";
                      }

                    echo "<tbody>
                  </table>
                </div>
                </div>
            </div>";

}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
        $d = tgl_simpan($_POST[d]);
        mysql_query("INSERT INTO rb_journal_list VALUES('','$_POST[jdwl]','$_POST[c]','$d','$_POST[e]','$_POST[f]','$_POST[g]','".date('Y-m-d H:i:s')."','$_SESSION[id]')");
        echo "<script>document.location='index.php?view=journalguru&act=lihat&id=$_POST[jdwl]';</script>";
    }

    $e = mysql_fetch_array(mysql_query("SELECT * FROM rb_jadwal_pelajaran where kodejdwl='$_GET[jdwl]'"));
    $jam = mysql_num_rows(mysql_query("SELECT * FROM rb_journal_list where kodejdwl='$_GET[jdwl]'"))+1;
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Journal Kegiatan Belajar Mengajar</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                  <input type='hidden' name='jdwl' value='$_GET[jdwl]'>
   
                    <tr><th width='140px' scope='row'>Kelas</th>   <td><select class='form-control' name='a'>"; 
                                                $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                while($a = mysql_fetch_array($kelas)){
                                                  if ($e[kode_kelas]==$a[kode_kelas]){
                                                    echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
					 <tr><th width='140px' scope='row'>Kelas Pararel</th>   <td><select class='form-control' name='m'>"; 
                                                $kelasp = mysql_query("SELECT * FROM rb_kls_pararel");
                                                while($a = mysql_fetch_array($kelasp)){
                                                  if ($e[id_kls_pararel]==$a[id_kls_pararel]){
                                                    echo "<option value='$a[id_kls_pararel]' selected>$a[nm_pararel]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                    <tr><th scope='row'>Mata Pelajaran</th>   <td><select class='form-control' name='b'>"; 
                                                $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran");
                                                while($a = mysql_fetch_array($mapel)){
                                                  if ($e[kode_pelajaran]==$a[kode_pelajaran]){
                                                    echo "<option value='$a[kode_pelajaran]' selected>$a[namamatapelajaran]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                   
                    <tr><th scope='row'>Hari</th>  <td><input type='text' class='form-control' value='$hari_ini' name='c'></td></tr>
                    <tr><th scope='row'>Tanggal</th>  <td><input type='text' style='border-radius:0px; padding-left:12px' class='datepicker form-control' value='".date('d-m-Y')."' name='d' data-date-format='dd-mm-yyyy'></td></tr>
                    <tr><th scope='row'>Jam Ke</th>  <td><input type='number' class='form-control' value='$jam' name='e'></td></tr>
                    <tr><th scope='row'>Materi</th>  <td><textarea style='height:80px' class='form-control' name='f'></textarea></td></tr>
                    <tr><th scope='row'>Keterangan</th>  <td><textarea style='height:160px'  class='form-control' name='g'></textarea></td></tr>
                    </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='#'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";

}elseif($_GET[act]=='edit'){
    if (isset($_POST[update])){
        $d = tgl_simpan($_POST[d]);
        mysql_query("UPDATE rb_journal_list SET hari = '$_POST[c]',
                                                tanggal = '$d',
                                                jam_ke = '$_POST[e]',
                                                materi = '$_POST[f]',
                                                keterangan = '$_POST[g]',
                                                users = '$_SESSION[id]' where id_journal='$_POST[id]'");
        echo "<script>document.location='index.php?view=journalguru&act=lihat&id=$_POST[jdwl]';</script>";
    }
    $e = mysql_fetch_array(mysql_query("SELECT a.*, b.kode_pelajaran, b.kode_kelas, b.id_kls_pararel FROM rb_journal_list a JOIN rb_jadwal_pelajaran b ON a.kodejdwl=b.kodejdwl where a.id_journal='$_GET[id]'"));
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Journal Kegiatan Belajar Mengajar</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                  <input type='hidden' name='jdwl' value='$_GET[jdwl]'>
                  <input type='hidden' name='id' value='$_GET[id]'>
                   <tr><th width='140px' scope='row'>Kelas</th>   <td><select class='form-control' name='a'>"; 
                                                $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                while($a = mysql_fetch_array($kelas)){
                                                  if ($e[kode_kelas]==$a[kode_kelas]){
                                                    echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
					
					  <tr><th width='140px' scope='row'>Kelas Pararel</th>   <td><select class='form-control' name='m'>"; 
                                                $kelasp = mysql_query("SELECT * FROM rb_kls_pararel");
                                                while($a = mysql_fetch_array($kelasp)){
                                                  if ($e[id_kls_pararel]==$a[id_kls_pararel]){
                                                    echo "<option value ='$a[id_kls_pararel]' selected>$a[nm_pararel]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
					
                    <tr><th scope='row'>Mata Pelajaran</th>   <td><select class='form-control' name='b'>"; 
                                                $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran");
                                                while($a = mysql_fetch_array($mapel)){
                                                  if ($e[kode_pelajaran]==$a[kode_pelajaran]){
                                                    echo "<option value='$a[kode_pelajaran]' selected>$a[namamatapelajaran]</option>";
                                                  }
                                                }
                                                echo "</select>
                    </td></tr>
                   
                    <tr><th scope='row'>Hari</th>  <td><input type='text' class='form-control' value='$e[hari]' name='c'></td></tr>
                    <tr><th scope='row'>Tanggal</th>  <td><input type='text' style='border-radius:0px; padding-left:12px' class='datepicker form-control' value='".tgl_view($e[tanggal])."' name='d' data-date-format='dd-mm-yyyy'></td></tr>
                    <tr><th scope='row'>Jam Ke</th>  <td><input type='number' class='form-control' value='$e[jam_ke]' name='e'></td></tr>
                    <tr><th scope='row'>Materi</th>  <td><textarea style='height:80px' class='form-control' name='f'>$e[materi]</textarea></td></tr>
                    <tr><th scope='row'>Keterangan</th>  <td><textarea style='height:160px'  class='form-control' name='g'>$e[keterangan]</textarea></td></tr>
                    </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='#'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}
?>