<?php 
if ($_GET[act]==''){ 
    if (isset($_GET[gettanggal])){
      $filtertgl = $_GET[gettanggal];
    }else{
      if (isset($_POST[tgl])){ $tgl = $_POST[tgl]; }else{ $tgl = date("d"); }
      if (isset($_POST[bln])){ $bln = $_POST[bln]; }else{ $bln = date("m"); }
      if (isset($_POST[thn])){ $thn = $_POST[thn]; }else{ $thn = date("Y"); }
      $lebartgl=strlen($tgl);
      $lebarbln=strlen($bln);

      switch($lebartgl){ 
        case 1: { $tglc="0".$tgl; break; }
        case 2: { $tglc=$tgl; break; }      
      } 

      switch($lebarbln){ 
        case 1: { $blnc="0".$bln; break; }
        case 2: { $blnc=$bln; break; }      
      }
      $filtertgl = $thn."-".$blnc."-".$tglc;
    }
      $ex = explode('-',$filtertgl);
      $tahun = $ex[0];
      $bulane = $ex[1];
      $tanggal = $ex[2];
      if (substr($tanggal,0,1) == '0'){ $tgle = substr($tanggal,1,1); }else{ $tgle = substr($tanggal,0,2); }
      if (substr($bulane,0,1) == '0'){ $blnee = substr($bulane,1,1); }else{ $blnee = substr($bulane,0,2); }
?> 
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Absensi Guru Pada : <b style='color:red'><?php echo tgl_indo("$_GET[tglAbsen]")."</b>"; ?> </h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='absenguru'>
                    <table>
                      <tr>
                        <td><input type="text" name="tglAbsen" class="form-control" id="tglAbsen" placeholder="Pilih Tanggal" autocomplete="off"></td>
                        <td>
                          <select class="form-control" name="unit">
                            <option selected="selected"> - Pilih Unit - </option>
                            <?php
                                if ($_SESSION[unit]=="SMP") {
                                  $data = mysql_query("SELECT unit FROM rb_guru WHERE unit = 'SMP' GROUP BY unit");
                                }else if ($_SESSION[unit]=="SMA") {
                                  $data = mysql_query("SELECT unit FROM rb_guru WHERE unit = 'SMA' GROUP BY unit");
                                }else{
                                  $data = mysql_query("SELECT unit FROM rb_guru GROUP BY unit");
                                }
                                while($row = mysql_fetch_array($data)){
                                  echo "<option value='".$row[unit]."'>".$row[unit]."</option>";
                                }
                            ?>
                          </select>
                        </td>
                        <td><button class="btn btn-primary btn-flat" type="submit" style="height: 34px;"><i class="fa fa-search"></i> </button></td>
                      </tr>
                    </table>
                  </form>
                  <div style="clear:both"></div>
                </div><!-- /.box-header -->
                <form action='' method="POST">
                <div class="box-body">
                  <table id="example" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>NIP</th>
                        <th>Nama Guru</th>
                        <th width='100'>Kehadiran</th>
                        <th width="200">Keterangan</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET[tglAbsen]) AND isset($_GET[unit])){
                      $cek = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS count FROM rb_guru a INNER JOIN rb_absensi_guru b on a.nip = b.nip WHERE a.unit = '$_GET[unit]' and b.tanggal = '$_GET[tglAbsen]'"));
                      if ($cek[count]>0) {
                        $tampil = mysql_query("SELECT a.nama_guru, a.nip, b.kode_kehadiran, b.note  FROM rb_guru a INNER JOIN rb_absensi_guru b on a.nip = b.nip where a.unit = '$_GET[unit]' AND b.tanggal = '$_GET[tglAbsen]' ORDER BY nama_guru ASC");
                      }else{
                        $tampil = mysql_query("SELECT nama_guru, nip  FROM rb_guru where unit = '$_GET[unit]' ORDER BY nama_guru ASC");
                      }
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                      if (isset($_GET[gettanggal])){
                        $sekarangabsen = $_GET[gettanggal];
                      }else{
                        if (isset($_POST[lihat])){
                          $sekarangabsen = $thn."-".$blnc."-".$tglc;
                        }else{
                          $sekarangabsen = date("Y-m-d");
                        }
                      }

                    $a = mysql_fetch_array(mysql_query("SELECT * FROM rb_absensi_guru where kodejdwl='$r[kodejdwl]' AND nip='$r[nip]' AND tanggal='$sekarangabsen'"));
                    echo "<tr><td>$no</td>
                              <td>$r[nip]<input type='hidden' value='$r[nip]' name='nip[]'></td>
                              <td>$r[nama_guru]<input type='hidden' value='$r[nama_guru]' name='nama_guru[]'></td>
                              <td width=100px><select style='width:100px;' name='a[]' class='form-control'>";
                                  $kehadiran = mysql_query("SELECT * FROM rb_kehadiran");
                                  while ($k = mysql_fetch_array($kehadiran)){
                                    if ($r[kode_kehadiran]==$k[kode_kehadiran]){
                                      echo "<option value='$k[kode_kehadiran]' selected>&#42; $k[nama_kehadiran]</option>";
                                    }else{
                                      echo "<option value='$k[kode_kehadiran]'>$k[nama_kehadiran]</option>";
                                    }
                                  }
                              echo "</select></td>
                                    <input type='hidden' name='jdwl[$no]' value='$r[kodejdwl]'>
                                    <td width='200'>
                                      <textarea style='width:200px' name='note[]'>$r[note]</textarea>
                                    </td>
                              </tr>";
                      $no++;
                      }
                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
                <?php 
                    if ($_GET[tglAbsen] == '' AND $_GET[unit] == ''){
                        echo "<center style='padding:60px; color:red'>Silahkan Memilih Tanggal Terlebih Dahulu..</center>";
                    }
                ?>
                <div class='box-footer'>
                    <?php 
                      echo "<input type='hidden' name='filtertgl' value='$filtertgl'>";                          
                    ?>
                    <?php if (!empty($_GET[tglAbsen]) AND !empty($_GET[unit])) {
                      echo "<button type='submit' name='simpan' class='btn btn-info pull-right'>Simpan Absensi</button>
                      <a target='_blank' href='application/print_absenGuru.php?tglAbsen=$_GET[tglAbsen]&unit=$_GET[unit]' class='btn btn-success'><i class='fa fa-print'></i> Print</a>";
                    } 
                    ?>
                    
                </div>
             
              </form>
              </div><!-- /.box -->
            </div>
