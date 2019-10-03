
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Nilai Bulanan | <?php echo $_GET[blnrpt]?></h3>
                  <div class="box-tools">
                    <div class="input-group" style="width: 150px;">
                  <input type="text" name="blnrpt" class="form-control input-sm" id="getblnutsdown"placeholder="-Pilih Bulan-" onchange="downblnuts()" value="<?php echo $_GET[blnrpt]?>">
            </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                	
	     		</div>
                  <table id="datadownloadnilai" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px;'>No</th>
                        <th>nipd</th>
                        <th>nama</th>
                        <th>kelas paralel</th>
                        <th>nilai</th>
                        <th>mapel</th>
                        <th>bulan</th>
                     
                      </tr>
                    </thead>

                    <tbody>
                  <?php 
                	  if (!empty($_SESSION[unit])){
                
                    $tampil = mysql_query("SELECT a.nipd, a.nama, d.nm_pararel, e.angka_pengetahuan, e.raport_bulan, g.namamatapelajaran FROM rb_siswa a
                        JOIN rb_nilai_uts e ON a.nipd=e.nisn 
                         JOIN rb_kls_pararel d ON a.id_kls_pararel=d.id_kls_pararel
                         JOIN rb_jadwal_pelajaran h ON h.kodejdwl =e.kodejdwl
                          JOIN rb_mata_pelajaran g ON g.kode_pelajaran=h.kode_pelajaran 
                          
                          WHERE a.unit ='$_SESSION[unit]' AND e.raport_bulan='$_GET[blnrpt]' ORDER BY a.nipd DESC");

                	}else{

                		  $tampil = mysql_query("SELECT a.nipd, a.nama, d.nm_pararel, e.angka_pengetahuan, e.raport_bulan, g.namamatapelajaran FROM rb_siswa a
                        JOIN rb_nilai_uts e ON a.nipd=e.nisn 
                         JOIN rb_kls_pararel d ON a.id_kls_pararel=d.id_kls_pararel
                            JOIN rb_jadwal_pelajaran h ON h.kodejdwl =e.kodejdwl
                          JOIN rb_mata_pelajaran g ON g.kode_pelajaran=h.kode_pelajaran 
                          WHERE  .raport_bulan='$_GET[blnrpt]'");
                		}
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                               <td>$r[nipd]</td>
                              <td>$r[nama]</td>
                              <td>$r[nm_pararel]</td>
                              <td>$r[angka_pengetahuan]</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[raport_bulan]</td>";
                     
                            echo "</tr>";
                      $no++;
                      }
                      

                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
