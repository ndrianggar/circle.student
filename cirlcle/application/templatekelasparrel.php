<?php
if ($_GET[act]==''){

?>
<?php
 if(isset($_POST[tambah])){
  cek_session_admin();
	mysql_query("INSERT INTO rb_kls_pararel VALUES('','$_POST[kode_kelas]','$_POST[nm_pararel]')");
	 echo "<script>document.location='index.php?view=kelaspararel&act=tambah';</script>";
	}
	
}
?>
<div class="col-md-3">
              <div class="box box-solid">
                <div class="box-header with-border">	
                  <h3 class="box-title">PILIHAN</h3>
                    <div class="box-tools">
						
			  </div>
			  <div class="box-body no padding" style="display: block;">
					<ul class="nav nav-pills nav-stacked">
					  <form method="POST" action="" enctype="multipart/form-data">		
							<label>Kelas</label>
							<select  class="form-control" name="kode_kelas">
							<option value="0">Pilih Kelas</option>
							<?php 
						  $kelas = mysql_query("SELECT * FROM rb_kelas ORDER BY kode_kelas");
                            while ($k = mysql_fetch_array($kelas)){
                                  echo "<option value='$k[kode_kelas]'>$k[nama_kelas]</option>";
                                 }
                 							?>
							</select>
							</br>
							<label>Kelas Pararel</label>
							<input type='text' class="form-control" name="nm_pararel">
						</ul>
						
				</div>
			  </div>
			  <div style='clear:both'></div>
                          <div class='box-footer'>
                            <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                          
                          </div> 
             </div>

</div>
			 
			 
<div class="col-md-9">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Kelas Pararel</h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=kurikulum&act=tambah'>Tambahkan Data</a>
                  <?php } ?>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Nama Kelas</th>
                        <th>Kelas Pararel</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
    
			
					<?php 
                    $tampil = mysql_query("SELECT * FROM rb_kls_pararel ORDER BY id_kls_pararel DESC");
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