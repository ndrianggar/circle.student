<?php if ($_GET[act]==''){ ?>
            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Materi Pembelajaran</h3>

                    <select class='pull-right' name='kelas' style='padding:4px' onchange="document.location.href=this.value">
                        <option value='0' selected>- Pilih Kelas -</option>
                        <?php 
                            if ($_SESSION[unit]=="SMP PUTRA") {
                               $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                             } else if($_SESSION[unit]=="SMA PUTRA"){
                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                                 }else if($_SESSION[unit]=="SMP PUTRI"){
                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII SMP','VIII SMP','IX') ");
                                 }else if($_SESSION[unit]=="SMA PUTRI"){
                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X.IPA','XI.IPA','XI.IPS') ");
                                }else{   
                               $kelas = mysql_query("SELECT * FROM rb_kelas");
                             }	
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET['kelas']==$k['kode_kelas']){
                                echo "<option value='index.php?view=materi&kelas=$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }else{
                                echo "<option value='index.php?view=materi&kelas=$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
                        ?>   
                    </select>

                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
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
                      $tampil = mysql_query("SELECT * FROM rb_mata_pelajaran where tingkat='$_GET[kelas]' AND nip = '$_SESSION[id]'");

                    }else{      
                    $tampil = mysql_query("SELECT * FROM rb_mata_pelajaran where tingkat='$_GET[kelas]'");                
                       }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[kode_pelajaran]</td>
                              <td>$r[namamatapelajaran]</td>";
                              if($_SESSION['level']!='kepala'){
                                echo "<td style='width:100px !important'><center>
                                        <a class='btn btn-info btn-xs' title='Lihat Soal' href='index.php?view=materi&act=lihatmateri&mapel=$r[kode_pelajaran]&kelas=$_GET[kelas]'><span class='glyphicon glyphicon-search'></span> Lihat Materi</a>
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
                        echo "<center style='padding:60px; color:red'>Silahkan Memilih Kelas Terlebih dahulu...</center>";
                    }
                ?>
                </div>
            </div>

