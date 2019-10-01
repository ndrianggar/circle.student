<?php if ($_GET[act]==''){ 

    if (isset($_POST[tambah])){
        $query= mysql_query("INSERT INTO rb_kls_pararel VALUES('','$_POST[a]','$_POST[b]')");
        if ($query){
			 echo "<script>document.location='index.php?view=kelaspararel&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=kelaspararel&gagal';</script>";
        }
    }
?> 

			<div class='col-md-3'>
			   <div class='box box-info'>
					<div class='box-header with-border'>
				  	 <?php if($_SESSION[level]!='kepala'){ ?>
                  <h3 class='box-title'>Tambah Data Kelas Pararel</h3>
				
                </div>
					
					<div class='box-tools'>
						<div class="box-body no padding" style="display: block;">
							<ul class="nav nav-pills nav-stacked">
							
								<form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
								<table class='table table-condensed table-bordered'>
								<tbody>
								<tr><th width='120px' scope='row'>Kode Kelas<td><select class='form-control' name='a'> 
                                                                            <option value='0' selected>- Pilih Kelas -</option>
																			  <?php
                                                                              if ($_SESSION[unit]=="SMP") {
                                                                                 $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                                                                              } else if($_SESSION[unit]=="SMA"){
                                                                                  $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                                                                              }
                                                                              while($a = mysql_fetch_array($kelas)){
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                                 }
                                                                             echo "</select></td></tr>";?>							
																
                    <tr><th scope='row'>Kelas Pararel</th>           <td><input type='text' class='form-control' name='b'></td></tr>
                  </tbody>
                  </table>
                </div>
              </ul></div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=ptk'><button class='btn btn-default pull-right'>Cancel</button></a>
                    <?php }?>
                  </div>
              </form>
            </div></div>
			
            <div class="col-md-9">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Kelas Pararel</h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                
                  <?php } ?>
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
                        <th style='width:40px'>No</th>
                        <th>Kode Kelas</th>
                        <th>Kelas Pararel</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    if ($_SESSION[unit]=="SMP") {
                      $tampil = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('VII','VIII','IX') ORDER BY id_kls_pararel DESC");
                    } else if($_SESSION[unit]=="SMA"){
                      $tampil = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('VII','VIII','IX') ORDER BY id_kls_pararel DESC");
                    }else{
                      $tampil = mysql_query("SELECT * FROM rb_kls_pararel ORDER BY id_kls_pararel DESC");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[kode_kelas]</td>
                              <td>$r[nm_pararel]</td>";
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=kelaspararel&act=edit&id=$r[id_kls_pararel]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=kelaspararel&hapus=$r[id_kls_pararel]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_kls_pararel where id_kls_pararel='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=kelaspararel';</script>";
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
        $query = mysql_query("UPDATE rb_kls_pararel SET kode_kelas = '$_POST[a]',
                                         nm_pararel= '$_POST[b]' where id_kls_pararel='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=kelaspararel&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=kelaspararel&gagal';</script>";
        }
    }
    $edit = mysql_query("SELECT * FROM rb_kls_pararel where id_kls_pararel='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Kelas Pararel</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_kls_pararel]'>
                    <tr><th width='120px' scope='row'>Kode Kelas</th> <td><select class='form-control' name='a'> 
                                                                            <option value='0' selected>- Pilih Kelas -</option>";
																			  $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                                            while($a = mysql_fetch_array($kelas)){
                                                                             
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }
                                                                              else{
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }else{
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                                }
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
            <tr><th scope='row'>Kelas Pararel</th>           <td><input type='text' class='form-control' name='b' value='$s[nm_pararel]'></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=kelaspararel' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>";

}
?>