<?php 
    if (isset($_POST[simpan])){
      $jml_data = count($_POST[nip]);
      $nip = $_POST[nip];
      $nama = $_POST[nama_guru];
      $a = $_POST[a];
      $note = $_POST[note];
      $tglabsen = $_GET[tglAbsen];
      $updateTime = date("Y-m-d H:i:s");
      for ($i=0; $i <$jml_data; $i++){
        $cek = mysql_query("SELECT * FROM rb_absensi_guru where nip='".$nip[$i]."' AND tanggal='$tglabsen'");
        $id  = mysql_fetch_array($cek); 
        $total = mysql_num_rows($cek);
        // echo "UPDATE `rb_absensi_guru` SET `nip`= '$nip[$i]',`kode_kehadiran`='$a[$i]',`tanggal`= '$tglabsen',`waktu_input`= '$updateTime' WHERE `id_absensi_guru`='$id[id_absensi_guru]'";
        if ($total > 0){
           mysql_query("UPDATE `rb_absensi_guru` SET `nip`= '$nip[$i]',`kode_kehadiran`='$a[$i]',`tanggal`= '$tglabsen',`waktu_input`= '$updateTime', `note`= '$note[$i]' WHERE `id_absensi_guru`='$id[id_absensi_guru]'");
        }else{
           mysql_query("INSERT INTO `rb_absensi_guru`(`id_absensi_guru`, `kodejdwl`, `nip`, `kode_kehadiran`, `tanggal`, `waktu_input`, `note`) VALUES ('','','$nip[$i]','$a[$i]','$_GET[tglAbsen]','$updateTime', '$note[$i]')");
        }
      }
        echo "<script>document.location='index.php?view=absenguru&tglAbsen=".$_GET[tglAbsen]."&unit=".$_GET[unit]."';</script>";
            
    }
}
?>
