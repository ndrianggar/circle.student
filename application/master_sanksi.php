<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Sanksi </h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=sanksi&act=tambah'>Tambahkan Data</a>
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
                        <th>Nama Sanksi</th>
                       
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>

                  <?php 
                  if(!empty($_SESSION[unit])) {
                   $tampil = mysql_query("SELECT * FROM rb_sanksi WHERE unit ='$_SESSION[unit]' ORDER BY id_sanksi DESC");

                 }else{
                  $tampil = mysql_query("SELECT * FROM rb_sanksi ORDER BY id_sanksi DESC");

                 }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
               

                    echo "<tr><td>$no</td>
                              <td>$r[nm_sanksi]</td>";
                             
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=sanksi&act=edit&id=$r[id_sanksi]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=sanksi&hapus=$r[id_sanksi]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_sanksi where id_sanksi='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=sanksi';</script>";
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
        $query = mysql_query("UPDATE rb_sanksi SET
                                        nm_sanksi = '$_POST[a]'
                                        where id_sanksi='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=sanksi&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=sanksi&gagal';</script>";
        }

    }
    $edit = mysql_query("SELECT * FROM rb_sanksi where id_sanksi='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Jenis Masalah</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_sanksi]'>
                   </select></td></tr>
                    <tr><th width='120px' scope='row'>Nama Masalah</th> <td><input type='text' class='form-control' name='a' value='$s[nm_sanksi]'> </td></tr>
                   
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=jns_mslh'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
       $query= mysql_query("INSERT INTO rb_sanksi VALUES('','$_POST[a]','$_POST[unit]')");
        if ($query){
          echo "<script>document.location='index.php?view=sanksi&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=sanksi&gagal';</script>";
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
                    <tr><th width='120px' scope='row'>Nama Sanksi</th> <td><input type='text' class='form-control' name='a'> </td></tr>
                    
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=sanksi'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}
?>