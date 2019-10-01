<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Jenis Pelanggaran </h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=jns_pel&act=tambah'>Tambahkan Data</a>
                  <?php } ?>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
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
                  <table id="dataBk" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:30px'>No</th>
                        <th>Nama Pelanggaran</th>
                       
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>

                  <?php 
                   if(!empty($_SESSION[unit])) {
                   $tampil = mysql_query("SELECT * FROM rb_jns_pel WHERE unit ='$_SESSION[unit]' ORDER BY id_jns_pel DESC");

                   }else{
				   $tampil = mysql_query("SELECT * FROM rb_jns_pel ORDER BY id_jns_pel DESC");                   	
                   }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
               

                    echo "<tr><td>$no</td>
                              <td>$r[nm_jnspel]</td>";
                             
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=jns_pel&act=edit&id=$r[id_jns_pel]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=jns_pel&hapus=$r[id_jns_pel]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_jns_pel where id_jns_pel='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=jns_pel';</script>";
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
        $query = mysql_query("UPDATE rb_jns_pel SET
                                        nm_jnspel = '$_POST[a]'
                                        where id_jns_pel='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=jns_pel&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=jns_pel&gagal';</script>";
        }

    }
    $edit = mysql_query("SELECT * FROM rb_jns_pel where id_jns_pel='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Jenis Pelanggaran</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_jns_pel]'>
                   </select></td></tr>
                    <tr><th width='120px' scope='row'>Nama Masalah</th> <td><input type='text' class='form-control' name='a' value='$s[nm_jnspel]'> </td></tr>
                   
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=jns_pel'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
       $query= mysql_query("INSERT INTO rb_jns_pel VALUES('','$_POST[a]','$_POST[unit]')");
        if ($query){
          echo "<script>document.location='index.php?view=jns_pel&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=jns_pel&gagal';</script>";
        }
    }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Kategori</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                  <input type='hidden' name='unit' value='$_SESSION[unit]'>
                    <tr><th width='120px' scope='row'>Nama Pelanggaran</th> <td><input type='text' class='form-control' name='a'> </td></tr>
                    
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=jns_mslh'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}
?>