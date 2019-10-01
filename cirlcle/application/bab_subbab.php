<?php if ($_GET[act]==''){ 

    if (isset($_POST[tambah])){
        $query= mysql_query("INSERT INTO rb_bab VALUES('','$_POST[nm_bab]','$_POST[sub_bab]')");
        if ($query){
			 echo "<script>document.location='index.php?view=createbab&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=createbab&gagal';</script>";
        }
    }
?> 
			<div class='col-md-3'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Bab</h3>
                </div>
					<div class='box-tools'>
						<div class="box-body no padding" style="display: block;">
							<ul class="nav nav-pills nav-stacked">
							
								<form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
								<table class='table table-condensed table-bordered'>
								<tbody>
								<tr><th width='120px' scope='row'>Bab<td><input type='text' class='form-control' name='nm_bab'></td></tr>			
																
                    <tr><th scope='row'>Sub Bab</th><td><input type='text' class='form-control' name='sub_bab'></td></tr>
                  </tbody>
                  </table>
                </div>
              </ul></div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                   
                    
                  </div>
              </form>
            </div></div>

            <div class="col-md-9">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Bab</h3>
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
                        <th>Bab</th>
                        <th>Sub Bab</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $tampil = mysql_query("SELECT * FROM rb_bab ORDER BY id_bab DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[nm_bab]</td>
                              <td>$r[sub_bab]</td>";
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=createbab&act=edit&id=$r[id_bab]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=createbab&hapus=$r[id_bab]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_bab where id_bab='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=createbab';</script>";
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
        $query = mysql_query("UPDATE rb_bab SET nm_bab = '$_POST[a]',
                                         sub_bab= '$_POST[b]' where id_bab='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=createbab&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=createbab&gagal';</script>";
        }
    }
    $edit = mysql_query("SELECT * FROM rb_bab where id_bab='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Bab</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
				    <input type='hidden' name='id' value='$s[id_bab]'>
               <tr><th scope='row'>BAB</th></td><td><input type='text' class='form-control' name='a' value='$s[nm_bab]'></td></tr>
				<tr><th scope='row'>Sub Bab</th><td><input type='text' class='form-control' name='b' value='$s[sub_bab]'></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=createbab&act=tambah'><button class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";

}
?>