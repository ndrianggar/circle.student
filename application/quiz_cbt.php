<?php 
if ($_GET[act]==''){ 
$jenis = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_jenis where id_jenis='$_GET[id_jenis]'"));
?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Computer Based Test</h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='cbt'>
                    <select name='id_jenis' style='padding:4px'>
                        <option value='0' selected>- Pilih Jenis CBT -</option>
                        <?php  
                            $cbt = mysql_query("SELECT * FROM rb_quiz_jenis");
                            while ($k = mysql_fetch_array($cbt)){
                              if ($_GET['id_jenis']==$k['id_jenis']){
                                echo "<option value='$k[id_jenis]' selected>$k[jenis_cbt]</option>";
                              }else{
                                echo "<option value='$k[id_jenis]'>$k[jenis_cbt]</option>";
                              }
                            }
                        ?>   
                    </select>
                    <select name='kelas' style='padding:4px'>
                        <option value='0' selected>- Pilih kelas -</option>
                        <?php  
                            if ($_SESSION[unit]=="SMP PUTRA") {
                             $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                            } else if($_SESSION[unit]=="SMA PUTRA"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                            } else if($_SESSION[unit]=="SMP PUTRI"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII SMP','VIII SMP','IX SMP') ");
                            } else if($_SESSION[unit]=="SMA PUTRI"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X.IPA','XI.IPA','XI.IPS') ");
                            }else{
                              $kelas = mysql_query("SELECT * FROM rb_kelas");
                            }
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET['kelas']==$k['kode_kelas']){
                                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }else{
                                echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                        ?>   
                    </select>
                    <input type="submit" style='margin-top:-4px' class='btn btn-info btn-sm' value='Tampil'>
                    <?php if (isset($_GET['id_jenis']) AND isset($_GET['kelas'])){ ?>
                      <a href='index.php?view=cbt&act=tambahcbt&id_jenis=<?php echo $_GET['id_jenis']; ?>&kelas=<?php echo $_GET['kelas']; ?>' style='margin-top:-4px' class='btn btn-info btn-sm'>Tambah CBT</a>
                    <?php } ?>
                  </form>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example" class="table table-bordered table-striped">
                    <thead>
                      <tr bgcolor='#cecece'>
                        <th style='width:20px'>No</th>
                        <th>Mata Pelajaran</th>
                        <th>Nama CBT</th>
                        <th>Kelas</th>
                        <th width='120px'>KKM</th>
                        <th width='120px'>Durasi</th>
                        <th width='120px'>Jumlah</th>
                        <?php
                        if($_SESSION['level']!='kepala'){ ?>
                        <th width='100px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET['kelas']) AND isset($_GET['id_jenis'])){
                      $tampil = mysql_query("SELECT a.*, b.namamatapelajaran FROM rb_quiz_cbt a JOIN rb_mata_pelajaran b on a.kode_pelajaran = b.kode_pelajaran where a.id_jenis='$_GET[id_jenis]' AND a.kode_kelas='$_GET[kelas]' AND a.deleted = 'false'");
                              }elseif (isset($_GET['kelas']) AND isset($_GET['id_jenis'])){
          		       $tampil = mysql_query("SELECT a.*, b.namamatapelajaran FROM rb_quiz_cbt a JOIN rb_mata_pelajaran b on a.kode_pelajaran = b.kode_pelajaran where a.id_jenis='$_GET[id_jenis]' AND a.kode_kelas='$_GET[kelas]'");
          		      }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    if ($jenis['jadwal']=='N'){ $waktu = '-'; }else{ $waktu = $r[durasi].' Menit'; }
                    $jmlsoal = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b 
                                                ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$r[id_cbt]'"));
                    echo "<tr><td>$no</td>
                              <td>$r[namamatapelajaran]</td>
                              <td>$r[judul_cbt]</td>
                              <td>$r[kode_kelas]</td>
                              <td>$r[kkm]</td>
                              <td>$waktu</td>
                              <td>$jmlsoal Soal</td>";
                              if($_SESSION['level']!='kepala'){
                                echo "<td style='width:150px !important'>
                                        <div class='btn-group'>
                                          <button type='button' class='btn btn-success btn-xs dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                            Pilih Operasi <span class='caret'></span>
                                          </button>
                                          <ul style='border: 1px solid #e3e3e3;' class='dropdown-menu'>
                                           <li><a href='index.php?view=cbt&act=editcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&kode_pelajaran=$r[kode_pelajaran]&id_cbt=$r[id_cbt]'>Edit/Lihat</a></li>
					    <li><a href='index.php?view=cbt&act=tambahcbtsoal&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$r[id_cbt]'>Tambah Soal</a></li>
                                            <li><a href='index.php?view=cbt&act=jadwalcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$r[id_cbt]'>Set Jadwal CBT</a></li>
                                            <li><a href='index.php?view=cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$r[id_cbt]'>Penilain CBT</a></li>
                                            <li><a onclick=confrimDelete('$r[id_cbt]','$_GET[id_jenis]','$_GET[kelas]')>Hapus CBT</a></li>
                                          </ul>
                                        </div>
                                </td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                  ?>
                    <tbody>
                  </table>
                </div>
                <?php 
                    if (!isset($_GET['kelas']) AND !isset($_GET['id_jenis'])){
                        echo "<center style='padding:60px; color:red'>Silahkan Memilih Jenis CBT dan Kelas Terlebih dahulu...</center>";
                    }
                ?>
                </div>
            </div>

<?php 
}elseif($_GET['act']=='tambahcbt'){
if (isset($_POST['submit'])){
  mysql_query("INSERT INTO rb_quiz_cbt VALUES('','$_GET[id_jenis]','$_GET[kelas]','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_SESSION[id]','".date('Y-m-d H:i:s')."','false')");
  $id = mysql_insert_id();
  echo "<script>document.location='index.php?view=cbt&act=tambahcbtsoal&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$id';</script>";
}

            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Computer Based Test</h3>
                </div>
                <div class='box-body'>";

            echo "<form action='index.php?view=cbt&act=tambahcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]' method='POST'>
                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jenis CBT</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                        <select class='form-control' name='id_jenis' style='padding:4px; border:1px solid orange'>
                        <option value='0' selected>- Pilih Jenis CBT -</option>";
                            $cbt = mysql_query("SELECT * FROM rb_quiz_jenis");
                            while ($k = mysql_fetch_array($cbt)){
                              if ($_GET['id_jenis']==$k['id_jenis']){
                                echo "<option value='$k[id_jenis]' selected>$k[jenis_cbt]</option>";
                              }
                            }

                    echo "</select>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Kelas</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                        <select class='form-control' name='kelas' style='padding:4px; border:1px solid orange'>
                        <option value='0' selected>- Pilih kelas -</option>";
                            $kelas = mysql_query("SELECT * FROM rb_kelas");
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET['kelas']==$k['kode_kelas']){
                                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                    echo "</select>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Mata Pelajaran</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <select class='form-control' name='a'> 
                                <option value='0' selected>- Pilih Mata Pelajaran -</option>"; 
                                $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran where tingkat='$_GET[kelas]'");
                                while($a = mysql_fetch_array($mapel)){
                                  echo "<option value='$a[kode_pelajaran]'>$a[kode_pelajaran] - $a[namamatapelajaran]</option>";
                                }
                            echo "</select>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Judul CBT</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <input type='text' class='required form-control' name='b' placeholder='Masukkan Judul CBT (bisa disamakan dengan nama mata pelajaran)' required>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Ketuntasan / KKM</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <input type='number' class='required form-control' name='c' value='75'>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Durasi (Menit)</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <input type='number' class='required form-control' name='d' value='90'>
                        </div>
                    </div>

                    <div class='form-group'>
                        <div style='margin-left:13%;' class='col-sm-offset-2'>
                            <button type='submit' name='submit' class='btn btn-primary'>Lanjut</button>
                        </div>
                    </div>
                </form>
                </div>
                </div>
            </div>";

}elseif($_GET['act']=='editcbt'){
if (isset($_POST['submit'])){
  // echo "UPDATE rb_quiz_cbt SET id_jenis = '".$_GET[id_jenis]."', kode_kelas = '".$_GET[kelas]."', kode_pelajaran = '".$_POST[a]."', judul_cbt = '".$_POST[b]."', kkm = '".$_POST[c]."', durasi = '".$_POST[d]."', user = '".$_SESSION[id]."', waktu = '".date('Y-m-d H:i:s')."'  WHERE id_cbt = '".$_GET[id_cbt]."'";
  mysql_query("UPDATE rb_quiz_cbt SET id_jenis = '".$_GET[id_jenis]."', kode_kelas = '".$_GET[kelas]."', kode_pelajaran = '".$_POST[a]."', judul_cbt = '".$_POST[b]."', kkm = '".$_POST[c]."', durasi = '".$_POST[d]."', user = '".$_SESSION[id]."', waktu = '".date('Y-m-d H:i:s')."'  WHERE id_cbt = '".$_GET[id_cbt]."'");
  $id = mysql_insert_id();
  echo "<script>document.location='index.php?view=cbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$id';</script>";
}

            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Computer Based Test</h3>
                  <a href='index.php?view=cbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$id'> <button type='button' class='btn btn-info pull-right'>Back</button></a>
                </div>
                <div class='box-body'>";

            echo "<form action='index.php?view=cbt&act=editcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]' method='POST'>
                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jenis CBT</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                        <select class='form-control' name='id_jenis' style='padding:4px; border:1px solid orange'>
                        <option value='0' selected>- Pilih Jenis CBT -</option>";
                            $cbt = mysql_query("SELECT * FROM rb_quiz_jenis");
                            while ($k = mysql_fetch_array($cbt)){
                              if ($_GET['id_jenis']==$k['id_jenis']){
                                echo "<option value='$k[id_jenis]' selected>$k[jenis_cbt]</option>";
                              }
                            }

                    echo "</select>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Kelas</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                        <select class='form-control' name='kelas' style='padding:4px; border:1px solid orange'>
                        <option value='0' selected>- Pilih kelas -</option>";
                            $kelas = mysql_query("SELECT * FROM rb_kelas");
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET['kelas']==$k['kode_kelas']){
                                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                    echo "</select>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Mata Pelajaran</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <select class='form-control' name='a'> 
                                <option value='0' selected>- Pilih Mata Pelajaran -</option>";
                                $mapel = mysql_query("SELECT * FROM rb_mata_pelajaran where tingkat = '$_GET[kelas]'");
                                while($a = mysql_fetch_array($mapel)){
				if ($_GET['kode_pelajaran']==$a['kode_pelajaran']){
                                  echo "<option value='$a[kode_pelajaran]' selected>$a[kode_pelajaran] - $a[namamatapelajaran]</option>";
                                 }
				}
        $judul = mysql_fetch_array(mysql_query("SELECT judul_cbt, durasi, kkm FROM rb_quiz_cbt WHERE id_cbt = '$_GET[id_cbt]'"));
                            echo "</select>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Judul CBT</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <input type='text' class='required form-control' name='b' placeholder='Masukkan Judul CBT (bisa disamakan dengan nama mata pelajaran)' value='".$judul[judul_cbt]."' required>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Ketuntasan / KKM</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <input type='number' class='required form-control' name='c' value='$judul[kkm]'>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Durasi (Menit)</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <input type='number' class='required form-control' name='d' value='$judul[durasi]'>
                        </div>
                    </div>

                    <div class='form-group'>
                        <div style='margin-left:13%;' class='col-sm-offset-2'>
                            <button type='submit' name='submit' class='btn btn-primary'>Lanjut</button>
                        </div>
                    </div>
                </form>
                </div>
                </div>
            </div>";


}elseif($_GET['act']=='tambahcbtsoal'){
if (isset($_POST['submit'])){
    $n = $_POST['jumlah1']+$_POST['jumlah2'];
    for ($i=0; $i<=$n; $i++){
       if (isset($_POST['pilih'.$i])){
        $pilih = $_POST['pilih'.$i];
        mysql_query("INSERT INTO rb_quiz_cbt_soal VALUES('','$_GET[id_cbt]','$pilih','".date('Y-m-d H:i:s')."','$_SESSION[id]')");
       }
    }

  echo "<script>document.location='index.php?view=cbt&act=tambahcbtsoal&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]';</script>";
}

$t = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_kelas, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                      JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran 
                                        JOIN rb_quiz_jenis d ON a.id_jenis=d.id_jenis where a.id_cbt='$_GET[id_cbt]'"));
$objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='objektif' AND a.id_cbt='$_GET[id_cbt]'"));
$essay = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='essay' AND a.id_cbt='$_GET[id_cbt]'"));
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Computer Based Test</h3>
                  <a href='index.php?view=cbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$id'> <button type='button' class='btn btn-info pull-right'>Back</button></a>
                </div>
                <div class='box-body'>
                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Jenis CBT</th>  <td style='border-bottom:1px solid #e3e3e3'> : $t[jenis_cbt]</td></tr>
                          <tr><th scope='row'>Kelas</th>                    <td style='border-bottom:1px solid #e3e3e3'> : $t[nama_kelas]</td></tr>
                          <tr><th scope='row'>Mata Pelajaran</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[namamatapelajaran]</td></tr>
                          <tr><th scope='row'>Judul CBT</th>                <td style='border-bottom:1px solid #e3e3e3'> : $t[judul_cbt]</td></tr>
                        </tbody>
                    </table>
                    </div>

                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Ketuntasan / KKM</th>         <td style='border-bottom:1px solid #e3e3e3'> : $t[kkm]</td></tr>
                          <tr><th scope='row'>Durasi (Menit)</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[durasi]</td></tr>
                          <tr><th scope='row'>Soal Objektif</th>            <td style='border-bottom:1px solid #e3e3e3'> : $objektif</td></tr>
                          <tr><th scope='row'>Soal Essay</th>               <td style='border-bottom:1px solid #e3e3e3'> : $essay</td></tr>
                        </tbody>
                    </table>
                    </div>


                    <div style='clear:both'></div><br>
                    <a style='margin-bottom:5px' data-toggle='modal' href='#tambahsoalcbt' data-target='#tambahsoalcbt' class='btn btn-sm btn-primary'>Tambahkan Soal untuk Test</a>
                    <table class='table table-bordered table-striped'>
                      <thead>
                        <tr bgcolor='#cecece'>
                          <th style='width:20px'>No</th>
                          <th>Pertanyaan / Soal</th>
                          <th>Jenis</th>
                          <th>Bobot</th>
                          <th width='50px'>Action</th>
                        </tr>
                      </thead>
                      <tbody>";
                      $no = 1;
                      $tampil = mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b 
                                                ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$_GET[id_cbt]'");
                      while($r=mysql_fetch_array($tampil)){
                      echo "<tr><td>$no</td>
                                <td>$r[pertanyaan] 
                                  A. ".strip_tags($r['jawab_a'])."<br>
                                  B. ".strip_tags($r['jawab_b'])."<br>
                                  C. ".strip_tags($r['jawab_c'])."<br>
                                  D. ".strip_tags($r['jawab_d'])."<br>
                                  E. ".strip_tags($r['jawab_e'])."</br></br>
                                <font color='red'> <b> Kunci Jawaban : $r[kunci_jawaban]</b></font></td>
                                <td>$r[kategori_soal]</td>
                                <td>$r[bobot]</td>
                                <td style='width:100px !important'><center>
                                   <a class='btn btn-danger btn-xs' title='Lihat Soal' href='index.php?view=cbt&act=tambahcbtsoal&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&hapus=$r[id_cbt_soal]'><span class='glyphicon glyphicon-remove'></span></a>
                                </center></td>
                            </tr>";
                        $no++;
                        }

                        if (isset($_GET['hapus'])){
                          mysql_query("DELETE FROM rb_quiz_cbt_soal where id_cbt_soal='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=cbt&act=tambahcbtsoal&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]';</script>";
                        }
                      echo "<tbody>
                    </table>
                </div>
                </div>
            </div>";

}elseif($_GET['act']=='jadwalcbt'){
if (isset($_POST['submit'])){
  mysql_query("INSERT INTO rb_quiz_jadwal VALUES('','$_GET[id_cbt]','$_POST[a]','$_POST[b]','".tgl_simpan($_POST[c])."','$_POST[cc]','".tgl_simpan($_POST[d])."','$_POST[dd]','".tgl_simpan($_POST[e])."','$_POST[ee]','".date('Y-m-d H:i:s')."','$_SESSION[id]')");
  echo "<script>document.location='index.php?view=cbt&act=jadwalcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]';</script>";
}

$t = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_kelas, c.namamatapelajaran, d.jadwal FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                      JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran 
                                        JOIN rb_quiz_jenis d ON a.id_jenis=d.id_jenis where a.id_cbt='$_GET[id_cbt]'"));
$objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='objektif' AND a.id_cbt='$_GET[id_cbt]'"));
$essay = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='essay' AND a.id_cbt='$_GET[id_cbt]'"));
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Jadwal Computer Based Test</h3>            
                  <a href='index.php?view=cbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$id'> <button type='button' class='btn btn-info pull-right'>Back</button></a>
                </div>
                <div class='box-body'>
                    <div class='col-sm-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Jenis CBT</th>  <td style='border-bottom:1px solid #e3e3e3'> : $t[judul_cbt]</td></tr>
                          <tr><th scope='row'>Kelas</th>                    <td style='border-bottom:1px solid #e3e3e3'> : $t[nama_kelas]</td></tr>
                          <tr><th scope='row'>Mata Pelajaran</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[namamatapelajaran]</td></tr>
                          <tr><th scope='row'>Judul CBT</th>                <td style='border-bottom:1px solid #e3e3e3'> : $t[judul_cbt]</td></tr>
                        </tbody>
                    </table>
                    </div>

                    <div class='col-sm-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Ketuntasan / KKM</th>         <td style='border-bottom:1px solid #e3e3e3'> : $t[kkm]</td></tr>
                          <tr><th scope='row'>Durasi (Menit)</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[durasi]</td></tr>
                          <tr><th scope='row'>Soal Objektif</th>            <td style='border-bottom:1px solid #e3e3e3'> : $objektif</td></tr>
                          <tr><th scope='row'>Soal Essay</th>               <td style='border-bottom:1px solid #e3e3e3'> : $essay</td></tr>
                        </tbody>
                    </table>
                    </div>


                    <div style='clear:both'></div><hr>
                    <div class='col-sm-4 table-responsive'> 
                      <form action='index.php?view=cbt&act=jadwalcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]' method='POST'>
                          <table class='table table-condensed table-hover'>
                              <tbody>
                                <tr><th width='120px' scope='row'>Kelas</th>  <td> <select class='form-control' name='a' style='padding:4px'>
                                    <option value='0' selected>- Pilih kelas -</option>";
                                        $kelas_paralel = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas='$_GET[kelas]'");
                                        while ($k = mysql_fetch_array($kelas_paralel)){
                                          echo "<option value='$k[id_kls_pararel]'>$k[nm_pararel]</option>";
                                        }
                                echo "</select></td></tr>
                                <tr><th scope='row'>Thn Ajaran</th>           <td> <select class='form-control' name='b' style='padding:4px'>
                                    <option value='0' selected>- Pilih Tahun Ajaran -</option>";
                                        $tahun_akademik = mysql_query("SELECT * FROM rb_tahun_akademik");
                                        while ($k = mysql_fetch_array($tahun_akademik)){
                                          echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
                                        }
                                echo "</select></td></tr>";
                                if ($t['jadwal']=='N'){
                                  echo "<tr><th scope='row'>Tgl / Jam Mulai</th>        <td> <input type='text' name='c' class='form-control datepickera' value='".date('d-m-Y')."' style='display:inline-block; width:50%'>  <input type='text' name='cc' class='form-control clockpickera' value='".date('H:i:s')."' style='display:inline-block; width:40%'></td></tr>
                                        <tr><th scope='row'>Tgl / Jam Akhir</th>        <td> <input type='text' name='d' class='form-control datepickerb' value='".date('d-m-Y')."' style='display:inline-block; width:50%'>  <input type='text' name='dd' class='form-control clockpickerb' value='".date('H:i:s')."' style='display:inline-block; width:40%'></td></tr>
                                        <tr><th scope='row'>Tgl / Jam Pembahasan</th>        <td><input type='checkbox' onchange='setPmbhsn()' id='chkPmbhs'> <input type='text' name='e' id='e' class='form-control datepickerb' value='00-00-0000' style='display:inline-block; width:50%' disabled='disabled'>  <input type='text' name='ee' id='ee' class='form-control clockpickerb' value='00:00:00' style='display:inline-block; width:40%' disabled='disabled'></td></tr>";
                                }else{
                                  echo "<tr><th scope='row'>Tgl / Jam Mulai</th>        <td> <input type='text' name='c' class='form-control datepickera' value='".date('d-m-Y')."' style='display:inline-block; width:50%'>  <input type='text' name='cc' class='form-control clockpickera' value='".date('H:i:s')."' style='display:inline-block; width:40%'></td></tr>
                                        <tr><th scope='row'>Tgl / Jam Akhir</th>        <td> <input type='text' name='d' class='form-control datepickerb' value='".date('d-m-Y')."' style='display:inline-block; width:50%'>  <input type='text' name='dd' class='form-control clockpickerb' value='".date('H:i:s')."' style='display:inline-block; width:40%'></td></tr>";
                                }
                              echo "</tbody>
                          </table>
                          <button class='btn btn-primary btn-sm' type='submit' name='submit'> Simpan / Tambahkan Jadwal &nbsp; <span class='glyphicon glyphicon-forward'></span></button>
                      </form>
                    </div>


                    <div class='col-sm-8 table-responsive'> 
                    <table class='table table-bordered table-striped'>
                      <thead>
                        <tr bgcolor='#cecece'>
                          <th style='width:20px'>No</th>
                          <th>Kelas</th>
                          <th>Tahun Ajaran</th>
                          <th>Jadwal</th>
                          <th width='50px'>Action</th>
                        </tr>
                      </thead>
                      <tbody>";
                      $no = 1;
                      $tampil = mysql_query("SELECT * FROM rb_quiz_jadwal a JOIN rb_kls_pararel b 
                                                ON a.id_kls_pararel=b.id_kls_pararel
                                                  JOIN rb_tahun_akademik c ON a.id_tahun_akademik=c.id_tahun_akademik where a.id_cbt='$_GET[id_cbt]'");
                      while($r=mysql_fetch_array($tampil)){
                      if ($t['jadwal']=='N'){ $waktu = tgl_view($r['tgl_mulai'])." $r[jam_mulai] <b style='color:red'>s/d</b> ".tgl_view($r['tgl_akhir'])." $r[jam_akhir]"; }else{ $waktu = tgl_view($r['tgl_mulai'])." $r[jam_mulai]"; }
                      echo "<tr><td>$no</td>
                                <td>$r[nm_pararel]</td>
                                <td>$r[nama_tahun]</td>
                                <td>$waktu</td>
                                <td style='width:100px !important'><center>
                                   <a class='btn btn-danger btn-xs' title='Lihat Soal' href='index.php?view=cbt&act=jadwalcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&hapus=$r[id_jadwal]'><span class='glyphicon glyphicon-remove'></span></a>
                                </center></td>
                            </tr>";
                        $no++;
                        }

                        if (isset($_GET['hapus'])){
                          mysql_query("DELETE FROM rb_quiz_jadwal where id_jadwal='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=cbt&act=jadwalcbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]';</script>";
                        }
                      echo "<tbody>
                    </table>
                    </div>
                </div>
                </div>
            </div>";

}elseif($_GET['act']=='penilaiancbt'){
$t = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_kelas, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                      JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran 
                                        JOIN rb_quiz_jenis d ON a.id_jenis=d.id_jenis where a.id_cbt='$_GET[id_cbt]'"));
$objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='objektif' AND a.id_cbt='$_GET[id_cbt]'"));
$essay = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='essay' AND a.id_cbt='$_GET[id_cbt]'"));
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Computer Based Test</h3>
                   <a href='index.php?view=cbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$id'> <button type='button' class='btn btn-info pull-right'>Back</button></a>
                </div>
                <div class='box-body'>
                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Jenis CBT</th>  <td style='border-bottom:1px solid #e3e3e3'> : $t[jenis_cbt]</td></tr>
                          <tr><th scope='row'>Kelas</th>                    <td style='border-bottom:1px solid #e3e3e3'> : $t[nama_kelas]</td></tr>
                          <tr><th scope='row'>Mata Pelajaran</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[namamatapelajaran]</td></tr>
                          <tr><th scope='row'>Judul CBT</th>                <td style='border-bottom:1px solid #e3e3e3'> : $t[judul_cbt]</td></tr>
                        </tbody>
                    </table>
                    </div>

                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Ketuntasan / KKM</th>         <td style='border-bottom:1px solid #e3e3e3'> : $t[kkm]</td></tr>
                          <tr><th scope='row'>Durasi (Menit)</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[durasi]</td></tr>
                          <tr><th scope='row'>Soal Objektif</th>            <td style='border-bottom:1px solid #e3e3e3'> : $objektif</td></tr>
                          <tr><th scope='row'>Soal Essay</th>               <td style='border-bottom:1px solid #e3e3e3'> : $essay</td></tr>
                        </tbody>
                    </table>
                    </div>

                    <div class='col-xs-12 table-responsive'> 
                    <table class='table table-condensed table-hover'>
                    <tbody>
                    <tr><th width='90px' scope='row'>Pilih Kelas</th>  <td> <select class='form-control' style='padding:4px' onchange=\"document.location.href=this.value\">
                        <option value='' selected>- Pilih -</option>";
                            $kelas_paralel = mysql_query("SELECT a.id_jadwal, b.* FROM `rb_quiz_jadwal` a JOIN rb_kls_pararel b ON a.id_kls_pararel=b.id_kls_pararel where a.id_cbt='$_GET[id_cbt]'");
                            while ($k = mysql_fetch_array($kelas_paralel)){
                              if ($_GET['paralel']==$k['id_kls_pararel']){
                                echo "<option value='index.php?view=cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$k[id_kls_pararel]&id_jadwal=$k[id_jadwal]' selected>$k[nm_pararel]</option>";
                              }else{
                                echo "<option value='index.php?view=cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$k[id_kls_pararel]&id_jadwal=$k[id_jadwal]'>$k[nm_pararel]</option>";
                              }
                            }
                    echo "</select></td></tr>
                    </body>
                    </table>
                    </div>

                    <div style='clear:both'></div><br>
                    <table class='table table-bordered table-striped'>
                      <thead>
                        <tr bgcolor='#cecece'>
                          <th style='width:20px'>No</th>
                          <th>Nama Siswa</th>
                          <th width='150px'><center>Objektif</center></th>
                          <th width='150px'><center>Essay</center></th>
                          <th width='150px'><center>Status</center></th>
                          <th width='150px'><center>Nilai</center></th>
                          <th width='50px'>Action</th>
                        </tr>
                      </thead>
                      <tbody>";
                      $no = 1;
                      $tampil = mysql_query("SELECT * FROM rb_siswa where id_kls_pararel='$_GET[paralel]'");
                      while($r=mysql_fetch_array($tampil)){
                      $objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$_GET[id_cbt]' AND b.kategori_soal='objektif'"));
                      $essay = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$_GET[id_cbt]' AND b.kategori_soal='essay'"));
                      $objektif_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_objektif` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_objektif=c.id_bank_pertanyaan_objektif where b.id_cbt='$_GET[id_cbt]' AND a.id_siswa='$r[id_siswa]' AND b.id_kls_pararel='$_GET[paralel]' AND c.kategori_soal='objektif'"));
                      $essay_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_essai` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_essai=c.id_bank_pertanyaan_objektif where b.id_cbt='$_GET[id_cbt]' AND a.id_siswa='$r[id_siswa]' AND b.id_kls_pararel='$_GET[paralel]' AND c.kategori_soal='essay'"));
                      
                      $tanyaan = $objektif+$essay;
                      $jawab = $objektif_jawab+$essay_jawab;

                      $cek_koreksi = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai_koreksi a JOIN rb_jawaban_essai b ON a.id_jawaban_essai=b.id_jawaban_essai where b.id_siswa='$r[id_siswa]' AND b.id_jadwal='$_GET[id_jadwal]'"));
                      if ($cek_koreksi<$essay){
                        if ($jawab > 0 AND $tanyaan>0 AND $essay>0){ $status = "<button style='width:120px' class='btn btn-xs btn-warning'>Menunggu Koreksi</button>"; }else{ $status = "<button style='width:120px' class='btn btn-xs btn-danger'>Belum Mengerjakan</button>"; }
                        $nilai = 0;
                      }else{
                        if ($jawab > 0 AND $tanyaan>0){ $status = "<button style='width:120px' class='btn btn-xs btn-success'>Selesai</button>"; }else{ $status = "<button style='width:120px' class='btn btn-xs btn-danger'>Belum Mengerjakan</button>"; }
                        $benar_objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kunci_jawaban FROM rb_jawaban_objektif a JOIN rb_bank_pertanyaan_objektif b ON a.id_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.jawaban=b.kunci_jawaban AND a.id_jadwal='$_GET[id_jadwal]' AND a.id_siswa='$r[id_siswa]'"));
                        $benar_essay = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai a JOIN rb_jawaban_essai_koreksi b ON a.id_jawaban_essai=b.id_jawaban_essai where a.id_siswa='$r[id_siswa]' AND a.id_jadwal='$_GET[id_jadwal]' AND b.nilai='1'"));
                        $nilai = number_format(($benar_essay+$benar_objektif)/$objektif+$essay * 100);
                        $soal  = $benar_essay+$benar_objektif;
                        $soal_semua  = $objektif+$essay;
                        $nilai = number_format($soal/$soal_semua * 100);
                      }
                      echo "<tr><td>$no</td>
                                <td>$r[nama]</td>
                                <td align=center>$objektif_jawab / $objektif</td>
                                <td align=center>$essay_jawab / $essay</td>
                                <td align=center>$status</button></td>
                                <td align=center>$nilai</td>
                                <td style='width:100px !important'><center>";
                                if ($jawab > 0 AND $tanyaan>0){
                                   echo "<a class='btn btn-success btn-xs' title='Koreksi Penilaian' href='index.php?view=cbt&act=koreksi&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$_GET[paralel]&id_jadwal=$_GET[id_jadwal]&id_siswa=$r[id_siswa]'><span class='glyphicon glyphicon-list'></span></a>
                                         <a class='btn btn-danger btn-xs' title='Reset Pengerjaan' href='index.php?view=cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$_GET[paralel]&id_jadwal=$_GET[id_jadwal]&hapus=$r[id_siswa]' onclick=\"return confirm('Reset CBT siswa untuk dikerjakan ulang?')\"><span class='glyphicon glyphicon-refresh'></span></a>";
                                }else{
                                   echo "-";
                                }
                                echo "</center></td>
                            </tr>";
                        $no++;
                        }

                        if (isset($_GET['hapus'])){
                          mysql_query("DELETE FROM rb_jawaban_objektif where id_siswa='$_GET[hapus]' AND id_jadwal='$_GET[id_jadwal]'");
                          mysql_query("DELETE FROM rb_jawaban_essai where id_siswa='$_GET[hapus]' AND id_jadwal='$_GET[id_jadwal]'");
                          echo "<script>document.location='index.php?view=cbt&act=penilaiancbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$_GET[paralel]&id_jadwal=$_GET[id_jadwal]';</script>";
                        }
                      echo "<tbody>
                    </table>
                </div>
                </div>
            </div>";

}elseif($_GET['act']=='koreksi'){
$t = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_kelas, c.namamatapelajaran, d.jenis_cbt FROM rb_quiz_cbt a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                      JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran 
                                        JOIN rb_quiz_jenis d ON a.id_jenis=d.id_jenis where a.id_cbt='$_GET[id_cbt]'"));
$objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='objektif' AND a.id_cbt='$_GET[id_cbt]'"));
$essay = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_cbt_soal a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where b.kategori_soal='essay' AND a.id_cbt='$_GET[id_cbt]'"));
$s = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where id_siswa='$_GET[id_siswa]'"));

if ($essay>0){
  $benar_objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kunci_jawaban FROM rb_jawaban_objektif a JOIN rb_bank_pertanyaan_objektif b ON a.id_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.jawaban=b.kunci_jawaban AND a.id_jadwal='$_GET[id_jadwal]' AND a.id_siswa='$_GET[id_siswa]'"));
  $benar_essay = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai a JOIN rb_jawaban_essai_koreksi b ON a.id_jawaban_essai=b.id_jawaban_essai where a.id_siswa='$_GET[id_siswa]' AND a.id_jadwal='$_GET[id_jadwal]' AND b.nilai='1'"));
  $nilai = number_format(($benar_essay+$benar_objektif)/$objektif+$essay * 100);
  $soal  = $benar_essay+$benar_objektif;
  $soal_semua  = $objektif+$essay;
  $nilai = number_format($soal/$soal_semua * 100);
}else{
  $benar_objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kunci_jawaban FROM rb_jawaban_objektif a JOIN rb_bank_pertanyaan_objektif b ON a.id_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.jawaban=b.kunci_jawaban AND a.id_jadwal='$_GET[id_jadwal]' AND a.id_siswa='$_GET[id_siswa]'"));
  $benar_essay = 0;
  $nilai = number_format($benar_objektif/$objektif * 100);
}

            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Koreksi - Computer Based Test</h3>
                </div>
                <div class='box-body table-responsive'>
                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Jenis CBT</th>  <td style='border-bottom:1px solid #e3e3e3'> : $t[jenis_cbt]</td></tr>
                          <tr><th scope='row'>Kelas</th>                    <td style='border-bottom:1px solid #e3e3e3'> : $t[nama_kelas]</td></tr>
                          <tr><th scope='row'>Mata Pelajaran</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[namamatapelajaran]</td></tr>
                          <tr><th scope='row'>Judul CBT</th>                <td style='border-bottom:1px solid #e3e3e3'> : $t[judul_cbt]</td></tr>
                        </tbody>
                    </table>
                    </div>

                    <div class='col-xs-6'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr><th width='120px' scope='row'>Ketuntasan / KKM</th>         <td style='border-bottom:1px solid #e3e3e3'> : $t[kkm]</td></tr>
                          <tr><th scope='row'>Durasi (Menit)</th>           <td style='border-bottom:1px solid #e3e3e3'> : $t[durasi]</td></tr>
                          <tr><th scope='row'>Soal Objektif</th>            <td style='border-bottom:1px solid #e3e3e3'> : $objektif</td></tr>
                          <tr><th scope='row'>Soal Essay</th>               <td style='border-bottom:1px solid #e3e3e3'> : $essay</td></tr>
                        </tbody>
                    </table>
                    </div>

                    <div style='clear:both'></div><br>

                    <div class='col-xs-12'> 
                    <table class='table table-condensed table-hover'>
                        <tbody>
                          <tr class='info'><th width='120px' scope='row'>Nama Siswa</th> <td style='border-bottom:1px solid #e3e3e3'> : $s[nama]</td></tr>
                          <tr class='info'><th scope='row'>Objektif (Benar)</th>         <td style='border-bottom:1px solid #e3e3e3'> : $benar_objektif</td></tr>
                          <tr class='info'><th scope='row'>Essay (Benar)</th>            <td style='border-bottom:1px solid #e3e3e3'> : $benar_essay</td></tr>
                          <tr class='success'><th scope='row'>Nilai</th>                    <td style='border-bottom:1px solid #e3e3e3'> : $nilai</td></tr>
                        </tbody>
                    </table>
                    </div>
                    <table class='table table-bordered table-striped table-condensed'>
                      <thead>
                        <tr bgcolor='#cecece'>
                          <th style='width:20px'>No</th>
                          <th>Soal</th>
                        </tr>
                      </thead>";
                      $no = 1;
                      $soal_essay = mysql_query("SELECT * FROM rb_jawaban_essai a JOIN rb_bank_pertanyaan_objektif b ON a.id_pertanyaan_essai=b.id_bank_pertanyaan_objektif where a.id_siswa='$_GET[id_siswa]' AND a.id_jadwal='$_GET[id_jadwal]'");
                        while($row = mysql_fetch_array($soal_essay)){
                          $query = mysql_query("SELECT * FROM rb_jawaban_essai_koreksi where id_jawaban_essai='$row[id_jawaban_essai]'");
                          if (mysql_num_rows($query)>0){
                            $cek = mysql_fetch_array($query);
                            if ($cek['nilai']==1){ $benar = 'success'; $salah = 'default'; $stat = '<i style="color:red">Benar</i>'; }elseif($cek['nilai']==0){ $benar = 'default'; $salah = 'success'; $stat = '<i style="color:red">Salah</i>'; }
                          }else{
                            $benar = 'default'; $salah = 'default'; $stat = '<i style="color:red">Belum Dikoreksi..</i>';
                          } 
                          echo "<tr>  
                                    <td>$no</td>
                                    <td>$row[pertanyaan]</td>
                                </tr>
                                <tr>
                                    <td><a title='Jawaban Benar' class='btn btn-xs btn-$benar' style='margin-bottom:1px' href='index.php?view=cbt&act=koreksi&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$_GET[paralel]&id_jadwal=$_GET[id_jadwal]&id_siswa=$_GET[id_siswa]&status=1&essai=$row[id_jawaban_essai]'><i class='glyphicon glyphicon-ok'></i></a> 
                                        <a title='Jawaban Salah' class='btn btn-xs btn-$salah' href='index.php?view=cbt&act=koreksi&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$_GET[paralel]&id_jadwal=$_GET[id_jadwal]&id_siswa=$_GET[id_siswa]&status=0&essai=$row[id_jawaban_essai]'><i class='glyphicon glyphicon-remove'></i></a></td>
                                    <td><b>Jawaban Siswa : </b> $stat $row[jawaban_essai] <br></td>
                                </tr>";
                          $no++;
                        }

                        if (isset($_GET['status'])){
                          $cek = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai_koreksi where id_jawaban_essai='$_GET[essai]'"));
                          if ($cek<=0){
                            mysql_query("INSERT INTO rb_jawaban_essai_koreksi VALUES('','$_GET[essai]','$_GET[status]','".date('Y-m-d H:i:s')."')");
                          }else{
                            mysql_query("UPDATE rb_jawaban_essai_koreksi SET nilai='$_GET[status]' where id_jawaban_essai='$_GET[essai]'");
                          }
                          echo "<script>document.location='index.php?view=cbt&act=koreksi&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]&paralel=$_GET[paralel]&id_jadwal=$_GET[id_jadwal]&id_siswa=$_GET[id_siswa]';</script>";
                        }

                    echo "</table>";
                      if (mysql_num_rows($soal_essay)<=0){
                        echo "<center style='padding:6%; color:red'><i>Maaf, tidak ditemukan pertanyaan / Jawaban essay yang perlu dikoreksi!</i></center>";
                      }

          echo "</div>
                </div>
            </div>";
}
?>

<div class="modal fade bs-example-modal-lg" id="tambahsoalcbt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="width: 80%;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h5 class="modal-title" id="myModalLabel">Tambahkan Soal</h5>
      </div>
      <div class="modal-body">
      <?php 
          $m = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_cbt where id_cbt='$_GET[id_cbt]'"));
          echo "<form action='index.php?view=cbt&act=tambahcbtsoal&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]&id_cbt=$_GET[id_cbt]' method='POST'>
                <div class='checkbox-scroll'>
                <div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#panel1' id='panel1-tab' role='tab' data-toggle='tab' aria-controls='panel1' aria-expanded='true'>Objektif </a></li>
                      <li role='presentation' class=''><a href='#panel2' role='tab' id='panel2-tab' data-toggle='tab' aria-controls='panel2' aria-expanded='false'>Essay</a></li>
                    </ul>

                <div id='myTabContent' class='tab-content'>
                  <div role='tabpanel' class='tab-pane fade active in' id='panel1' aria-labelledby='panel1-tab'><br>    
                  <table id='example' class='table table-bordered table-striped'>
                    <thead>
                      <tr bgcolor='#e3e3e3'>
                        <th style='width:20px'>No</th>
                        <th>Pertanyaan objektif</th>
                        <th>Topik Soal</th>
                        <th>Bobot Soal</th>
                        <th>Kelas</th>
                        <th width=60px>Action</th>
                      </tr>
                    </thead>
                    <tbody>";
                    $no = 1;
                    $tampil = mysql_query("SELECT a.*,b.nama_topik FROM rb_bank_pertanyaan_objektif a JOIN rb_bank_topiksoal b on a.id_topiksoal = b.id_topiksoal where a.kode_pelajaran='$m[kode_pelajaran]' AND a.kategori_soal='objektif' order by a.kode_kelas asc ");
                    echo "<input type='hidden' value='".mysql_num_rows($tampil)."' name='jumlah1'>";
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td><b>".strip_tags($r['pertanyaan'])."</b><br>
                                  A. ".strip_tags($r['jawab_a'])."<br>
                                  B. ".strip_tags($r['jawab_b'])."<br>
                                  C. ".strip_tags($r['jawab_c'])."<br>
                                  D. ".strip_tags($r['jawab_d'])."<br>
                                  E. ".strip_tags($r['jawab_e'])."<br></br>
                                    <font color='red'> <b> Kunci Jawaban : $r[kunci_jawaban]</b></font></td>
                              <td>".$r['nama_topik']."</td>
                              <td>".$r['bobot']."</td>
                              <td>".$r['kode_kelas']."</td>
                              <td style='width:80px !important'><center>
                              <input type='checkbox' name='pilih$no' value='$r[id_bank_pertanyaan_objektif]'> Pilih
                              </center></td>
                          </tr>";
                      $no++;
                    }
                    echo "<tbody>
                  </table>
                </div>

                <div role='tabpanel' class='tab-pane fade' id='panel2' aria-labelledby='panel2-tab'><br>
                  <table id='example' class='table table-bordered table-striped'>
                    <thead>
                      <tr bgcolor='#e3e3e3'>
                        <th style='width:20px'>No</th>
                        <th>Pertanyaan Essay</th>
                        <th width=60px>Action</th>
                      </tr>
                    </thead>
                    <tbody>";
                    $noa = 1;
                    $tampila = mysql_query("SELECT * FROM rb_bank_pertanyaan_objektif where kode_pelajaran='$m[kode_pelajaran]' AND kategori_soal='essay'");
                    echo "<input type='hidden' value='".mysql_num_rows($tampila)."' name='jumlah2'>";
                    while($r=mysql_fetch_array($tampila)){
                    echo "<tr><td>$noa</td>
                              <td><b>".strip_tags($r['pertanyaan'])."</b></td>
                              <td style='width:80px !important'><center>
                              <input type='checkbox' name='pilih$noa' value='$r[id_bank_pertanyaan_objektif]'> Pilih
                              </center></td>
                          </tr>";
                      $noa++;
                    }
                    echo "<tbody>
                  </table>
                </div>
                </div>
                </div>

                </div><br>
                <input class='btn btn-primary btn-sm' type='submit' name='submit' value='Masukkan Soal Terpilih'>
                </form>";
      ?>
      <div style='clear:both'></div>
      </div>
    </div>
  </div>
</div>

<?php if ($_GET['act']=='delete') {
  mysql_query("UPDATE rb_quiz_cbt SET deleted = 'true' WHERE id_cbt = '$_GET[id]'");
  echo "<script>document.location='index.php?view=cbt&id_jenis=$_GET[id_jenis]&kelas=$_GET[kelas]';</script>";
}

?>

<script type="text/javascript">
  function setPmbhsn() {
    $("#e").prop("disabled", !$("#chkPmbhs").is(':checked'));
    $("#ee").prop("disabled", !$("#chkPmbhs").is(':checked'));
  }

  function confrimDelete(id,id_jns,kls) {
    var r = confirm("Yakin Akan Hapus CBT!");
    if (r == true) {
      window.location.href = 'index.php?view=cbt&act=delete&id='+id+'&id_jenis='+id_jns+'&kelas='+kls+'';
    }
  }
</script>
