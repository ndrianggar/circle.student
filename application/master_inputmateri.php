<?php
if ($_GET[act]==''){
?>	

<?php
}elseif($_GET[act]=='tambah'){
	if (isset($_POST[tambah])){
		mysql_query("INSERT INTO rb_materi VALUES('','$_POST[kode_pelajaran]','$_POST[id_bab]','$_POST[sub_bab]','$_POST[nm_materi]')");
  echo "<script>document.location='index.php?view=inputmateri&act=tambah&&isimateri';</script>";
  }
			  			  
	echo" <div class='col-md-12'>
			<div class='box box-info'>
		  <div class='box-header with-border'>
		  <h3 class='title'>INPUT MATERI</h3>
		   <div class='box-body'>
			 <div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                     
                    </ul><br>
					 <div id='myTabContent' class='tab-content'>
                      <div role='tabpanel' class='tab-pane fade active in' id='babmateri' aria-labelledby='babmateri-tab'>
                          <form action='' method='POST' enctype='multipart/form-data' class='form-horizontal'>
                       
                          <div role='tabpanel' class='tab-pane fade active in' id='isimateri' aria-labelledby='isimateri-tab'>
                          <div class='col-md-12'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <form>
							  					
																				
								<tr><th scope='row'>MATA PELAJARAN</th> <td><select class='form-control' name='kode_pelajaran'> 
                                                                            <option value='0' selected>Pilih mapel</option>"; 
                                                                              $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran");
                                                                              while($a= mysql_fetch_array($mapel)){
																				if ($s[kode_pelajaran]==$a[kode_pelajaran]){
                                                                                  echo "<option value='$a[kode_pelajaran]'>$a[kode_pelajaran]-$a[namamatapelajaran]</option>";
																				}else{
																					echo"<option value='$a[kode_pelajaran]'>$a[kode_pelajaran]-$a[namamatapelajaran]</option>";
																				}
																			}
																				echo"</select>							
	<tr><th scope='row'>BAB</th> <td><select class='form-control' name='id_bab'> 
                                                                            <option value='0' selected>Pilih bab</option>"; 
                                                                              $bab = mysql_query("SELECT * FROM rb_bab");
                                                                              while($a= mysql_fetch_array($bab)){
																				if ($s[id_bab]==$a[id_bab]){
                                                                                  echo "<option value='$a[id_bab]'>$a[nm_bab]</option>";
																				}else{
																					echo"<option value='$a[id_bab]'>$a[nm_bab]</option>";
																				}
																			}
																				echo"</select>							
	
									<tr><th scope='row'>SUB BAB</th> <td><select class='form-control' name='sub_bab'> 
                                                                            <option value='0' selected>Pilih sub bab</option>"; 
                                                                              $bab = mysql_query("SELECT * FROM rb_bab");
                                                                              while($a= mysql_fetch_array($bab)){
																				if ($s[id_bab]==$a[id_bab]){
                                                                                  echo "<option value='$a[id_bab]'>$a[sub_bab]</option>";
																				}else{
																					echo"<option value='$a[id_bab]'>$a[sub_bab]</option>";
																				}
																			}
																				echo"</select>				
																				<br/>
									<textarea name='nm_materi' id='text-ckeditor'></textarea>
									<script>CKEDITOR.replace('text-ckeditor');</script>
									</form></br></br>
									<div class='btn btn-default btn-file'>
										<i class='fa fa-paperclip'>Attachment</i>"?>
										<input name='attachment' type='file' onchange='$("#upload-file-info").html($(this).val());'>
									</div>
									<?php echo"	</a> <span style='width:155px' class='label label-info' id='upload-file-info'></span>
									</br></br>
									
								</div>
							</form>
							  
                              
                            </tbody>
                            </table>
                          </div>
                          <div class='box-footer'>
                            <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                            <a href='index.php?view=upldmateri&act'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                          </div>
                          </form>
                      </div>
                    </div>
                  </div>

                </div>
            </div>
        </div>";
			

			
}elseif($_GET[act]=='listbahanmateri'){ 
?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
				 <a class='btn btn-primary btn-block margin-bottom' href='index.php?view=inputmateri&act=tambah'>Tambahkan Data</a>
				<div class="callout callout-info">DAFTAR SEMUA MATERI</div>
               
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>NO</th>
                        <th>MAPEL</th>
                        <th>BAB MATERI</th>
                        <th>KONTEN</th>
                         <th>ACTION</th>
                      
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET[tahun])){
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                               JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                                                  where a.nip='$_SESSION[id]' 
                                                    AND a.id_tahun_akademik='$_GET[tahun]' 
                                                      AND b.kode_kurikulum='$kurikulum[kode_kurikulum]'
                                                        ORDER BY a.hari DESC");
                    
                    }else{
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas, b.namamatapelajaran, b.kode_pelajaran, b.kode_kurikulum, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                                                  where b.kode_kurikulum='$kurikulum[kode_kurikulum]' AND a.nip='$_SESSION[id]' AND a.id_tahun_akademik='$tahunakademik[id_tahun_akademik]' ORDER BY a.hari DESC");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $total = mysql_num_rows(mysql_query("SELECT * FROM rb_elearning where kodejdwl='$r[kodejdwl]'"));
                    echo "<tr><td>$no</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[nama_kelas]</td>
                            
                              <td><a class='btn btn-success btn-xs' title='List Bahan dan Tugas' href='index.php?view=bahantugas&act=listbahantugas&jdwl=$r[kodejdwl]&id=$r[kode_kelas]&kd=$r[kode_pelajaran]'><span class='glyphicon glyphicon-th'></span> Tampilkan</a></td>
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
	
