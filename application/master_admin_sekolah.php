<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Admin Sekolah</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=adminsekolah&act=tambah'>Tambahkan Data Admin Sekolah</a>
                </div><!-- /.box-header -->
                <div class="box-body">
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
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:30px'>No</th>
                        <th>Username</th>
                        <th>Nama Lengkap</th>
                        <th>Alamat Email</th>
                        <th>No Telpon</th>
                        <th>Jabatan</th>
                        <th>Unit</th>
                        <th>Level</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $tampil = mysql_query("SELECT * FROM rb_user_admsekolah where level='adminsekolah' ORDER BY id_ser_adm_sekolah DESC");
                    $no = 1;
					while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[unam_ser_adm_sekolah]</td>
                              <td>$r[nm_ser_adm_sekolah]</td>
                              <td>$r[email]</td>
                              <td>$r[no_tlp]</td>
                              <td>$r[jabatan]</td>
                              <td>$r[unit]</td>
                              <td>$r[level]</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='?view=adminsekolah&act=edit&id=$r[id_ser_adm_sekolah]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='?view=adminsekolah&hapus=$r[id_ser_adm_sekolah]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_user_admsekolah where id_ser_adm_sekolah='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=adminsekolah';</script>";
                      }

                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
<?php 
}elseif($_GET[act]=='edit'){
    if (isset($_POST[update])){
      $data = md5($_POST[b]);
      $passs=hash("sha512",$data);
      if (trim($_POST[b])==''){
        $query = mysql_query("UPDATE rb_user_admsekolah SET unam_ser_adm_sekolah = '$_POST[a]',
                                         nm_ser_adm_sekolah = '$_POST[c]',
                                         email = '$_POST[d]',
                                         no_tlp = '$_POST[e]',
                                         jabatan = '$_POST[f]',
										 unit = '$_POST[g]'
										 where id_ser_adm_sekolah='$_POST[id]'");
      }else{
        $query = mysql_query("UPDATE rb_user_admsekolah SET unam_ser_adm_sekolah = '$_POST[a]',
                                         pswd_ser_adm_sekolah = '$passs',
                                         nm_ser_adm_sekolah = '$_POST[c]',
                                         email = '$_POST[d]',
                                         no_tlp = '$_POST[e]',
                                         jabatan = '$_POST[f]', 
										 unit = '$_POST[g]' where id_ser_adm_sekolah='$_POST[id]'");
      }
        if ($query){
          echo "<script>document.location='index.php?view=adminsekolah&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=adminsekolah&gagal';</script>";
        }
    }
    $edit = mysql_query("SELECT * FROM rb_user_admsekolah a where a.id_ser_adm_sekolah='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Admin Sekolah</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_ser_adm_sekolah]'>
                    <tr><th width='120px' scope='row'>Username</th> <td><input type='text' class='form-control' name='a' value='$s[unam_ser_adm_sekolah]'> </td></tr>
                    <tr><th scope='row'>Password</th>               <td><input type='text' class='form-control' name='b' placeholder='Kosongkan saja Jika Password tidak diganti,...'></td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>           <td><input type='text' class='form-control' name='c' value='$s[nm_ser_adm_sekolah]'></td></tr>
                    <tr><th scope='row'>Alamat Email</th>           <td><input type='email' class='form-control' name='d' value='$s[email]'></td></tr>
                    <tr><th scope='row'>No Telpon</th>              <td><input type='number' class='form-control' name='e' value='$s[no_tlp]'></td></tr>
                    <tr><th scope='row'>Jabatan</th>                <td><input type='text' class='form-control' name='f' value='$s[jabatan]'></td></tr>
                    <tr><th scope='row'>Unit</th>               
                      <td>
                        <select name='g' class='form-control'>
                          <option selected value='$s[unit]'>$s[unit]</option>
                           <option value='SMP PUTRA'>SMP PUTRA</option>
			  <option value='SMP PUTRI'>SMP PUTRI</option>
			  <option value='SMA PUTRA'>SMA PUTRA</option>
                          <option value='SMA PUTRI'>SMA PUTRI</option>
                        </select>
                      </td>
                    </tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=adminsekolah' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
      $data = md5($_POST[b]);
      $passs=hash("sha512",$data);
      $query = mysql_query("INSERT INTO rb_user_admsekolah VALUES('','$_POST[a]','$passs','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[f]','$_POST[g]','adminsekolah','Y')");
	  
        if ($query){
          echo "<script>document.location='index.php?view=adminsekolah&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=adminsekolah&gagal';</script>";
        }
    }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Admin Sekolah</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_user_konten]'>
                    <tr><th width='120px' scope='row'>Username</th> <td><input type='text' class='form-control' name='a'> </td></tr>
                    <tr><th scope='row'>Password</th>               <td><input type='text' class='form-control' name='b'></td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>           <td><input type='text' class='form-control' name='c'></td></tr>
                    <tr><th scope='row'>Alamat Email</th>           <td><input type='email' class='form-control' name='d' value='$s[email]'></td></tr>
                    <tr><th scope='row'>No Telpon</th>              <td><input type='number' class='form-control' name='e' value='$s[no_tlp]'></td></tr>
                    <tr><th scope='row'>Jabatan</th>                <td><input type='text' class='form-control' name='f' value='$s[jabatan]'></td></tr>
                    <tr>
                      <th scope='row'>Unit</th>                
                      <td>
                        <select class='form-control' name='g'>
                          <option selected>- Pilih Unit -</option>
                          <option value='SMP PUTRA'>SMP PUTRA</option>
			  <option value='SMP PUTRI'>SMP PUTRI</option>
			  <option value='SMA PUTRA'>SMA PUTRA</option>
                          <option value='SMA PUTRI'>SMA PUTRI</option>
                        </select>
                      </td>
                    </tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=adminsekolah' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>";
}
?>