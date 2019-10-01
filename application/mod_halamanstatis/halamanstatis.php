<?php
  $aksi="application/mod_halamanstatis/aksi_halamanstatis.php";

  switch($_GET['act']){
  default:

echo "<div class='col-xs-12'>  
        <div class='box'>
          <div class='box-header'>
            <h3 class='box-title'>Halaman Baru</h3>
            <a class='pull-right btn btn-primary btn-sm' href='?view=halamanstatis&act=tambah'>Tambahkan Data</a>
          </div>
          <div class='box-body'>
            <table id='example1' class='table table-bordered table-striped'>
              <thead>
                <tr>
                  <th style='width:20px'>No</th>
                  <th>Judul</th>
                  <th>Link</th>
                  <th>Tgl Posting</th>
                  <th>Posisi</th>
                  <th style='width:70px'>Action</th>
                </tr>
              </thead>
              <tbody>";
              $no = 1;
                $tampil = mysql_query("SELECT * FROM halamanstatis ORDER BY id_halaman DESC");
              while($row=mysql_fetch_array($tampil)){
              if ($row[home]!=0){ $home = "Home $row[home]"; }else{ $home = "-"; }
              $tgl_posting=tgl_indo($row['tgl_posting']);
              echo "<tr><td>$no</td>
                        <td>$row[judul]</td>
                        <td><a target='_BLANK' href='index.php?view=detailhalaman&id=$row[id_halaman]'>index.php?view=detailhalaman&id=$row[id_halaman]</a></td>
                        <td>$tgl_posting</td>
                        <td>$home</td>
                        <td><center>
                          <a class='btn btn-success btn-xs' title='Edit Data' href='?view=halamanstatis&act=edit&id=$row[id_halaman]'><span class='glyphicon glyphicon-edit'></span></a>
                          <a class='btn btn-danger btn-xs' title='Delete Data' href='?view=halamanstatis&hapus=$row[id_halaman]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                        </center></td>
                    </tr>";
                $no++;
              }
                if (isset($_GET['hapus'])){
                    mysql_query("DELETE FROM halamanstatis where id_halaman='$_GET[hapus]'");
                   echo "<script>document.location='?view=halamanstatis';</script>";
                }

            echo "</tbody>
          </table>
        </div>
      </div>
    </div>";
  break;    
	  
  case "tambah":
  echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Halaman Baru</h3>
                </div>
              <div class='box-body'>
              <form class='form-horizontal' role='form' method=POST action='$aksi?view=halamanstatis&act=input' enctype='multipart/form-data'>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='120px' scope='row'>Judul</th>   <td><input type='text' class='form-control' name='judul'></td></tr>
                    <tr><th scope='row'>Isi Halaman</th>                 <td><textarea id='editor' class='form-control' name='isi_halaman'></textarea></td></tr>
                    <tr><th scope='row'>Posisi</th>   <td><select class='form-control' name='posisi'>
                                                        <option value='0'>- Pilih -</option>";
                                                        for($i = 1; $i <=4; $i++){
                                                            echo "<option value='$i'>Home $i</option>";
                                                        }
                                                          echo "</select></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php?view=halamanstatis' class='btn btn-default pull-right'>Cancel</a>
              </div>
            </div>
          </div>";
   break;
    
   case "edit":
   $r = mysql_fetch_array(mysql_query("SELECT * FROM halamanstatis WHERE id_halaman='$_GET[id]'"));
   echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Halaman</h3>
                </div>
              <div class='box-body'>
              <form class='form-horizontal' role='form' method=POST action='$aksi?view=halamanstatis&act=update' enctype='multipart/form-data'>
                <input type=hidden name=id value=$r[id_halaman]>
                <div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='120px' scope='row'>Judul</th>   <td><input type='text' class='form-control' name='judul' value='$r[judul]'></td></tr>
                    <tr><th scope='row'>Isi Halaman</th>                 <td><textarea id='editor' class='form-control' name='isi_halaman'>$r[isi_halaman]</textarea></td></tr>
                    <tr><th scope='row'>Posisi</th>   <td><select class='form-control' name='posisi'>
                                                        <option value='0'>- Pilih -</option>";
                                                        for($i = 1; $i <=4; $i++){
                                                            if ($r['home']==$i){
                                                                echo "<option value='$i' selected>Home $i</option>";
                                                            }else{
                                                                echo "<option value='$i'>Home $i</option>";
                                                            }
                                                        }
                                                          echo "</select></td></tr>

                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='index.php?view=halamanstatis' class='btn btn-default pull-right'>Cancel</a>
              </div>
            </div>
          </div>";
	  break;  
   }