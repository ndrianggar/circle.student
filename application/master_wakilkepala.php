<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Kepala Sekolah </h3>
				  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=wakilkepala&act=tambah'>Tambahkan Data Kepala Sekolah</a>
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
                        <th>NIP</th>
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
                    $tampil = mysql_query("SELECT * FROM rb_users where jabatan ='kepala sekolah' ORDER BY id_user DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[username]</td>
                              <td>$r[nama_lengkap]</td>
                              <td>$r[email]</td>
                              <td>$r[no_telpon]</td>
                              <td>$r[jabatan]</td>
                              <td>$r[unit]</td>
                              <td>$r[level]</td>
                              <td width='100px'><center>
                                <a class='btn btn-info btn-xs' title='Lihat Detail' href='?view=guru&act=detailguru&id=$r[username]'><span class='glyphicon glyphicon-search'></span></a>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='?view=wakilkepala&act=edit&id=$r[id_user]'><span class='glyphicon glyphicon-edit'></span></a>
                                 <a class='btn btn-danger btn-xs' onClick='deleteListKepsek($r[id_user])' title='Delete Data'><span class='glyphicon glyphicon-trash'></span></a>
                              </center></td>";
                            echo "</tr>";
                      $no++;
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
        $query = mysql_query("UPDATE rb_users SET username = '$_POST[a]',
                                         nama_lengkap = '$_POST[c]',
                                         email = '$_POST[d]',
                                         no_telpon = '$_POST[e]',
                                         jabatan = 'Kepala Sekolah',
                                         unit = '$_POST[unit]' 
                                         where id_user='$_POST[id]'");
        echo "";
      }else{
        $query = mysql_query("UPDATE rb_users SET username = '$_POST[a]',
                                         password = '$passs',
                                         nama_lengkap = '$_POST[c]',
                                         email = '$_POST[d]',
                                         no_telpon = '$_POST[e]',
                                         jabatan = 'Kepala Sekolah',
                                         unit = '$_POST[unit]' 
                                         where id_user='$_POST[id]'");
        echo "2";
      }
        if ($query){
          echo "<script>document.location='index.php?view=wakilkepala&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=wakilkepala&gagal';</script>";
        }
    }
    $edit = mysql_query("SELECT * FROM rb_users a where a.id_user='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Login Kepala Sekolah</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_user]'>
                    <tr><th width='120px' scope='row'>Username</th> <td><input type='text' class='form-control' name='a' value='$s[username]'> </td></tr>
                    <tr><th scope='row'>Password</th>               <td><input type='text' class='form-control' name='b' placeholder='Kosongkan saja Jika Password tidak diganti,...'></td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>           <td><input type='text' class='form-control' name='c' value='$s[nama_lengkap]'></td></tr>
                    <tr><th scope='row'>Alamat Email</th>           <td><input type='text' class='form-control' name='d' value='$s[email]'></td></tr>
                    <tr><th scope='row'>No Telpon</th>              <td><input type='number' class='form-control' name='e' value='$s[no_telpon]'></td></tr>
                    <tr>
                      <th scope='row'>Jabatan</th>
                      <td>
                        <input type='text' class='form-control' name='f' value='$s[jabatan]' disabled='disabled'>
                      </td> 
                    </tr>
                    <tr>
                      <th scope='row'>Unit</th>
                      <td>
                        <select class='form-control' name='unit'> 
                          <option selected value='$s[unit]'>$s[unit]</option>
                          <option value='SMP PUTRA'>SMP PUTRA</option>
                          <option value='SMA PUTRA'>SMA PUTRA</option> 
                          <option value='SMP PUTRI'>SMP PUTRI</option>
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
                    <a href='index.php?view=wakilkepala' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
      $data = md5($_POST[b]);
      $passs=hash("sha512",$data);
      $query = mysql_query("INSERT INTO rb_users VALUES('','$_POST[a]','$passs','$_POST[c]','$_POST[d]','$_POST[e]','Kepala Sekolah','kepala','Y','$_POST[unit]')");
	  
        if ($query){
          echo "<script>document.location='index.php?view=wakilkepala&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=wakilkepala&gagal';</script>";
        }
    }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Kepala Sekolah</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_user]'>
                    <tr><th width='120px' scope='row'>Username</th> <td><input type='text' class='form-control' name='a'> </td></tr>
                    <tr><th scope='row'>Password</th>               <td><input type='text' class='form-control' name='b'></td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>           <td><input type='text' class='form-control' name='c'></td></tr>
                    <tr><th scope='row'>Alamat Email</th>           <td><input type='email' class='form-control' name='d' value='$s[email]'></td></tr>
                    <tr><th scope='row'>No Telpon</th>              <td><input type='number' class='form-control' name='e' value='$s[no_tlp]'></td></tr>
                    <tr>
                      <th scope='row'>Unit</th>                
                      <td>
                        <select class='form-control' name='unit'>
                          <option selected>- Pilih Unit -</option> 
                          <option value='SMP PUTRA'>SMP PUTRA</option>
                          <option value='SMA PUTRA'>SMA PUTRA</option> 
                          <option value='SMP PUTRI'>SMP PUTRI</option>
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
                    <a href='index.php?view=wakilkepala' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>";
}elseif ($_GET[act]=='delete') {
  // if (isset($_POST[delete])){
      $query = mysql_query("DELETE FROM rb_users where id_user='$_GET[id]'");
    
        if ($query){
          echo "<script>document.location='index.php?view=wakilkepala&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=wakilkepala&gagal';</script>";
        }
    // }
}
?>
<script type="text/javascript">
  function deleteListKepsek(id) {
    if (confirm("Delete List Data Kepala Sekolah?")) {
      window.location.href = '?view=wakilkepala&act=delete&id='+id+'';
    }
  }
</script>