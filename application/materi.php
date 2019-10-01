<?php if ($_GET[act]==''){ ?> 
            
		
			
			<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>PILIH MATERI</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='index.php?view=statuspegawai&act=tambah'>Tambahkan Data</a>
                </div>
				
				<div class='box-body'>
					<div class='col-md-3'>
					<form role='form'>
					<div class='form-group'>
					
					
						<select name='kelas' id='kelas' class='form-control'>
							<option value=''>Pilih Kelas</option>
						<?php 
						  $kelas = mysql_query("SELECT * FROM rb_kelas ORDER BY kode_kelas");
                            while ($k = mysql_fetch_array($kelas)){
                                  echo "<option value='$k[kode_kelas]'>$k[nama_kelas]</option>";
                                 }
                 
						?>
						
						
						     	</select>
							</br><select name='mapel' id='mapel' class='form-control'>
							<option value=''>Pilih Mata Pelajaran</option>
						<?php
						  $mapel =mysql_query ("SELECT * FROM rb_mata_pelajaran ORDER BY namamatapelajaran");
								while ($m = mysql_fetch_array($mapel)){
								    	echo "<option value ='$m[kode_pelajaran]'>$m[namamatapelajaran]</option>";					
								}
								
						?>
							   </select>
								
							</br><select name='kurikulum' id='kurikulum'  class='form-control'>
							<option value=''>Pilih Kurikulum</option>
						<?php
							$kurikulum =mysql_query ("SELECT * FROM rb_kurikulum ORDER BY nama_kurikulum");
								while ($k = mysql_fetch_array($kurikulum)){
									echo "<option value =\'$k[kode_kurikulum]\'>$k[nama_kurikulum]</option>\n";
										
								
								}
									
								
								?>
								
								</select>
					</div>
				
				</div>
				
				<?php
				
				}
				?>
				
				
				
			<!-- /.box-header -->
				