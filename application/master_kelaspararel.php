<?php if ($_GET[act]==''){ 
    if (isset($_POST[tambah])){
        $query= mysql_query("INSERT INTO rb_kls_pararel VALUES('','$_POST[a]','$_POST[b]','$_POST[waliKelas]')");
        if ($query){
       echo "<script>document.location='index.php?view=kelaspararel&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=kelaspararel&gagal';</script>";
        }
    }
?> 

      <div class='col-md-3'>
         <div class='box box-info'>
          <div class='box-header with-border'>
             <?php if($_SESSION[level]!='kepala'){ ?>
                  <h3 class='box-title'>Tambah Data Kelas Pararel</h3>
        
                </div>
          
          <div class='box-tools'>
            <div class="box-body no padding" style="display: block;">
              <ul class="nav nav-pills nav-stacked">
              
                <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <table class='table table-condensed table-bordered'>
                <tbody>
                <tr><th width='120px' scope='row'>Kode Kelas<td><select class='form-control' name='a'> 
                                                                            <option value='0' selected>- Pilih Kelas -</option>
                                                                             <?php
                                                                              if ($_SESSION[unit]=="SMP PUTRA") {
                                                                                 $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                                                                              } else if($_SESSION[unit]=="SMA PUTRA"){
                                                                                  $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                                                                              }else if($_SESSION[unit]=="SMP PUTRI"){
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII SMP','VIII SMP','IX SMP') ");
                                                                              }else if($_SESSION[unit]=="SMA PUTRI"){
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X.IPA','XI.IPA','XI.IPS') ");
                                                                              }else{
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas ORDER BY nama_kelas ASC");
                                                                              }
                                                                              while($a = mysql_fetch_array($kelas)){
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                                 }
                                                                             echo "</select></td></tr>";?>              
                                
                    <tr><th scope='row'>Kelas Pararel</th>           <td><input type='text' class='form-control' name='b'></td></tr>
                    <tr>
                      <th scope="row">Wali Kelas</th>
                      <td>
                        <select class="form-control" name="waliKelas">
                          <option value="0" selected="selected">-Pilih Wali Kelas-</option>
                          <?php
                            if (!empty($_SESSION[unit])) {
                              $wali = mysql_query("SELECT nama_guru, nip FROM rb_guru WHERE unit = '$_SESSION[unit]' ORDER BY nama_guru ASC"); 
                            }else{
                              $wali = mysql_query("SELECT nama_guru, nip FROM rb_guru ORDER BY nama_guru ASC"); 
                            }
                            
                            while ($row=mysql_fetch_array($wali)) {
                              echo "<option value='$row[nip]'>$row[nama_guru]</option>";
                            }
                          ?>
                        </select>
                      </td>
                    </tr>
                  </tbody>
                  </table>
                </div>
              </ul></div>
              <div class='box-footer'>
                    <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=ptk'><button class='btn btn-default pull-right'>Cancel</button></a>
                    <?php }?>
                  </div>
              </form>
            </div></div>
      
            <div class="col-md-9">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Kelas Pararel</h3>
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
                        <th>Kode Kelas</th>
                        <th>Nama Kelas</th>
                        <th>Kode Paralel</th>
                        <th>Kelas Pararel</th>
                        <th>Wali Kelas</th>
                        <?php if($_SESSION[level]!='kepala'){ ?>
                        <th style='width:70px'>Action</th>
                        <?php } ?>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    if ($_SESSION[unit]=="SMP PUTRA") {
                      $tampil = mysql_query("SELECT a.*, b.nama_kelas, c.nama_guru FROM rb_kls_pararel a INNER JOIN rb_kelas b on a.kode_kelas = b.kode_kelas LEFT JOIN rb_guru c on c.nip = a.nip where b.kode_kelas in ('VII','VIII','IX') ORDER BY a.id_kls_pararel DESC");
                    } else if($_SESSION[unit]=="SMA PUTRA"){
                      $tampil = mysql_query("SELECT a.*, b.nama_kelas, c.nama_guru FROM rb_kls_pararel a INNER JOIN rb_kelas b on a.kode_kelas = b.kode_kelas LEFT JOIN rb_guru c on c.nip = a.nip where b.kode_kelas in ('X','XI','XII') ORDER BY a.id_kls_pararel DESC");
                    }else if ($_SESSION[unit]=="SMP PUTRI"){
                      $tampil = mysql_query("SELECT a.*, b.nama_kelas, c.nama_guru FROM rb_kls_pararel a INNER JOIN rb_kelas b on a.kode_kelas = b.kode_kelas LEFT JOIN rb_guru c on c.nip = a.nip where b.kode_kelas in ('VII SMP','VIII SMP','IX SMP') ORDER BY a.id_kls_pararel DESC");
                    }else if($_SESSION[unit]=="SMA PUTRI"){  
                      $tampil = mysql_query("SELECT a.*, b.nama_kelas, c.nama_guru FROM rb_kls_pararel a INNER JOIN rb_kelas b on a.kode_kelas = b.kode_kelas LEFT JOIN rb_guru c on c.nip = a.nip where b.kode_kelas in ('X.IPA','XI.IPA','XI.IPS') ORDER BY a.id_kls_pararel DESC");
                    }else{
                      $tampil = mysql_query("SELECT a.*, b.nama_kelas, c.nama_guru FROM rb_kls_pararel a INNER JOIN rb_kelas b on a.kode_kelas = b.kode_kelas LEFT JOIN rb_guru c on c.nip = a.nip ORDER BY a.id_kls_pararel DESC");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[kode_kelas]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[id_kls_pararel]</td>
                              <td>$r[nm_pararel]</td>
                              <td>$r[nama_guru]</td>";
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
<?php 
}elseif($_GET[act]=='edit'){
    if (isset($_POST[update])){
        $query = mysql_query("UPDATE rb_kls_pararel SET kode_kelas = '$_POST[a]',
                                         nm_pararel= '$_POST[b]', nip = '$_POST[waliKelas]' where id_kls_pararel='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=kelaspararel&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=kelaspararel&gagal';</script>";
        }
    }
    $edit = mysql_query("SELECT a.*, b.nama_guru, b.nip FROM rb_kls_pararel a LEFT JOIN rb_guru b on a.nip = b.nip  where id_kls_pararel='$_GET[id]'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Kelas Pararel</h3>
                </div>
              <div class='box-body'>
              <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[id_kls_pararel]'>
                    <tr><th width='120px' scope='row'>Kode Kelas</th> <td><select class='form-control' name='a'> 
                                                                            <option value='0' selected>- Pilih Kelas -</option>";
                                                                     
                                                                              if ($_SESSION[unit]=="SMP PUTRA") {
                                                                                 $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                                                                              } else if($_SESSION[unit]=="SMA PUTRA"){
                                                                                  $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                                                                              }else if($_SESSION[unit]=="SMP PUTRI"){
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII SMP','VIII SMP','IX SMP') ");
                                                                              }else if($_SESSION[unit]=="SMA PUTRI"){
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X.IPA','XI.IPA','XI.IPS') ");
                                                                              }else{
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas ORDER BY nama_kelas ASC");
                                                                              }
                                                                            while($a = mysql_fetch_array($kelas)){
                                                                             
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }
                                                                              else{
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }else{
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                                }
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
            <tr><th scope='row'>Kelas Pararel</th>           <td><input type='text' class='form-control' name='b' value='$s[nm_pararel]'></td></tr>"; ?>
            <tr>
                      <th scope="row">Wali Kelas</th>
                      <td>
                        <select class="form-control" name="waliKelas">
                         <option value='0' selected>- Pilih Guru -</option>
                       <?php

                        $walas= mysql_query("SELECT * FROM rb_guru");
                        while ($a=mysql_fetch_array($walas)) {
                        if($s[nip]==$a[nip]){
                          echo "<option value='$a[nip]' selected>$a[nama_guru]</option>";
                        }else{
                          echo "<option value='$a[nip]'>$a[nama_guru]</option>";
                        }
                      }
                          
                   echo "</select>
                      </td>
                    </tr>";
               echo"</tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='update' class='btn btn-info'>Update</button>
                    <a href='index.php?view=kelaspararel' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
              </form>
            </div>";

 }
?>