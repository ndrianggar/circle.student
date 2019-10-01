<?php
    $aksi="application/mod_menu/aksi_menu.php";

    switch($_GET['act']){
      default:
       echo "<div class='col-xs-12'>  
                  <div class='box'>
                    <div class='box-header'>
                      <h3 class='box-title'>Menu Website (Multilevel)</h3>
                      <a class='pull-right btn btn-primary btn-sm' href='?view=menu&act=tambah'>Tambahkan Data</a>
                    </div>
                    <div class='box-body'>
                      <table id='example1' class='table table-bordered table-striped'>
                        <thead>
                          <tr>
                            <th style='width:20px'>No</th>
                            <th>Nama Subenu</th>
                            <th>Main Menu</th>
                            <th width='350px'>Link</th>
                            <th>Aktif</th>
                            <th>Position</th>
                            <th>Urutan</th>
                            <th style='width:70px'>Action</th>
                          </tr>
                        </thead>
                        <tbody>";
                        $no=1;
                        $tampil=mysql_query("SELECT * FROM menu order by urutan");
                        while ($row = mysql_fetch_array($tampil)){
                        echo "<tr><td>$no</td>
                                  <td>$row[nama_menu]</td>";
                                $parent=mysql_query("SELECT * FROM menu WHERE id_menu=$row[id_parent] order by urutan");
                                $jml = mysql_num_rows($parent);
                                if ($jml > 0){
                                  while($s = mysql_fetch_array($parent)){
                                    echo"<td>$s[nama_menu]</td>"; 
                                  }
                                }else{
                                    echo"<td>Menu Utama</td>";
                                }
                                  echo "<td><a target='_BLANK' href='$row[link]'>$row[link]</a></td>
                                  <td>$row[aktif]</td>
                                  <td>$row[position]</td>
                                  <td>No $row[urutan]</td>
                                  <td><center>
                                    <a class='btn btn-success btn-xs' title='Edit Data' href='?view=menu&act=edit&id=$row[id_menu]'><span class='glyphicon glyphicon-edit'></span></a>
                                    <a class='btn btn-danger btn-xs' title='Delete Data' href='?view=menu&hapus=$row[id_menu]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                  </center></td>
                              </tr>";
                          $no++;
                        }

                        if (isset($_GET['hapus'])){
                           mysql_query("DELETE FROM menu where id_menu='$_GET[hapus]'");
                           echo "<script>document.location='?view=menu';</script>";
                        }
                      echo "</tbody>
                    </table>
                  </div>
              </div>
            </div>";
      break;

      case "tambah":
        echo "<div class='col-md-12'>
                  <div class='box box-primary'>
                    <div class='box-header with-border'>
                      <h3 class='box-title'>Tambah Menu Website</h3>
                    </div>
                <form class='form-horizontal' role='form' method=POST action='$aksi?view=menu&act=input'>
                  <div class='box-body'>
                    <div class='col-md-12'>
                      <table class='table table-condensed table-bordered'>
                      <tbody>
                        <input type='hidden' name='id' value=''>
                        <tr><th width='120px' scope='row'>Link Menu</th>   <td><input type='text' class='form-control' name='link'></td></tr>
                        <tr><th scope='row'>Level Menu</th>                <td><select name='id_parent' class='form-control'>
                                                                              <option value='0' selected>Menu Utama</option>";
                                                                              $tampil=mysql_query("SELECT * FROM menu ORDER BY id_menu");
                                                                              while($r=mysql_fetch_array($tampil)){
                                                                                 echo "<option value=$r[id_menu]>$r[nama_menu]</option>";
                                                                               }
                        echo "</td></tr>
                        <tr><th scope='row'>Nama Menu</th>                 <td><input type='text' class='form-control' name='nama_menu'></td></tr>
                        <tr><th scope='row'>Position</th>                  <td><input type='radio' name='position' value='Top'> Top <input type='radio' name='position' value='Bottom'> Bottom</td></tr>
                        <tr><th scope='row'>Urutan</th>                    <td><input type='number' class='form-control' name='urutan' style='width:70px'></td></tr>
                      </tbody>
                      </table>
                    </div>
                  </div>
                  <div class='box-footer'>
                        <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                        <a href='index.php?view=menu' class='btn btn-default pull-right'>Cancel</a>
                  </div>
                </form>
                </div>
              </div>";
      break;

      case "edit":
        $r = mysql_fetch_array(mysql_query("SELECT * FROM menu WHERE id_menu='$_GET[id]'"));
        echo "<div class='col-md-12'>
                  <div class='box box-primary'>
                    <div class='box-header with-border'>
                      <h3 class='box-title'>Edit Menu Website</h3>
                    </div>
                <form class='form-horizontal' role='form' method=POST action='$aksi?view=menu&act=update'>
                <input type=hidden name=id value=$r[id_menu]>
                  <div class='box-body'>
                    <div class='col-md-12'>
                      <table class='table table-condensed table-bordered'>
                      <tbody>
                        <tr><th width='120px' scope='row'>Link Menu</th>   <td><input type='text' class='form-control' name='link' value='$r[link]'></td></tr>
                        <tr><th scope='row'>Level Menu</th>                <td><select name='id_parent' class='form-control'>";
                                                                              $tampil = mysql_query("SELECT * FROM menu ORDER BY id_menu");
                                                                               if ($r['parent_id']==0){
                                                                                  echo "<option value=0 selected>Menu Utama</option>";
                                                                               }else{
                                                                                  echo "<option value=0>Menu Utama</option>";
                                                                               }
                                                                             while($w=mysql_fetch_array($tampil)){
                                                                               if ($r['id_parent']==$w['id_menu']){
                                                                                  echo "<option value=$w[id_menu] selected>$w[nama_menu]</option>";
                                                                               }else{
                                                                                  if ($w['id_menu']==$r['id_menu']){
                                                                                    echo "<option value=0>Tanpa Level</option>";
                                                                                  }else{
                                                                                    echo "<option value=$w[id_menu]>$w[nama_menu]</option> </p>";
                                                                                  }
                                                                               }
                                                                             }
                        echo "</td></tr>
                        <tr><th scope='row'>Nama Menu</th>                 <td><input type='text' class='form-control' name='nama_menu' value='$r[nama_menu]'></td></tr>
                        <tr><th scope='row'>Position</th>                  <td>"; if ($r['position']=='Top'){ echo "<input type='radio' name='position' value='Top' checked> Top <input type='radio' name='position' value='Bottom'> Bottom"; }else{ echo "<input type='radio' name='position' value='Top'> Top <input type='radio' name='position' value='Bottom' checked> Bottom"; } echo "</td></tr>
                        <tr><th scope='row'>Urutan</th>                    <td><input type='number' class='form-control' name='urutan' style='width:70px' value='$r[urutan]'></td></tr>
                        <tr><th scope='row'>Aktif</th>                  <td>"; if ($r['aktif']=='Ya'){ echo "<input type=radio name='aktif' value='Ya' checked>Ya <input type=radio name='aktif' value='Tidak'>Tidak"; }else{ echo "<input type=radio name='aktif' value='Ya'>Ya <input type=radio name='aktif' value='Tidak' checked>Tidak"; } echo "</td></tr>
                      </tbody>
                      </table>
                    </div>
                  </div>
                  <div class='box-footer'>
                        <button type='submit' name='submit' class='btn btn-info'>Update</button>
                        <a href='index.php?view=menu' class='btn btn-default pull-right'>Cancel</a>
                  </div>
                </form>
                </div>
              </div>";
      break;  
    }
?>