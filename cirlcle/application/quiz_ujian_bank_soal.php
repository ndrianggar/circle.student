<?php if ($_GET[act]==''){ ?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Bank Soal Computer Based Test</h3>

                    <select class='pull-right' name='kelas' style='padding:4px' onchange="document.location.href=this.value">
                        <option value='0' selected>- Pilih kelas -</option>
                        <?php  
                            if ($_SESSION[unit]=="SMP") {
                             $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                            }else if($_SESSION[unit]=="SMA"){
                              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                            }else{
                              $kelas = mysql_query("SELECT * FROM rb_kelas");
                            }
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET['kelas']==$k['kode_kelas']){
                                echo "<option value='index.php?view=banksoal&kelas=$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }else{
                                echo "<option value='index.php?view=banksoal&kelas=$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                        ?>   
                    </select>

                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example" class="table table-bordered table-striped">
                    <thead>
                      <tr bgcolor='#cecece'>
                        <th style='width:20px'>No</th>
                        <th width='150px'>Kode Mapel</th>
                        <th>Nama Mapel</th>
                        <?php
                        if($_SESSION['level']!='kepala'){ ?>
                        <th>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php
                    if (isset($_GET['kelas'])){
                      $tampil = mysql_query("SELECT * FROM rb_mata_pelajaran where tingkat='$_GET[kelas]'");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[kode_pelajaran]</td>
                              <td>$r[namamatapelajaran]</td>";
                              if($_SESSION['level']!='kepala'){
                                echo "<td style='width:100px !important'><center>
                                        <a class='btn btn-info btn-xs' title='Lihat Soal' href='index.php?view=banksoal&act=lihatsoal&mapel=$r[kode_pelajaran]&kelas=$_GET[kelas]'><span class='glyphicon glyphicon-search'></span> Lihat Soal</a>
                                      </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }
                  ?>
                    <tbody>
                  </table>
                </div><!-- /.box-body -->
                <?php 
                    if ($_GET['kelas'] == ''){
                        echo "<center style='padding:60px; color:red'>Silahkan Memilih kelas Terlebih dahulu...</center>";
                    }
                ?>
                </div>
            </div>

<?php 
}elseif($_GET['act']=='lihatsoal'){
$d = mysql_fetch_array(mysql_query("SELECT * FROM `rb_mata_pelajaran` where kode_pelajaran='$_GET[mapel]'"));
if (isset($_POST['topik'])){
  mysql_query("INSERT INTO rb_bank_topiksoal VALUES('','$_GET[mapel]','$_POST[topik]')");
  $id = mysql_insert_id();
  echo "<script>document.location='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$id&sukses';</script>";
}
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Bank Soal Computer Based Test</h3>
                </div>
                <div class='box-body'>";

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

                  echo "<div class='col-md-12'>
                  <table class='table table-condensed table-hover'>
                      <tbody>
                        <tr><th width='120px' scope='row'>Kelas</th> <td>$d[tingkat]</td></tr>
                        <tr><th scope='row'>Kode Mapel</th>           <td>$d[kode_pelajaran]</td></tr>
                        <tr><th scope='row'>Nama Mapel</th>           <td>$d[namamatapelajaran]</td></tr>
                        <tr><th scope='row'>Topik Soal</th>           <td><select class='form-control' style='display:inline-block; width:70%' onchange=\"document.location.href=this.value\">
                                                                          <option value=''>- Pilih -</option>";
                                                                        $topik_soal = mysql_query("SELECT * FROM rb_bank_topiksoal where kode_pelajaran='$_GET[mapel]'");
                                                                        while ($k = mysql_fetch_array($topik_soal)){
                                                                          if ($_GET['id_topiksoal']==$k['id_topiksoal']){
                                                                            echo "<option value='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$k[id_topiksoal]' selected>$k[nama_topik]</option>";
                                                                          }else{
                                                                            echo "<option value='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$k[id_topiksoal]'>$k[nama_topik]</option>";
                                                                          }
                                                                        }
                                                                      echo "</select> <a style='margin-top:-3px' class='btn btn btn-primary' data-toggle='modal' href='#tambahtopik' data-target='#tambahtopik'><span class='fa fa-plus'></span></a>";
                                                                            if($_SESSION['level']!='kepala' AND isset($_GET['id_topiksoal'])){
                                                                                echo "<a style='margin-top:-3px; margin-left:5px' class='btn btn-primary' href='index.php?view=banksoal&act=tambahsoalo&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]'><span class='fa fa-plus'></span> Objektif</a>
                                                                                      <a style='margin-top:-3px; margin-left:5px' class='btn btn-primary' href='index.php?view=banksoal&act=tambahsoale&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]'><span class='fa fa-plus'></span> Essay</a>
                                                                                      <a style='margin-top:-3px; margin-left:5px' class='btn btn-success' data-toggle='modal' data-target='#importsoal'><span class='fa fa-file'></span> Import</a>";
                                                                            }
                                                                      echo "</td></tr>
                      </tbody>
                  </table>
                  </div>

                  <table id='example' class='table table-bordered table-striped'>
                    <thead>
                      <tr bgcolor='#e3e3e3'>
                        <th style='width:20px'>No</th>
                        <th>Pertanyaan</th>
                        <th>Jenis</th>";
                        if($_SESSION['level']!='kepala'){
                            echo "<th>Action</th>";
                        }
                      echo "</tr>
                    </thead>
                    <tbody>";
                    $no = 1;
                    $tampil = mysql_query("SELECT * FROM rb_bank_pertanyaan_objektif where kode_kelas='$_GET[kelas]' AND kode_pelajaran='$_GET[mapel]' AND id_topiksoal='$_GET[id_topiksoal]' AND id_materi='0'");
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>".strip_tags($r['pertanyaan'])."</td>
                              <td>$r[kategori_soal]</td>";
                              if($_SESSION['level']!='kepala'){
                                echo "<td style='width:80px !important'><center>
                                        <a data-id='$r[id_bank_pertanyaan_objektif]' class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=banksoal&act=editsoal&id=$r[id_bank_pertanyaan_objektif]&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]&kategori=$r[kategori_soal]'><span class='glyphicon glyphicon-edit'></span></a>
                                        <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=banksoal&act=lihatsoal&hapus=$r[id_bank_pertanyaan_objektif]&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                      </center></td>";
                              }
                            echo "</tr>";
                      $no++;
                      }

                      if (isset($_GET['hapus'])){
                        mysql_query("DELETE FROM rb_bank_pertanyaan_objektif where id_bank_pertanyaan_objektif='$_GET[hapus]'");
                        echo "<script>document.location='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]&sukses';</script>";
                      }

                    echo "<tbody>
                  </table>
                </div>
                </div>
            </div>";

}elseif($_GET['act']=='tambahsoalo'){
$d = mysql_fetch_array(mysql_query("SELECT * FROM `rb_bank_topiksoal` a JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran where a.id_topiksoal='$_GET[id_topiksoal]'"));

if(isset($_POST['soal'])){
  mysql_query("INSERT INTO rb_bank_pertanyaan_objektif VALUES('','0','$_GET[id_topiksoal]','$_GET[kelas]','$_GET[mapel]','$_POST[soal]','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[pembahasan]','$_POST[bobot]','$_POST[kunci]','$_POST[kategori_soal]','$_SESSION[id]')");
  echo "<script>document.location='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]&sukses';</script>";
}

echo "<div class='col-xs-12'>  
        <div class='box'>
          <div class='box-header'>
            <h3 class='box-title'>Tambah Bank Soal Objektif</h3>
          </div>
          <div class='box-body'>

          <table class='table table-condensed table-hover'>
            <tbody>
              <tr><th width='120px' scope='row'>Kelas</th> <td style='border-bottom:1px solid #e3e3e3'>$d[tingkat]</td></tr>
              <tr><th scope='row'>Kode Mapel</th>           <td style='border-bottom:1px solid #e3e3e3'>$d[kode_pelajaran]</td></tr>
              <tr><th scope='row'>Nama Mapel</th>           <td style='border-bottom:1px solid #e3e3e3'>$d[namamatapelajaran]</td></tr>
              <tr><th scope='row'>Topik Soal</th>           <td style='border-bottom:1px solid #e3e3e3'>$d[nama_topik]</td></tr>
            </tbody>
          </table>

          <hr>
          <div class='clear:both'><hr></div>
            <form action='index.php?view=banksoal&act=tambahsoalo&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]' method='POST'>
              <input type='hidden' name='kategori_soal' value='objektif'>
              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Soal</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor' class='required form-control' name='soal'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Bobot</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <input type='text' class='required form-control' name='bobot'>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Kunci</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <select class='form-control' name='kunci'>";
                      $data = array('A','B','C','D','E');
                      for ($i=0; $i < 5; $i++) { 
                        echo "<option value='".$data[$i]."'>Jawaban ".$data[$i]."</option>";
                      }
                      echo "</select>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban A</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor1' class='required form-control' name='a'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban B</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor2' class='required form-control' name='b'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban C</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor3' class='required form-control' name='c'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban D</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor4' class='required form-control' name='d'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban E</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor5' class='required form-control' name='e'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Pembahasan</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor6' class='required form-control' name='pembahasan'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <div style='margin-left:13%;' class='col-sm-offset-2'>
                      <button type='submit' class='btn btn-primary'>Tambahkan</button>
                  </div>
              </div>
          </form>
    </div>
    </div>
  </div>";
}elseif($_GET['act']=='tambahsoale'){
$d = mysql_fetch_array(mysql_query("SELECT * FROM `rb_bank_topiksoal` a JOIN rb_mata_pelajaran c ON a.kode_pelajaran=c.kode_pelajaran where a.id_topiksoal='$_GET[id_topiksoal]'"));

if(isset($_POST['soal'])){
  mysql_query("INSERT INTO rb_bank_pertanyaan_objektif VALUES('','0','$_GET[id_topiksoal]','$_GET[kelas]','$_GET[mapel]','$_POST[soal]','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[pembahasan]','$_POST[bobot]','$_POST[kunci]','$_POST[kategori_soal]','$_SESSION[id]')");
  echo "<script>document.location='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]&sukses';</script>";
}

echo "<div class='col-xs-12'>  
        <div class='box'>
          <div class='box-header'>
            <h3 class='box-title'>Tambah Bank Soal Essay</h3>
          </div>
          <div class='box-body'>

          <table class='table table-condensed table-hover'>
            <tbody>
              <tr><th width='120px' scope='row'>Kelas</th> <td style='border-bottom:1px solid #e3e3e3'>$d[tingkat]</td></tr>
              <tr><th scope='row'>Kode Mapel</th>           <td style='border-bottom:1px solid #e3e3e3'>$d[kode_pelajaran]</td></tr>
              <tr><th scope='row'>Nama Mapel</th>           <td style='border-bottom:1px solid #e3e3e3'>$d[namamatapelajaran]</td></tr>
              <tr><th scope='row'>Topik Soal</th>           <td style='border-bottom:1px solid #e3e3e3'>$d[nama_topik]</td></tr>
            </tbody>
          </table>

          <hr>
          <div class='clear:both'><hr></div>
            <form action='index.php?view=banksoal&act=tambahsoale&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]' method='POST'>
              <input type='hidden' name='kategori_soal' value='essay'>
              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Soal</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor' class='required form-control' name='soal'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Bobot</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <input type='text' class='required form-control' name='bobot'>
                  </div>
              </div>

              <input type='hidden' name='kunci' value='x'>
              <input type='hidden' name='a' value='x'>
              <input type='hidden' name='b' value='x'>
              <input type='hidden' name='c' value='x'>
              <input type='hidden' name='d' value='x'>
              <input type='hidden' name='e' value='x'>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Pembahasan</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor1' class='required form-control' name='pembahasan'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <div style='margin-left:13%;' class='col-sm-offset-2'>
                      <button type='submit' class='btn btn-primary'>Tambahkan</button>
                  </div>
              </div>
          </form>
    </div>
    </div>
  </div>";
}elseif($_GET['act']=='editsoal'){
$d = mysql_fetch_array(mysql_query("SELECT * FROM rb_bank_pertanyaan_objektif a JOIN `rb_mata_pelajaran` b ON a.kode_pelajaran=b.kode_pelajaran
                                      JOIN rb_bank_topiksoal c ON a.id_topiksoal=c.id_topiksoal where a.id_bank_pertanyaan_objektif='$_GET[id]'"));
if (isset($_POST['soal'])){
  mysql_query("UPDATE rb_bank_pertanyaan_objektif SET pertanyaan = '$_POST[soal]', 
                                                      jawab_a    = '$_POST[a]',
                                                      jawab_b    = '$_POST[b]',
                                                      jawab_c    = '$_POST[c]',
                                                      jawab_d    = '$_POST[d]',
                                                      jawab_e    = '$_POST[e]',
                                                      pembahasan = '$_POST[pembahasan]',
                                                      bobot      = '$_POST[bobot]',
                                                      kunci_jawaban = '$_POST[kunci]' where id_bank_pertanyaan_objektif='$_POST[id]'");
    echo "<script>document.location='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]&sukses';</script>";
}

echo "<div class='col-xs-12'>  
        <div class='box'>
          <div class='box-header'>
            <h3 class='box-title'>Edit Bank Soal</h3>
          </div>
          <div class='box-body'>

          <table class='table table-condensed table-hover'>
            <tbody>
              <tr><th width='120px' scope='row'>Kelas</th> <td>$d[tingkat]</td></tr>
              <tr><th scope='row'>Kode Mapel</th>           <td>$d[kode_pelajaran]</td></tr>
              <tr><th scope='row'>Nama Mapel</th>           <td>$d[namamatapelajaran]</td></tr>
              <tr><th scope='row'>Topik Soal</th>           <td>$d[nama_topik]</td></tr>
            </tbody>
          </table>

          <hr>
          <div class='clear:both'><hr></div>
            <form action='index.php?view=banksoal&act=editsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]' method='POST'>
            <input type='hidden' value='$_GET[id]' name='id'>
                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Soal $_GET[kategori]</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor' class='required form-control' name='soal'>$d[pertanyaan]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Bobot</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <input type='text' class='required form-control' value='$d[bobot]' name='bobot'>
                        </div>
                    </div>";

                  if ($_GET['kategori']=='objektif'){
                    echo "<div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Kunci</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <select class='form-control' name='kunci'>";
                            $data = array('A','B','C','D','E');
                            for ($i=0; $i < 5; $i++) { 
                              if ($d['kunci_jawaban']==$data[$i]){
                                echo "<option value='".$data[$i]."' selected>Jawaban ".$data[$i]."</option>";
                              }else{
                                echo "<option value='".$data[$i]."'>Jawaban ".$data[$i]."</option>";
                              }
                            }
                            echo "</select>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban A</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor1' class='required form-control' name='a'>$d[jawab_a]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban B</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor2' class='required form-control' name='b'>$d[jawab_b]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban C</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor3' class='required form-control' name='c'>$d[jawab_c]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban D</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor4' class='required form-control' name='d'>$d[jawab_d]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban E</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor5' class='required form-control' name='e'>$d[jawab_e]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                            <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Pembahasan</label>
                            <div style='background:#fff;' class='input-group col-sm-10'>
                                <textarea id='editor6' class='required form-control' name='pembahasan'>$d[pembahasan]</textarea>
                            </div>
                         </div>";
                  }else{
                    echo "<input type='hidden' name='kunci' value='$d[kunci_jawaban]'>
                          <input type='hidden' name='a' value='$d[jawab_a]'>
                          <input type='hidden' name='b' value='$d[jawab_b]'>
                          <input type='hidden' name='c' value='$d[jawab_c]'>
                          <input type='hidden' name='d' value='$d[jawab_d]'>
                          <input type='hidden' name='e' value='$d[jawab_e]'>

                          <div class='form-group'>
                            <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Pembahasan</label>
                            <div style='background:#fff;' class='input-group col-sm-10'>
                                <textarea id='editor1' class='required form-control' name='pembahasan'>$d[pembahasan]</textarea>
                            </div>
                         </div>";
                  }

              echo "<div class='form-group'>
                        <div style='margin-left:13%;' class='col-sm-offset-2'>
                            <button type='submit' class='btn btn-primary'>Update</button>
                        </div>
                    </div>
                </form>
    </div>
    </div>
  </div>";
}
?>

<div class="modal fade" id="tambahtopik" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h5 class="modal-title" id="myModalLabel">Tambahkan Topik Baru</h5>
      </div>
      <div class="modal-body">
      <?php 
          echo "<form action='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]' method='POST'>
              <div class='form-group'>
                  <label for='inputEmail3' class='col-sm-3 control-label'>Nama Topik</label>
                  <div style='background:#fff;' class='input-group col-sm-8'>
                      <textarea class='required form-control' name='topik'></textarea>
                  </div>
              </div>
              <div class='form-group'>
                  <div class='col-sm-offset-3'>
                      <button type='submit' class='btn btn-primary'>Tambahkan</button>
                  </div>
              </div>
          </form>";
      ?>
      <div style='clear:both'></div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade bs-example-modal-lg" id="tambahsoal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h5 class="modal-title" id="myModalLabel">Tambahkan Soal Objektif</h5>
      </div>
      <div class="modal-body">
      <?php 
          echo "<form action='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]' method='POST'>
              <input type='hidden' name='kategori_soal' value='objektif'>
              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Soal</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea class='required form-control textarea' name='soal'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Bobot</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <input type='text' class='required form-control' name='bobot'>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Kunci</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <select class='form-control' name='kunci'>";
                      $data = array('A','B','C','D','E');
                      for ($i=0; $i < 5; $i++) { 
                        echo "<option value='".$data[$i]."'>Jawaban ".$data[$i]."</option>";
                      }
                      echo "</select>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban A</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea class='required form-control textarea' name='a'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban B</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea class='required form-control textarea' name='b'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban C</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea class='required form-control textarea' name='c'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban D</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea class='required form-control textarea' name='d'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban E</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea class='required form-control textarea' name='e'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Pembahasan</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea class='required form-control textarea' name='pembahasan'></textarea>
                  </div>
              </div>

              <div class='form-group'>
                  <div style='margin-left:13%;' class='col-sm-offset-2'>
                      <button type='submit' class='btn btn-primary'>Tambahkan</button>
                  </div>
              </div>
          </form>";
      ?>
      <div style='clear:both'></div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade bs-example-modal-lg" id="importsoal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h5 class="modal-title" id="myModalLabel">Import Soal</h5>
      </div>
      <div class="modal-body">
      <?php 
          echo "<form action='index.php?view=importsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]' method='POST' enctype='multipart/form-data'>
              <div class='form-group'>
                  <a title='Lihat Format File' href='download_format.php?file=format_soal.xls'><span class='glyphicon glyphicon-file'></span> Ambil Format File</a> 
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>File (.xls)</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <input type='file' class='required form-control' name='fileexcel'>
                  </div>
              </div>

              <div class='form-group'>
                  <div style='margin-left:13%;' class='col-sm-offset-2'>
                      <button type='submit' class='btn btn-primary'>Upload Soal</button>
                  </div>
              </div>
          </form>";
      ?>
      <div style='clear:both'></div>
      </div>
    </div>
  </div>
</div>