<?php 
}elseif($_GET['act']=='tambahmateri'){
    if (isset($_POST[tambah])){
        $query = mysql_query("INSERT INTO rb_quiz_materi_kategori VALUES('','$_GET[kelas]','$_GET[mapel]','$_POST[a]')");
        echo "<script>document.location='index.php?view=materi&act=lihatmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]';</script>";
    }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Materi</h3>
                 <a class='pull-right btn btn-info' href='index.php?view=materi&act=lihatmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]'>Back</a>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='index.php?view=materi&act=tambahmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='120px' scope='row'>Nama Materi</th> <td><input type='text' class='form-control' name='a'> </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    
                  </div>
              </form>
            </div>";

}elseif($_GET['act']=='editmateri'){
    if (isset($_POST[tambah])){
        $query = mysql_query("UPDATE rb_quiz_materi_kategori SET nama_kategori='$_POST[a]' where id_materi_kategori='$_POST[id]'");
        echo "<script>document.location='index.php?view=materi&act=lihatmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]';</script>";
    }
    $row = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_materi_kategori where id_materi_kategori='$_GET[id]'"));
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Materi</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='index.php?view=materi&act=editmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$row[id_materi_kategori]'>
                    <tr><th width='120px' scope='row'>Nama Materi</th> <td><input type='text' class='form-control' name='a' value='$row[nama_kategori]'> </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
              </div>
              </form>
            </div>";

}elseif($_GET['act']=='lihatmateri'){
echo "<div class='col-xs-12'>  
  <div class='box'>
    <div class='box-header'>
      <h3 class='box-title'>Detail Materi Pembelajaran &nbsp; <a class='pull-right btn btn-info' href='index.php?view=materi&kelas=$_GET[kelas]'>Back</a></h3>
      <a class='pull-right btn btn-primary btn-sm' href='index.php?view=materi&act=tambahmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]'>Tambahkan Data</a>
    </div>
    <div class='box-body table-responsive'>
      <table id='example' class='table table-bordered table-striped'>
        <thead>
          <tr bgcolor='#cecece'>
            <th style='width:20px'>No</th>
            <th>Nama Materi</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>";
        $tampil = mysql_query("SELECT * FROM rb_quiz_materi_kategori where kode_kelas='$_GET[kelas]' AND kode_pelajaran='$_GET[mapel]'");
        $no = 1;
        while($r=mysql_fetch_array($tampil)){
        echo "<tr><td>$no</td>
                  <td>$r[nama_kategori]</td>";
                    echo "<td style='width:170px !important'><center>
                            <a class='btn btn-info btn-xs' title='Lihat Soal' href='index.php?view=materi&act=lihatmateridetail&mapel=$r[kode_pelajaran]&kelas=$_GET[kelas]&idm=$r[id_materi_kategori]'><span class='glyphicon glyphicon-search'></span> Materi Pokok</a>
                            <a class='btn btn-success btn-xs' title='Edit Data' href='?view=materi&act=editmateri&id=$r[id_materi_kategori]&mapel=$_GET[mapel]&kelas=$_GET[kelas]'><span class='glyphicon glyphicon-edit'></span></a>
                    <a class='btn btn-danger btn-xs' title='Delete Data' href='?view=materi&act=hapusmateri&id=$r[id_materi_kategori]&mapel=$_GET[mapel]&kelas=$_GET[kelas]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                          </center></td>";
                echo "</tr>";
          $no++;
          }

        echo "<tbody>
      </table>
    </div>
    </div>
</div>";
}elseif($_GET['act']=='hapusmateri'){
  $delete = mysql_query("DELETE FROM rb_quiz_materi_kategori WHERE id_materi_kategori='$_GET[id]'");
  echo "<script>document.location='index.php?view=materi&act=lihatmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]';</script>";
}elseif($_GET['act']=='lihatmateridetail'){
  header('Content-type: text/html; charset=utf-8');
  $d = mysql_fetch_array(mysql_query("SELECT * FROM `rb_mata_pelajaran` where kode_pelajaran='$_GET[mapel]'"));
  $m = mysql_fetch_array(mysql_query("SELECT * FROM `rb_quiz_materi` where id_materi='$_GET[id_materi]'"));
  $kat = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_materi_kategori where id_materi_kategori='$_GET[idm]'"));
  if (isset($_POST['materi'])){
    mysql_query("INSERT INTO rb_quiz_materi VALUES('','$_GET[idm]','$_POST[materi]','','$_SESSION[id]')");
    $id = mysql_insert_id();
    echo "<script>document.location='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$id&sukses';</script>";
  }

  if (isset($_POST['materi_content'])){
    mysql_query("UPDATE rb_quiz_materi SET materi_content='$_POST[materi_content]' where id_materi='$_GET[id_materi]'");
    echo "<script>document.location='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]&sukses';</script>";
  }

  if(isset($_POST['soal'])){
    mysql_query("INSERT INTO rb_bank_pertanyaan_objektif VALUES('','$_GET[id_materi]','$_GET[id_topiksoal]','$_GET[kelas]','$_GET[mapel]','$_POST[soal]','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[pembahasan]','$_POST[bobot]','$_POST[kunci]','$_POST[kategori_soal]','$_SESSION[id]')");
    echo "<script>document.location='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]&sukses#panel2';</script>";
  }

            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>List Materi Pembelajaran</h3>
                 <a href='index.php?view=materi&act=lihatmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]'> <button type='button' class='btn btn-info pull-right'>Back</button></a>
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

                  echo "<div class='col-md-12 table-responsive'>
                  <table class='table table-condensed table-hover'>
                      <tbody>
                        <tr><th width='120px' scope='row'>Kelas</th> <td>$d[tingkat]</td></tr>
                        <tr><th scope='row'>Kode Mapel</th>           <td>$d[kode_pelajaran]</td></tr>
                        <tr><th scope='row'>Nama Mapel</th>           <td>$d[namamatapelajaran]</td></tr>
                        <tr><th scope='row'>Materi</th>           <td>$kat[nama_kategori]</td></tr>
                        <tr><th scope='row'>Materi Pokok</th>           <td><select class='form-control' style='display:inline-block; width:70%' onchange=\"document.location.href=this.value\">
                                                                          <option value=''>- Pilih -</option>";
                                                                        $topik_soal = mysql_query("SELECT * FROM rb_quiz_materi where id_materi_kategori='$_GET[idm]'");
                                                                        while ($k = mysql_fetch_array($topik_soal)){
                                                                          if ($_GET['id_materi']==$k['id_materi']){
                                                                            echo "<option value='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$k[id_materi]' selected>$k[materi_pokok]</option>";
                                                                          }else{
                                                                            echo "<option value='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$k[id_materi]'>$k[materi_pokok]</option>";
                                                                          }
                                                                        }
                                                                      echo "</select> <a style='margin-top:-3px' class='btn btn btn-primary' data-toggle='modal' href='#tambahmateri' data-target='#tambahmateri'><span class='fa fa-plus'></span></a></td></tr>
                      </tbody>
                  </table>
                  </div>

                  <div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#panel1' id='panel1-tab' role='tab' data-toggle='tab' aria-controls='panel1' aria-expanded='true'>Materi </a></li>
                      <li role='presentation' class=''><a href='#panel2' role='tab' id='panel2-tab' data-toggle='tab' aria-controls='panel2' aria-expanded='false'>Soal Latihan</a></li>
                    </ul>

                    <div id='myTabContent' class='tab-content'>
                      <div role='tabpanel' class='tab-pane fade active in' id='panel1' aria-labelledby='panel1-tab'><br>
                        <form action='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]' method='POST'>
                          <textarea id='editor' class='form-control'  name='materi_content'>$m[materi_content]</textarea><br>
                          <button type='submit' class='btn btn-primary'>Simpan Materi</button>
                        </form>
                      </div>

                      <div role='tabpanel' class='tab-pane fade' id='panel2' aria-labelledby='panel2-tab'><br>";
                      if($_SESSION['level']!='kepala' AND isset($_GET['id_materi'])){
                          echo "<a style='margin-top:-3px; margin-left:5px' class='btn btn-xs btn-primary' href='index.php?view=materi&act=tambahsoalmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]'><span class='fa fa-plus'></span> Tambahkan Soal Objektif</a>";
                          echo "<a style='margin-top:-3px; margin-left:5px' class='btn btn-xs btn-success' data-toggle='modal' href='#tambahsoalessay' data-target='#tambahsoalessay'><span class='fa fa-plus'></span> Soal Essay</a>";
                      }
                      echo "<table id='example' class='table table-bordered table-striped table-responsive'>
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
                        $tampil = mysql_query("SELECT * FROM rb_bank_pertanyaan_objektif where kode_kelas='$_GET[kelas]' AND kode_pelajaran='$_GET[mapel]' AND id_materi='$_GET[id_materi]'");
                        while($r=mysql_fetch_array($tampil)){
                        echo "<tr><td>$no</td>
                                  <td>".strip_tags($r['pertanyaan'])."</td>
                                  <td>$r[kategori_soal]</td>";
                                  if($_SESSION['level']!='kepala'){
                                    echo "<td style='width:80px !important'><center>
                                            <a data-id='$r[id_bank_pertanyaan_objektif]' class='btn btn-success btn-xs' title='Edit Data' href='index.php?view=materi&act=editsoal&id=$r[id_bank_pertanyaan_objektif]&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]'><span class='glyphicon glyphicon-edit'></span></a>
                                            <a class='btn btn-danger btn-xs' title='Delete Data' href='index.php?view=materi&act=lihatmateridetail&hapus=$r[id_bank_pertanyaan_objektif]&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                          </center></td>";
                                  }
                                echo "</tr>";
                          $no++;
                          }

                          if (isset($_GET['hapus'])){
                            mysql_query("DELETE FROM rb_bank_pertanyaan_objektif where id_bank_pertanyaan_objektif='$_GET[hapus]'");
                            echo "<script>document.location='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]&sukses#panel2';</script>";
                          }

                        echo "<tbody>
                      </table>
                      </div>


                    </div>
                  </div>

                </div>
                </div>
            </div>";

}elseif($_GET['act']=='tambahsoalmateri'){
$d = mysql_fetch_array(mysql_query("SELECT * FROM rb_mata_pelajaran where kode_pelajaran='$_GET[mapel]'"));
$m = mysql_fetch_array(mysql_query("SELECT * FROM `rb_quiz_materi` where id_materi='$_GET[id_materi]'"));
$kat = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_materi_kategori where id_materi_kategori='$_GET[idm]'"));
if(isset($_POST['soal'])){
    mysql_query("INSERT INTO rb_bank_pertanyaan_objektif VALUES('','$_GET[id_materi]','$_GET[id_topiksoal]','$_GET[kelas]','$_GET[mapel]','$_POST[soal]','$_POST[a]','$_POST[b]','$_POST[c]','$_POST[d]','$_POST[e]','$_POST[pembahasan]','$_POST[bobot]','$_POST[kunci]','objektif','$_SESSION[id]')");
    echo "<script>document.location='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]&sukses#panel2';</script>";
}

echo "<div class='col-xs-12'>  
        <div class='box'>
          <div class='box-header'>
            <h3 class='box-title'>Tambah Soal Materi</h3>
          </div>
          <div class='box-body'>

          <table class='table table-condensed table-hover'>
            <tbody>
              <tr><th width='120px' scope='row'>Kelas</th>  <td>$d[tingkat]</td></tr>
              <tr><th scope='row'>Kode Mapel</th>           <td>$d[kode_pelajaran]</td></tr>
              <tr><th scope='row'>Nama Mapel</th>           <td>$d[namamatapelajaran]</td></tr>
              <tr><th scope='row'>Materi</th>               <td>$kat[nama_kategori]</td></tr>
              <tr><th scope='row'>Materi Pokok</th>         <td>$m[materi_pokok]</td></tr>
            </tbody>
          </table>

          <hr>
          <div class='clear:both'><hr></div>
            <form action='index.php?view=materi&act=tambahsoalmateri&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]' method='POST'>
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
                            <textarea id='editor1' class='required form-control textarea' name='a'>$d[jawab_a]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban B</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor2' class='required form-control textarea' name='b'>$d[jawab_b]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban C</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor3' class='required form-control textarea' name='c'>$d[jawab_c]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban D</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor4' class='required form-control textarea' name='d'>$d[jawab_d]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban E</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor5' class='required form-control textarea' name='e'>$d[jawab_e]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Pembahasan</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor6' class='required form-control textarea' name='pembahasan'>$d[pembahasan]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <div style='margin-left:13%;' class='col-sm-offset-2'>
                            <button type='submit' class='btn btn-primary'>Update</button>
                        </div>
                    </div>
                </form>
    </div>
    </div>
  </div>";
}elseif($_GET['act']=='editsoal'){
$d = mysql_fetch_array(mysql_query("SELECT * FROM rb_bank_pertanyaan_objektif a JOIN `rb_mata_pelajaran` b ON a.kode_pelajaran=b.kode_pelajaran
                                      where a.id_bank_pertanyaan_objektif='$_GET[id]'"));
$m = mysql_fetch_array(mysql_query("SELECT * FROM `rb_quiz_materi` where id_materi='$_GET[id_materi]'"));
$kat = mysql_fetch_array(mysql_query("SELECT * FROM rb_quiz_materi_kategori where id_materi_kategori='$_GET[idm]'"));
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
    echo "<script>document.location='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]&sukses#panel2';</script>";
}

echo "<div class='col-xs-12'>  
        <div class='box'>
          <div class='box-header'>
            <h3 class='box-title'>Edit Soal Materi</h3>
          </div>
          <div class='box-body'>

          <table class='table table-condensed table-hover'>
            <tbody>
              <tr><th width='120px' scope='row'>Kelas</th>  <td>$d[tingkat]</td></tr>
              <tr><th scope='row'>Kode Mapel</th>           <td>$d[kode_pelajaran]</td></tr>
              <tr><th scope='row'>Nama Mapel</th>           <td>$d[namamatapelajaran]</td></tr>
              <tr><th scope='row'>Materi</th>               <td>$kat[nama_kategori]</td></tr>
              <tr><th scope='row'>Materi Pokok</th>         <td>$m[materi_pokok]</td></tr>
            </tbody>
          </table>

          <hr>
          <div class='clear:both'><hr></div>
            <form action='index.php?view=materi&act=editsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]' method='POST'>
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

                  if ($d['kategori_soal']=='objektif'){
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
                            <textarea id='editor1' class='required form-control textarea' name='a'>$d[jawab_a]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban B</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor2' class='required form-control textarea' name='b'>$d[jawab_b]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban C</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor3' class='required form-control textarea' name='c'>$d[jawab_c]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban D</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor4' class='required form-control textarea' name='d'>$d[jawab_d]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Jawaban E</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor5' class='required form-control textarea' name='e'>$d[jawab_e]</textarea>
                        </div>
                    </div>";
                  }else{
                    echo "<input type='hidden' name='kunci' value='$d[kunci_jawaban]'>
                          <input type='hidden' name='a' value='$d[jawab_a]'>
                          <input type='hidden' name='b' value='$d[jawab_b]'>
                          <input type='hidden' name='c' value='$d[jawab_c]'>
                          <input type='hidden' name='d' value='$d[jawab_d]'>
                          <input type='hidden' name='e' value='$d[jawab_e]'>";
                  }

                    echo "<div class='form-group'>
                        <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Pembahasan</label>
                        <div style='background:#fff;' class='input-group col-sm-10'>
                            <textarea id='editor6' class='required form-control textarea' name='pembahasan'>$d[pembahasan]</textarea>
                        </div>
                    </div>

                    <div class='form-group'>
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

<div class="modal fade" id="tambahmateri" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h5 class="modal-title" id="myModalLabel">Tambahkan Materi Baru</h5>
      </div>
      <div class="modal-body">
      <?php 
          echo "<form action='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]' method='POST'>
              <div class='form-group'>
                  <label for='inputEmail3' class='col-sm-3 control-label'>Nama Materi</label>
                  <div style='background:#fff;' class='input-group col-sm-8'>
                      <textarea class='required form-control' name='materi'></textarea>
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
        <h5 class="modal-title" id="myModalLabel">Tambahkan Soal</h5>
      </div>
      <div class="modal-body">
      <?php 
          echo "<form action='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]' method='POST'>
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

<div class="modal fade bs-example-modal-lg" id="tambahsoalessay" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h5 class="modal-title" id="myModalLabel">Tambahkan Soal Essay</h5>
      </div>
      <div class="modal-body">
      <?php 
          echo "<form action='index.php?view=materi&act=lihatmateridetail&mapel=$_GET[mapel]&kelas=$_GET[kelas]&idm=$_GET[idm]&id_materi=$_GET[id_materi]' method='POST'>
              <input type='hidden' name='kategori_soal' value='essay'>
              <div class='form-group'>
                  <label style='width:13%;' for='inputEmail3' class='col-sm-2 control-label'>Soal</label>
                  <div style='background:#fff;' class='input-group col-sm-10'>
                      <textarea id='editor1' class='required form-control'  name='soal'></textarea>
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
                      <textarea id='editor2'  class='required form-control textarea' name='pembahasan'></textarea>
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

