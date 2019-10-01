<?php if ($_GET[act]==''){ ?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Proses Pelanggaran </h3>
                  <?php if($_SESSION[level]!='kepala'){ ?>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=pros_pel&act=tambah'>Tambahkan Data</a>
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
                        <th>Nama siswa</th>
                        <th>Tanggal Pelanggaran</th>
                        <th>Jenis Pelanggaran</th>
                        <th>Keterangan</th>
                        <th>Tanggal Berlaku</th>
                        <th>Sanksi</th>
                        <th>Unit</th>
                 
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>

                  <?php 
                   if(!empty($_SESSION[unit])) {
                   $tampil = mysql_query("SELECT * FROM rb_prospel a
                                                   LEFT JOIN rb_siswa b ON a.id_siswa = b.id_siswa
                                                   LEFT JOIN rb_jns_pel c ON a.id_jns_pel = c.id_jns_pel
                                                   LEFT JOIN rb_sanksi d ON a.id_sanksi = d.id_sanksi
                                                   WHERE a.unit ='$_SESSION[unit]' ORDER BY id_prospel ASC"); 
                   }else{
                    $tampil = mysql_query("SELECT * FROM rb_prospel a
                                                   LEFT JOIN rb_siswa b ON a.id_siswa = b.id_siswa
                                                   LEFT JOIN rb_jns_pel c ON a.id_jns_pel = c.id_jns_pel
                                                   LEFT JOIN rb_sanksi d ON a.id_sanksi = d.id_sanksi
                                                   ORDER BY id_prospel ASC"); 
                  }
               
                   $no = 1; while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[nama]</td>
                              <td>$r[tgl_pel]</td>
                              <td>$r[nm_jnspel]</td>
                              <td>$r[ket]</td>
                              <td>$r[tgl_berlaku]</td>
                              <td>$r[nm_sanksi]</td>";
                             echo" <td>$r[unit]</td>";
                             
                              if($_SESSION[level]!='kepala'){
                        echo "<td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=pros_pel&act=edit&id=$r[id_prospel]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=pros_pel&hapus=$r[id_prospel]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_prospel where id_prospel='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=pros_pel';</script>";
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
        $query = mysql_query("UPDATE rb_prospel SET
                                        id_siswa    = '$_POST[a]',
                                        tgl_pel     = '$_POST[b]',
                                        id_jns_pel  = '$_POST[c]',
                                        ket         = '$_POST[d]',
                                        id_sanksi	= '$_POST[e]',
                                        tgl_berlaku = '$_POST[f]'

                                        where id_prospel='$_POST[id]'");
     
 	 if ($query){
          echo "<script>document.location='index.php?view=pros_pel&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=pros_pel&gagal';</script>";
        }

    }
    $edit = mysql_query("SELECT * FROM rb_prospel a
                                               LEFT JOIN rb_siswa b ON a.id_siswa = b.id_siswa
                                               LEFT JOIN rb_jns_pel c ON a.id_jns_pel = c.id_jns_pel
                                               LEFT JOIN rb_sanksi d ON a.id_sanksi = d.id_sanksi
                                                     where id_prospel='$_GET[id]'");
   
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
             <div class='box box-info'>
               <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Pelanggaran</h3>
                </div>
               <div class='box-body'>
                <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_prospel]'>
                    <tr>
                       <th width='15%' scope='row'>Nama Siswa
                       </th> 
                       <td><select id='carisiswa' class='form-control' name='a' style='width: 50%;'>
                         <option value='$s[id_siswa]'>$s[nama]</option>              
                          </select>
                        </td>
                     </tr>
                    <tr>
					 <th>Tanggal Pelanggaran</th>
					 <td><input type='date' name='b' value='$s[tgl_pel]'></td>
				    </tr>

 					<tr><th scope='row'>Pelanggaran</th>
                          <td><select class='form-control' name='c'> 
                            <option value='0' selected>- Pilih Pelanggaran -</option>"; 
							if(!empty($_SESSION[unit])){
							 $jnspel = mysql_query("SELECT * FROM rb_jns_pel where unit ='$_SESSION[unit]'");
							  }else{
							  $jnspel = mysql_query("SELECT * FROM rb_jns_pel");
							  }
							   while($a = mysql_fetch_array($jnspel)){
							    if ($s[id_jns_pel]==$a[id_jns_pel]){
								 echo "<option value='$a[id_jns_pel]' selected>$a[nm_jnspel]</option>";
								 }else{
								  echo "<option value='$a[id_jns_pel]'>$a[nm_jnspel]</option>";
								 }
								}
								echo "</select>              
                    </tr>
                    <tr>
                      <th scope='row'>Keterangan</th>
                       <td><textarea class='form-control' name= 'd'>$s[ket]</textarea>
                       </td>
                    </tr>
                   <tr>
					 <th scope='row'>Sanksi</th>
					 <td><select class='form-control' name='e'> 
					   <option value='0' selected>- Pilih Sanksi -</option>"; 
					   if(!empty($_SESSION[unit])){
						$jnspel = mysql_query("SELECT * FROM rb_sanksi where unit ='$_SESSION[unit]'");
						}else{
						$jnspel = mysql_query("SELECT * FROM rb_sanksi");
						}
						while($a = mysql_fetch_array($jnspel)){
						if ($s[id_sanksi]==$a[id_sanksi]){
						echo "<option value='$a[id_sanksi]' selected>$a[nm_sanksi]</option>";
						}else{
						echo "<option value='$a[id_sanksi]'>$a[nm_sanksi]</option>";
						}
						}
						echo "</select>                              
					 </td>
					</tr>
					<tr>
					  <th>Tanggal Berlaku</th>
					   <td><input type='date' name='f' value='$s[tgl_berlaku]'>
					   </td>
					</tr>                    

                   </tbody>
                 </table>
             </div>
           </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=pros_pel'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}elseif($_GET[act]=='tambah'){
    if (isset($_POST[tambah])){
      $query= mysql_query("INSERT INTO rb_prospel VALUES('','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[f]','$_POST[unit]')");

       if ($query){echo "<script>document.location='index.php?view=pros_pel&sukses';</script>";
      }else{
     echo "<script>document.location='index.php?view=pros_pel&gagal';</script>";
         }

    } 
           echo"<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Pelanggaran</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                   <input type='hidden' name='unit' value='$_SESSION[unit]'>
              
                    <tr><th width='15%' scope='row'>Nama Siswa</th>
                    	<td><select id='carisiswa' class='form-control' name='a' style='width: 50%;'>
                         <option value=''></option>              
                          </select>
                        </td>
                   <tr>
					<th>Tanggal Pelanggaran</th>
					 <td><input type='date' name='b'></td>
				    </tr>
				    <tr>
				      <th scope='row'>Pelanggaran</th>
					  <td><select class='form-control' name='c'> 
					   <option value='0' selected>- Pilih Pelanggaran -</option>"; 
						if(!empty($_SESSION[unit])){
							$jnspel = mysql_query("SELECT * FROM rb_jns_pel where unit ='$_SESSION[unit]'");
							}else{
								$jnspel = mysql_query("SELECT * FROM rb_jns_pel");
							}
  					      while($a = mysql_fetch_array($jnspel)){
						  if ($s[id_jns_pel]==$a[id_jns_pel]){
						   echo "<option value='$a[id_jns_pel]' selected>$a[nm_jnspel]</option>";
						 }else{
						   echo "<option value='$a[id_jns_pel]'>$a[nm_jnspel]</option>";
						  }
						 }
						   echo "</select>                              
						</td>
					</tr>
                    <tr>
                      <th scope='row'>Keterangan</th>
                       <td><textarea class='form-control' name= 'd'></textarea>
                       </td>
                    </tr>
					<tr>
					 <th scope='row'>Sanksi</th>
					 <td><select class='form-control' name='e'> 
					   <option value='0' selected>- Pilih Sanksi -</option>"; 
						if(!empty($_SESSION[unit])){
						$jnspel = mysql_query("SELECT * FROM rb_sanksi where unit ='$_SESSION[unit]'");
						}else{
						$jnspel = mysql_query("SELECT * FROM rb_sanksi");
						}
						while($a = mysql_fetch_array($jnspel)){
						if ($s[id_sanksi]==$a[id_sanksi]){
						echo "<option value='$a[id_sanksi]' selected>$a[nm_sanksi]</option>";
						}else{
						echo "<option value='$a[id_sanksi]'>$a[nm_sanksi]</option>";
						}
						}
						echo "</select>                              
					 </td>
					</tr>
					<tr>
					 <th>Tanggal Berlaku</th>
					 <td><input type='date' name='f'>
					 </td>
					</tr>

                    </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=pros_pel'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
              </form>
            </div>";
}
?>