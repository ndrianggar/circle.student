<?php 
if ($_GET[act]==''){ 

    if (isset($_POST[pindahkelas])){
      // if ($_POST[angkatan]!='' AND $_POST[kelas] != ''){
      //   $jml = mysql_fetch_array(mysql_query("SELECT count(*) as jmlp FROM rb_siswa where id_kls_pararel='$_POST[kelas]' AND kode_kelas AND angkatan='$_POST[angkatan]'"));
      //   echo "1";
      // }elseif ($_POST[angkatan]=='' AND $_POST[kelas] != ''){
        $jml = mysql_fetch_array(mysql_query("SELECT count(*) as jmlp FROM rb_siswa where id_kls_pararel='$_POST[kelas]' AND status_siswa !='Lulus'"));
      //   echo "3";
      // }elseif ($_POST[angkatan]!='' AND $_POST[kelas] == ''){
      //   $jml = mysql_fetch_array(mysql_query("SELECT count(*) as jmlp FROM rb_siswa where angkatan='$_POST[angkatan]'"));
      // }

       $n = $jml[jmlp];
       $kelas = $_POST['kelaspindah'];
       $kelasi = $_POST['kelaspindahinduk'];
       $angkatan = $_POST['angkatanpindah']; 	
       for ($i=0; $i<=$n; $i++){
         if (isset($_POST['pilih'.$i])){
           $nisn = $_POST['pilih'.$i];
          /* if ($angkatan != '' AND $kelas != '' AND $kelasi !=''){*/
             $action = mysql_query("UPDATE rb_siswa SET angkatan='$angkatan', id_kls_pararel='$kelas', kode_kelas='$kelasi' where nisn='$nisn'");
            /*echo "UPDATE rb_siswa SET angkatan='$angkatan', id_kls_pararel='$kelas', kode_kelas='$kelasi' where nisn='$nisn'";*/
       /*    }elseif ($angkatan == '' AND $kelas != ''){*/
              // mysql_query("UPDATE rb_siswa SET id_kls_pararel='$kelas' where nisn='$nisn'");
            /*echo "UPDATE rb_siswa SET angkatan='$angkatan', id_kls_pararel='$kelas', kode_kelas='$kelasi' where nisn='$nisn'<br>";*/
    /*       }elseif ($angkatan != '' AND $kelas == ''){*/
              // mysql_query("UPDATE rb_siswa SET angkatan='$angkatan' where nisn='$nisn'");
            
           
         }
       }
       if ($action) {
            	echo "<div class='alert alert-success alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Sukses!</strong> - Data telah Berhasil Di Proses,..
                          </div>";
            }
     /*  echo "<script>document.location='index.php?view=siswa&angkatan=".$angkatan."&kelas=".$kelas."&kelasi=".$kelasi."';</script>";*/
    }
?> 

<?php
  if (isset($_POST[prosessiswa])){
  		$jmls = mysql_fetch_array(mysql_query("SELECT count(*) as jm FROM rb_siswa where id_kls_pararel='$_GET[kelas]'"));
       
  		$n = $jmls[jm];	
         $statussiswa = $_POST['luluskansiswa'];
          for ($i=0; $i<=$n; $i++){
           if (isset($_POST['pilih'.$i])){
           $nisn = $_POST['pilih'.$i];
          	
                $action = mysql_query("UPDATE rb_siswa SET status_siswa='$statussiswa' where nisn='$nisn'");
              }
            }        
         /*
            echo "<script>document.location='index.php?view=siswa&luluskansiswa=".$statussiswa."&kelas='$_GET[kelas]';</script>";*/

            // echo "document.location='index.php?view=siswa&luluskansiswa=".$statussiswa."&kelas='$_GET[kelas]'";
            if ($action) {
            	echo "<div class='alert alert-success alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Sukses!</strong> - Data telah Berhasil Di Proses,..
                          </div>";
            }
    		
        }


  ?>


            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Semua Data Siswa </h3>
                   <?php if($_SESSION[level]!='kepala'){ ?>
                 <a class='pull-right btn btn-success btn-sm' target='_BLANK' href='print-siswa.php?kelas=<?php echo $_GET[kelas]; ?>&angkatan=<?php echo $_GET[angkatan]; ?>'>Print Siswa</a>
                  <a style='margin-right:5px' class='pull-right btn btn-primary btn-sm' href='index.php?view=siswa&act=tambahsiswa'>Tambahkan Data Siswa</a>
                  <a style='margin-right:5px' class='pull-right btn btn-primary btn-sm' href='index.php?view=siswa&act=importdpodik'>Import Data Siswa Dapodik</a>
                  <a style='margin-right:5px' class='pull-right btn btn-primary btn-sm' href='index.php?view=siswa&act=importsiswa'>Import Data Siswa</a>
		
 		<!-- <a style='margin-right:5px' class='pull-right btn btn-danger btn-sm' href='index.php?view=siswa&hapusall=$nisn[pilih]' onclick=\return confirm('Apa anda yakin untuk hapus Data ini?')\">Hapus</a>
		  -->
                  <?php } ?>
			
			
			
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type="hidden" name='view' value='siswa'>
                    <input type="text" name='angkatan' style='padding:3px' placeholder='Angkatan' value='<?php echo $_GET[angkatan]; ?>'>
                     <select name='kelas' style='padding:4px'>
                        <?php 
                            echo "<option value=''>- Pilih Kelas -</option>";
                            if ($_SESSION[unit]=="SMP PUTRA") {
                               $kelas = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('VII','VIII','IX') ");
                            }else if($_SESSION[unit]=="SMA PUTRA"){
                              $kelas = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('X','XI','XII') ");
                            }else if ($_SESSION[unit]=="SMP PUTRI"){
                                 $kelas = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('VII SMP','VIII SMP','IX SMP') ");
                            }else if($_SESSION[unit]=="SMA PUTRI"){
                              $kelas = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('X.IPA','XI.IPA','XI.IPS') ");
                             }else{ 
                              $kelas = mysql_query("SELECT * FROM rb_kls_pararel");
                            }
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET[kelas]==$k[id_kls_pararel]){
                                echo "<option value='$k[id_kls_pararel]' selected>$k[id_kls_pararel] - $k[nm_pararel]</option>";
                              }else{
                                echo "<option value='$k[id_kls_pararel]'>$k[id_kls_pararel] - $k[nm_pararel]</option>";
                              }
                            }
                        ?>
                    </select>
                    <input type="submit" style='margin-top:-4px' class='btn btn-info btn-sm' value='Lihat'>
                  </form>
                </div><!-- /.box-header -->
                <div class="box-body"style="overflow: auto;">
                <form action='' method='POST'>
                <input type="hidden" name='angkatan' value='<?php echo $_GET[angkatan]; ?>'>
                <input type="hidden" name='kelas' value='<?php echo $_GET[kelas]; ?>'>
                <?php 
                  if (isset($_GET[kelas])){
                    echo "<table id='dataSiswa' class='table table-bordered table-striped'>
                            <thead>
                            <tr><th>All <input type='checkbox' id='ckAll' onchange='toggle(this);'></th>";
                  }else{
                    echo "<table id='table' class='table table-bordered table-striped'>
                            <thead>
                              <tr>";
                  }
                  echo "<th>No</th>
                        <th>NIPD</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
                        <th>Angkatan</th>
                        <th>Jurusan</th>
                        <th>Kelas</th>
                        <th>Kelas Pararel</th>
                        <th>Status Siswa</th>
                        <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>";

                  if($_GET[angkatan] !=''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas
                        LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                  where a.angkatan='$_GET[angkatan]' AND a.status_siswa ='Lulus' ORDER BY a.nama ASC");

                  }elseif ($_GET[kelas] != '' AND $_GET[angkatan] != ''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan
												LEFT JOIN rb_kls_pararel e ON a.id_kls_pararel=e.id_kls_pararel
												  where a.id_kls_pararel='$_GET[kelas]' AND a.angkatan='$_GET[angkatan]' ORDER BY a.nama ASC");
												  
                  }elseif ($_GET[kelas] != '' AND $_GET[angkatan] == ''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas
												LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
												LEFT JOIN rb_kls_pararel e ON a.id_kls_pararel=e.id_kls_pararel
											    where a.id_kls_pararel='$_GET[kelas]' AND a.kode_kelas != 'LULUS' AND a.status_siswa !='Lulus' ORDER BY  a.nama ASC");
												
                  }elseif ($_GET[kelas] == '' AND $_GET[angkatan] != ''){
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas
												LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan
												LEFT JOIN rb_kls_pararel e ON a.id_kls_pararel=e.id_kls_pararel
                                                  where a.status_siswa='Aktif' e.id_kls_pararel='$_GET[kelas] a.angkatan='$_GET[angkatan]'  ORDER BY a.nama ASC");
                    }
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr>";
                            if (isset($_GET[kelas])){
                                echo "<td><input type='checkbox' name='pilih".$no."' value='$r[nisn]'/></td>";
                            }
                              echo "<td>$no</td>
                              <td>$r[nipd]</td>
                              <td>$r[nisn]</td>
                              <td>$r[nama]</td>
                              <td>$r[angkatan]</td>
                              <td>$r[nama_jurusan]</td>
                              <td>$r[nama_kelas]</td>
                              <td>$r[nm_pararel]</td>";?>


                              <?php if($r[status_siswa]=="Lulus"){
                              echo "<td  style='color: #4b4b4b; background: #18dcff;'> <font color='white'>$r[status_siswa]</font></td>";    
                              }else{
                                echo "<td>$r[status_siswa]</td>";
                              }                      

                              if($_SESSION[level]!='kepala'){
                                echo "<td><center>
                                  <a class='btn btn-default btn-xs' title='Lihat Detail' href='?view=siswa&act=detailsiswa&id=$r[nisn]'><span class='glyphicon glyphicon-search'></span></a>
                                  <a class='btn btn-info btn-xs' title='Edit Siswa' href='?view=siswa&act=editsiswa&id=$r[nisn]'><span class='glyphicon glyphicon-edit'></span></a>
                                  <a class='btn btn-success btn-xs' title='Penilaian Diri' href='?view=siswa&act=penilaiandiri&id=$r[nisn]'><span class='glyphicon glyphicon-th-list'></span></a>
                                  <a class='btn btn-warning btn-xs' title='Penilaian Teman' href='?view=siswa&act=penilaianteman&id=$r[nisn]'><span class='glyphicon glyphicon-list'></span></a>
                                  <a class='btn btn-danger btn-xs' title='Delete Siswa' href='?view=siswa&hapus=$r[nisn]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                                </center></td>";
                              }else{
                                  echo "<td><center>
                                  <a class='btn btn-default btn-xs' title='Lihat Detail' href='?view=siswa&act=detailsiswa&id=$r[nisn]&ie=$r[id_kls_pararel]'><span class='glyphicon glyphicon-search'></span></a>
                                  <a class='btn btn-success btn-xs' title='Penilaian Diri' href='?view=siswa&act=penilaiandiri&id=$r[nisn]'><span class='glyphicon glyphicon-th-list'></span></a>
                                  <a class='btn btn-warning btn-xs' title='Penilaian Teman' href='?view=siswa&act=penilaianteman&id=$r[nisn]'><span class='glyphicon glyphicon-list'></span></a>
                                </center></td>";
                              }
                              
                            echo "</tr>";
                      $no++;
                      }
                      if (isset($_GET[hapus])){
                          mysql_query("DELETE FROM rb_siswa where nisn='$_GET[hapus]'");
                          echo "<script>document.location='index.php?view=siswa';</script>";
                      }
                  ?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
                <?php 
                    if ($_GET[kelas] == '' AND $_GET[tahun] == ''){
                        echo "<center style='padding:60px; color:red'>Silahkan Input Angkatan dan Memilih Kelas Terlebih dahulu...</center>";
                    }
                ?>
              </div><!-- /.box -->
              <?php if($_SESSION[level]!='kepala'){
                    if (isset($_GET[kelas])){ ?>
              <div class='box-footer'>
              	
                  Pindah Ke : 
                  <input type="number" name='angkatanpindah' style='padding:3px' placeholder='Angkatan' value='<?php echo $_GET[angkatan]; ?>'>
                  <select name='kelaspindahinduk' style='padding:4px'>
                        <?php 
                            echo "<option value=''>- Pilih Kelas -</option>";
                            $kelasi = mysql_query("SELECT * FROM rb_kelas");
                            while ($k = mysql_fetch_array($kelasi)){
                                echo "<option value='$k[kode_kelas]'> $k[nama_kelas]</option>";
                            }
                        ?>
                    </select>
                  <select name='kelaspindah' style='padding:4px'>
                        <?php 
                            echo "<option value=''>- Pilih Kelas -</option>";
                            $kelas = mysql_query("SELECT * FROM rb_kls_pararel");
                            while ($k = mysql_fetch_array($kelas)){
                                echo "<option value='$k[id_kls_pararel]'> $k[nm_pararel]</option>";
                            }
                        ?>
                    </select>
                  <button style='margin-top:-5px' type='submit' name='pindahkelas' class='btn btn-sm btn-info'>Proses</button>
                  <a href='index.php?view=siswa'><button type='button' class='btn btn-sm  btn-default pull-right'>Cancel</button></a>
              </div>
              <?php }} ?>

              
               <style type="text/css">
                  blink {
                  animation: blinker 0.6s linear infinite;
                  color: #1c87c9;
                 }
                @keyframes blinker {  
                  50% { opacity: 0; }
                 }
                 .blink-one {
                   animation: blinker-one 1s linear infinite;
                 }
                 @keyframes blinker-one {  
                   0% { opacity: 0; }
                 }
                 .blink-two {
                   animation: blinker-two 1s linear infinite;
                 }
                 @keyframes blinker-two {  
                   100% { opacity: 0; }
                </style>
              <div class="box-footer">
               <div><p style="color: red; font-size: 20;"><blink>Luluskan Siswa</blink></p>
                     <select name='luluskansiswa' style='padding:4px'>
                        <option value='' style='color: black;'>- Status Siswa -</option>
                                   <option value='Lulus'>LULUS</option>
                                   <option value='Belum Lulus'>BELUM LULUS</option>
                                   <option value='Tidak Lulus'>TIDAK LULUS</option>

                    </select>

                  <button style='margin-top:-5px' type='submit' name='prosessiswa' class='btn btn-sm btn-info'>Proses</button></p></div>
                </div>
              </form>
            </div>
 

<?php 
}elseif($_GET[act]=='tambahsiswa'){

  if (isset($_POST[tambah])){
      $rtrw = explode('/',$_POST[ai]);
      $rt = $rtrw[0];
      $rw = $rtrw[1];
      $dir_gambar = 'foto_siswa/';
      $filename = basename($_FILES['ao']['name']);
      $filenamee = date("YmdHis").'-'.basename($_FILES['ao']['name']);
      $uploadfile = $dir_gambar . $filenamee;
      if ($filename != ''){      
        if (move_uploaded_file($_FILES['ao']['tmp_name'], $uploadfile)) {
           $query = mysql_query("INSERT INTO rb_siswa VALUES('','$_POST[aa]','$_POST[ac]','$_POST[ad]','$_POST[bd]','$_POST[ab]',
                               '$_POST[bb]','$_POST[bc]','$_POST[ba]','$_POST[be]','$_POST[bf]','$_POST[ah]','$rt','$rw',
                               '$_POST[aj]','$_POST[ak]','$_POST[al]','$_POST[am]','$_POST[bg]','$_POST[bh]','$_POST[bi]',
                               '$_POST[bj]','$_POST[bk]','$_POST[bl]','$_POST[bm]','$_POST[bn]','$filenamee','$_POST[ca]',
                               '$_POST[cb]','$_POST[cc]','$_POST[cd]','$_POST[ce]','$_POST[cf]','$_POST[cg]','$_POST[ch]',
                               '$_POST[ci]','$_POST[cj]','$_POST[ck]','$_POST[cl]','$_POST[cm]','$_POST[cn]','$_POST[co]',
                               '$_POST[cp]','$_POST[cq]','$_POST[cr]','$_POST[cs]','$_POST[af]','$_POST[an]','$_POST[bo]',
                               '','$_POST[ae]','$_POST[ct]','$_POST[ag]','0',,'$_SESSION[unit]')");
        }
      }else{
            $query = mysql_query("INSERT INTO rb_siswa VALUES('','$_POST[aa]','$_POST[ac]','$_POST[ad]','$_POST[bd]','$_POST[ab]',
                               '$_POST[bb]','$_POST[bc]','$_POST[ba]','$_POST[be]','$_POST[bf]','$_POST[ah]','$rt','$rw',
                               '$_POST[aj]','$_POST[ak]','$_POST[al]','$_POST[am]','$_POST[bg]','$_POST[bh]','$_POST[bi]',
                               '$_POST[bj]','$_POST[bk]','$_POST[bl]','$_POST[bm]','$_POST[bn]','','$_POST[ca]',
                               '$_POST[cb]','$_POST[cc]','$_POST[cd]','$_POST[ce]','$_POST[cf]','$_POST[cg]','$_POST[ch]',
                               '$_POST[ci]','$_POST[cj]','$_POST[ck]','$_POST[cl]','$_POST[cm]','$_POST[cn]','$_POST[co]',
                               '$_POST[cp]','$_POST[cq]','$_POST[cr]','$_POST[cs]','$_POST[af]','$_POST[an]','$_POST[bo]',
                               '','$_POST[ae]','$_POST[ct]','$_POST[ag]','0','$_SESSION[unit]')");
            echo "";

      }
	 
        if ($query){
          echo "<script>document.location='index.php?view=siswa&act=detailsiswa&id=".$_POST[ab]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=siswa&act=detailsiswa&id=".$_POST[ab]."&gagal';</script>";
        }
  }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Siswa</h3>
                </div>
                <div class='box-body'>

                  <div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#siswa' id='siswa-tab' role='tab' data-toggle='tab' aria-controls='siswa' aria-expanded='true'>Data Siswa </a></li>
                      <li role='presentation' class=''><a href='#ortu' role='tab' id='ortu-tab' data-toggle='tab' aria-controls='ortu' aria-expanded='false'>Data Orang Tua / Wali</a></li>
                    </ul><br>

                    <div id='myTabContent' class='tab-content'>
                      <div role='tabpanel' class='tab-pane fade active in' id='siswa' aria-labelledby='siswa-tab'>
                          <form action='' method='POST' enctype='multipart/form-data' class='form-horizontal'>
                          <div class='col-md-6'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <tr><th width='130px' scope='row'>NIPD</th> <td><input type='text' class='form-control' name='aa'></td></tr>
                              <tr><th scope='row'>NISN</th> <td><input type='text' class='form-control' name='ab'></td></tr>
                              <tr><th scope='row'>Password</th> <td><input type='text' class='form-control' name='ac'></td></tr>
                              <tr><th scope='row'>Nama Siswa</th> <td><input type='text' class='form-control' name='ad'></td></tr>
                              
																
                              <tr><th scope='row'>Kelas</th> <td><select class='form-control' name='ae'> 
                                                                            <option value='0' selected>- Pilih kelas -</option>"; 
                                                                              if ($_SESSION[unit]=="SMP") {
                                                                                 $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
                                                                              } else if($_SESSION[unit]=="SMA"){
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
                                                                              }else{
                                                                                $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                                              }
                                                                              while($a = mysql_fetch_array($kelas)){
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
							<tr><th scope='row'>Kelas Pararel</th> <td><select class='form-control' name='ct'> 
                                                                            <option value='0' selected>- Pilih Kelas Pararel -</option>"; 
                                                                              if ($_SESSION[unit]=="SMP") {
                                                                                 $kelasp = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('VII','VIII','IX') ");
                                                                              }else if($_SESSION[unit]=="SMA"){
                                                                                $kelasp = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('X','XI','XII') ");
                                                                              }else{
                                                                                $kelasp = mysql_query("SELECT * FROM rb_kls_pararel");
                                                                              }
                                                                              while($a = mysql_fetch_array($kelasp)){
                                                                                  echo "<option value='$a[id_kls_pararel]'>$a[nm_pararel]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Angkatan</th> <td><input type='text' class='form-control' name='af'></td></tr>";
                              if ($_SESSION[unit]=="SMA" || $_SESSION[unit]=="") {
                                echo "<tr><th scope='row'>Jurusan</th> <td><select class='form-control' name='ag'> 
                                                                            <option value='0' selected>- Pilih Jurusan -</option>"; 
                                                                              $jurusan = mysql_query("SELECT * FROM rb_jurusan");
                                                                              while($a = mysql_fetch_array($jurusan)){
                                                                                  echo "<option value='$a[kode_jurusan]'>$a[nama_jurusan]</option>";
                                                                              }
                                                                    echo "</select></td></tr>";
                              }
                              
                              "<tr><th scope='row'>Alamat Siswa</th> <td><textarea class='form-control' name='ah'></textarea></td></tr>
                              <tr><th scope='row'>RT/RW</th> <td><input type='text' class='form-control' value='00/00' name='ai'></td></tr>
                              <tr><th scope='row'>Dusun</th> <td><input type='text' class='form-control' name='aj'></td></tr>
                              <tr><th scope='row'>Kelurahan</th> <td><input type='text' class='form-control' name='ak'></td></tr>
                              <tr><th scope='row'>Kecamatan</th> <td><input type='text' class='form-control' name='al'></td></tr>
                              <tr><th scope='row'>Kode Pos</th> <td><input type='text' class='form-control' name='am'></td></tr>
                              <tr><th scope='row'>Status Awal</th> <td><input type='text' class='form-control' name='an'></td></tr>
                              <tr><th scope='row'>Foto</th>             <td><div style='position:relative;''>
                                                                            <a class='btn btn-primary' href='javascript:;'>
                                                                              <span class='glyphicon glyphicon-search'></span> Browse..."; ?>
                                                                              <input type='file' class='files' name='ao' onchange='$("#upload-file-info").html($(this).val());' accept=".jpg,.png,.jpeg,.gif">
                                                                            <?php echo "</a> <span style='width:155px' class='label label-info' id='upload-file-info'></span>
                                                                          </div>
                              </td></tr>
                            </tbody>
                            </table>
                          </div>
                          <div class='col-md-6'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <tr><th width='130px' scope='row'>NIK</th> <td><input type='text' class='form-control' name='ba'></td></tr>
                              <tr><th scope='row'>Tempat Lahir</th> <td><input type='text' class='form-control' name='bb'></td></tr>
                              <tr><th scope='row'>Tanggal Lahir</th> <td><input type='text' id='tglLahirSiswa' class='form-control date' name='bc' autocomplete='off'></td></tr>
                              <tr><th scope='row'>Jenis Kelamin</th> <td><select class='form-control' name='bd'> 
                                                                            <option value='0' selected>- Pilih Jenis Kelamin -</option>"; 
                                                                              $jk = mysql_query("SELECT * FROM rb_jenis_kelamin");
                                                                              while($a = mysql_fetch_array($jk)){
                                                                                  echo "<option value='$a[id_jenis_kelamin]'>$a[jenis_kelamin]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Agama</th> <td><select class='form-control' name='be'> 
                                                                            <option value='0' selected>- Pilih Agama -</option>"; 
                                                                              $agama = mysql_query("SELECT * FROM rb_agama");
                                                                              while($a = mysql_fetch_array($agama)){
                                                                                  echo "<option value='$a[id_agama]'>$a[nama_agama]</option>";
                                                                              }
                                                                    echo "</select></td></tr>
                              <tr><th scope='row'>Keb. Khusus</th> <td><input type='text' class='form-control' name='bf'></td></tr>
                              <tr><th scope='row'>Jenis Tinggal</th> <td><input type='text' class='form-control' name='bg'></td></tr>
                              <tr><th scope='row'>Transportasi</th> <td><input type='text' class='form-control' name='bh'></td></tr>
                              <tr><th scope='row'>No Telpon</th> <td><input type='number' class='form-control' name='bi'></td></tr>
                              <tr><th scope='row'>No Handpone</th> <td><input type='number' class='form-control' name='bj'></td></tr>
                              <tr><th scope='row'>Alamat Email</th> <td><input type='email' class='form-control' name='bk'></td></tr>
                              <tr><th scope='row'>SKHUN</th> <td><input type='text' class='form-control' name='bl'></td></tr>
                              <tr><th scope='row'>Penerima KPS</th> <td><input type='text' class='form-control' name='bm'></td></tr>
                              <tr><th scope='row'>No KPS</th> <td><input type='text' class='form-control' name='bn'></td></tr>
                              <tr><th scope='row'>Status Siswa</th> <td><input type='radio' name='bo' value='Aktif' checked> Aktif
                                                                        <input type='radio' name='bo' value='Tidak Aktif'> Tidak Aktif </td></tr>
                            </tbody>
                            </table>
                          </div>  
                          <div style='clear:both'></div>
                          <div class='box-footer'>
                            <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                            <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                          </div> 
                      </div>

                      <div role='tabpanel' class='tab-pane fade' id='ortu' aria-labelledby='ortu-tab'>
                          <div class='col-md-12'>
                            <table class='table table-condensed table-bordered'>
                            <tbody>
                              <tr bgcolor=#e3e3e3><th width='130px' scope='row'>Nama Ayah</th> <td><input type='text' class='form-control' name='ca'></td></tr>
                              <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' name='cb'></td></tr>
                              <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' name='cc'></td></tr>
                              <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' name='cd'></td></tr>
                              <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' name='ce'></td></tr>
                              <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' name='cf'></td></tr>
                              <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' name='cg'></td></tr>
                              <tr><th scope='row' coslpan='2'><br></th></tr>
                              <tr bgcolor=#e3e3e3><th scope='row'>Nama Ibu</th> <td><input type='text' class='form-control' name='ch'></td></tr>
                              <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' name='ci'></td></tr>
                              <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' name='cj'></td></tr>
                              <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' name='ck'></td></tr>
                              <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' name='cl'></td></tr>
                              <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' name='cm'></td></tr>
                              <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' name='cn'></td></tr>
                              <tr><th scope='row' coslpan='2'><br></th></tr>
                              <tr bgcolor=#e3e3e3><th scope='row'>Nama Wali</th> <td><input type='text' class='form-control' name='co'></td></tr>
                              <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' name='cp'></td></tr>
                              <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' name='cq'></td></tr>
                              <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' name='cr'></td></tr>
                              <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' name='cs'></td></tr>
                            </tbody>
                            </table>
                          </div>
                          <div class='box-footer'>
                            <button type='submit' name='tambah' class='btn btn-info'>Tambahkan</button>
                            <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                          </div>
                          </form>
                      </div>
                    </div>
                  </div>

                </div>
            </div>
        </div>";
		
}elseif($_GET[act]=='editsiswa'){
  cek_session_siswa();
  if (isset($_POST[update1])){
      $rtrw = explode('/',$_POST[ai]);
      $rt = $rtrw[0];
      $rw = $rtrw[1];
      $dir_gambar = 'foto_siswa/';
      $filename = basename($_FILES['ao']['name']);
      $filenamee = date("YmdHis").'-'.basename($_FILES['ao']['name']);
      $uploadfile = $dir_gambar . $filenamee;
      if ($filename != ''){      
        if (move_uploaded_file($_FILES['ao']['tmp_name'], $uploadfile)){
           $query = mysql_query("UPDATE rb_siswa SET 
                               nipd        = '$_POST[aa]',
                               nisn   = '$_POST[ab]',
                               password         = '$_POST[ac]',
                               nama       = '$_POST[ad]',
                               kode_kelas    = '$_POST[ae]',
							   id_kls_pararel    = '$_POST[ct]',
                               angkatan   = '$_POST[af]',
                               kode_jurusan   = '$_POST[ag]',
                               alamat        = '$_POST[ah]',
                               rt         = '$rt',
                               rw   = '$rw',
                               dusun    = '$_POST[aj]',
                               kelurahan       = '$_POST[ak]',
                               kecamatan     = '$_POST[al]',
                               kode_pos      = '$_POST[am]',
                               status_awal   = '$_POST[an]',
                               foto = '$filenamee',

                               nik = '$_POST[ba]',
                               tempat_lahir = '$_POST[bb]',
                               tanggal_lahir = '$_POST[bc]',
                               id_jenis_kelamin = '$_POST[bd]',
                               id_agama = '$_POST[be]',
                               kebutuhan_khusus = '$_POST[bf]',
                               jenis_tinggal = '$_POST[bg]',
                               alat_transportasi = '$_POST[bh]',
                               telepon = '$_POST[bi]',
                               hp = '$_POST[bj]',
                               email = '$_POST[bk]',
                               skhun = '$_POST[bl]',
                               penerima_kps = '$_POST[bm]',
                               no_kps = '$_POST[bn]',
                               status_siswa = '$_POST[bo]' where nisn='$_POST[id]'");
        }
      }else{
            $query = mysql_query("UPDATE rb_siswa SET 
                               nipd        = '$_POST[aa]',
                               nisn   = '$_POST[ab]',
                               password         = '$_POST[ac]',
                               nama       = '$_POST[ad]',
                               kode_kelas    = '$_POST[ae]',
							   id_kls_pararel    = '$_POST[ct]',
                               angkatan   = '$_POST[af]',
                               kode_jurusan   = '$_POST[ag]',
                               alamat        = '$_POST[ah]',
                               rt         = '$rt',
                               rw   = '$rw',
                               dusun    = '$_POST[aj]',
                               kelurahan       = '$_POST[ak]',
                               kecamatan     = '$_POST[al]',
                               kode_pos      = '$_POST[am]',
                               status_awal   = '$_POST[an]',

                               nik = '$_POST[ba]',
                               tempat_lahir = '$_POST[bb]',
                               tanggal_lahir = '$_POST[bc]',
                               id_jenis_kelamin = '$_POST[bd]',
                               id_agama = '$_POST[be]',
                               kebutuhan_khusus = '$_POST[bf]',
                               jenis_tinggal = '$_POST[bg]',
                               alat_transportasi = '$_POST[bh]',
                               telepon = '$_POST[bi]',
                               hp = '$_POST[bj]',
                               email = '$_POST[bk]',
                               skhun = '$_POST[bl]',
                               penerima_kps = '$_POST[bm]',
                               no_kps = '$_POST[bn]',
                               status_siswa = '$_POST[bo]' where nisn='$_POST[id]'");
      }
        if ($query){
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[ab]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[ab]."&gagal';</script>";
        }
  }

  if (isset($_POST[update2])){
           $query = mysql_query("UPDATE rb_siswa SET 
                               nama_ayah        = '$_POST[ca]',
                               tahun_lahir_ayah   = '$_POST[cb]',
                               pendidikan_ayah         = '$_POST[cc]',
                               pekerjaan_ayah       = '$_POST[cd]',
                               penghasilan_ayah    = '$_POST[ce]',
                               kebutuhan_khusus_ayah   = '$_POST[cf]',
                               no_telpon_ayah   = '$_POST[cg]',

                               nama_ibu        = '$_POST[ch]',
                               tahun_lahir_ibu   = '$_POST[ci]',
                               pendidikan_ibu         = '$_POST[cj]',
                               pekerjaan_ibu       = '$_POST[ck]',
                               penghasilan_ibu    = '$_POST[cl]',
                               kebutuhan_khusus_ibu   = '$_POST[cm]',
                               no_telpon_ibu   = '$_POST[cn]',

                               nama_wali        = '$_POST[co]',
                               tahun_lahir_wali   = '$_POST[cp]',
                               pendidikan_wali         = '$_POST[cq]',
                               pekerjaan_wali       = '$_POST[cr]',
                               penghasilan_wali    = '$_POST[cs]' where nisn='$_POST[id]'");
        if ($query){
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[id]."&sukses';</script>";
        }else{
          echo "<script>document.location='index.php?view=siswa&act=editsiswa&id=".$_POST[id]."&gagal';</script>";
        }
  }
    if ($_SESSION[level] == 'siswa'){
        $nisn = $_SESSION[id];
        $close = 'readonly=on';
    }else{
        $nisn = $_GET[id];
        $close = '';
    }
    $edit = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                  LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan
                                    LEFT JOIN rb_agama e ON a.id_agama=e.id_agama 
                                      where a.nisn='$nisn'");
    $s = mysql_fetch_array($edit);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Siswa</h3>
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

                  if ($_SESSION[level] == 'siswa'){
                    echo "<div class='alert alert-warning alert-dismissible fade in' role='alert'> 
                          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                          <span aria-hidden='true'>×</span></button> <strong>Perhatian!</strong> - Semua Data-data yang ada dibawah ini akan digunakan untuk keperluan pihak sekolah, jadi tolong di isi dengan data sebenarnya dan jika kedapatan data yang diisikan tidak seuai dengan yang sebenarnya, maka pihak sekolah akan memberikan sanksi tegas !!!
                    </div>";
                  }

                  echo "<div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#siswa' id='siswa-tab' role='tab' data-toggle='tab' aria-controls='siswa' aria-expanded='true'>Data Siswa </a></li>
                      <li role='presentation' class=''><a href='#ortu' role='tab' id='ortu-tab' data-toggle='tab' aria-controls='ortu' aria-expanded='false'>Data Orang Tua / Wali</a></li>
                    </ul><br>

                    <div id='myTabContent' class='tab-content'>
                    <div role='tabpanel' class='tab-pane fade active in' id='siswa' aria-labelledby='siswa-tab'>
                        <form action='' method='POST' enctype='multipart/form-data' class='form-horizontal'>
                        <div class='col-md-7'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='17'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                            echo "</th></tr>
                            <input type='hidden' value='$s[nisn]' name='id'>
                            <tr><th width='120px' scope='row'>NIPD</th> <td><input type='text' class='form-control' value='$s[nipd]' name='aa' $close></td></tr>
                            <tr><th scope='row'>NISN</th> <td><input type='text' class='form-control' value='$s[nisn]' name='ab' $close></td></tr>
                            <tr><th scope='row'>Password</th> <td>
                              <input type='password' id='pass' class='' value='$s[password]' name='ac' style='width:86%; padding:4px;'><button type='button' class='btn btn-flat pull-right' onclick='showPass()'><i class='fa fa-eye' id='eye' style='margin:3px; padding :0px;'></i></button>
                            </td></tr>
                            <tr><th scope='row'>Nama Siswa</th> <td><input type='text' class='form-control' value='$s[nama]' name='ad' $close></td></tr>
							<tr><th scope='row'>Kelas</th> <td><select class='form-control' name='ae' $close> 
                                                                          <option value='0' selected>- Pilih Kelas -</option>"; 
                                                                            $kelas = mysql_query("SELECT * FROM rb_kelas");
                                                                            while($a = mysql_fetch_array($kelas)){
                                                                              if ($_SESSION[level] == 'siswa'){
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }
                                                                              }else{
                                                                                if ($a[kode_kelas] == $s[kode_kelas]){
                                                                                  echo "<option value='$a[kode_kelas]' selected>$a[nama_kelas]</option>";
                                                                                }else{
                                                                                  echo "<option value='$a[kode_kelas]'>$a[nama_kelas]</option>";
                                                                                }
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                            <tr><th scope='row'>Kelas Pararel</th> <td><select class='form-control' name='ct' $close> 
                                                                          <option value='0' selected>- Pilih Kelas -</option>"; 
                                                                            $kelas = mysql_query("SELECT * FROM rb_kls_pararel");
                                                                            while($a = mysql_fetch_array($kelas)){
                                                                              if ($_SESSION[level] == 'siswa'){
                                                                                if ($a[id_kls_pararel] == $s[id_kls_pararel]){
                                                                                  echo "<option value='$a[id_kls_pararel]' selected>$a[nm_pararel]</option>";
                                                                                }
                                                                              }else{
                                                                                if ($a[id_kls_pararel] == $s[id_kls_pararel]){
                                                                                  echo "<option value='$a[id_kls_pararel]' selected>$a[nm_pararel]</option>";
                                                                                }else{
                                                                                  echo "<option value='$a[id_kls_pararel]'>$a[nm_pararel]</option>";
                                                                                }
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                            <tr><th scope='row'>Angkatan</th> <td><input type='text' class='form-control' value='$s[angkatan]' name='af' $close></td></tr>
                            <tr><th scope='row'>Jurusan</th> <td><select class='form-control' name='ag' $close> 
                           <option value='0' selected>- Pilih Jurusan -</option>"; 
                              $jurusan = mysql_query("SELECT * FROM rb_jurusan");
                              while($a = mysql_fetch_array($jurusan)){
                                if ($_SESSION[level] == 'siswa'){
                                  if ($a[kode_jurusan] == $s[kode_jurusan]){
                                    echo "<option value='$a[kode_jurusan]' selected>$a[nama_jurusan]</option>";
                                  }
                                }else{
                                  if ($a[kode_jurusan] == $s[kode_jurusan]){
                                    echo "<option value='$a[kode_jurusan]' selected>$a[nama_jurusan]</option>";
                                  }else{
                                    echo "<option value='$a[kode_jurusan]'>$a[nama_jurusan]</option>";
                                  }
                                }
                              }
                                                                  echo "</select></td></tr>
                            <tr><th scope='row'>Alamat Siswa</th> <td><input type='text' class='form-control' value='$s[alamat]' name='ah'></td></tr>
                            <tr><th scope='row'>RT/RW</th> <td><input type='text' class='form-control' value='$s[rt]/$s[rw]' name='ai'></td></tr>
                            <tr><th scope='row'>Dusun</th> <td><input type='text' class='form-control' value='$s[dusun]' name='aj'></td></tr>
                            <tr><th scope='row'>Kelurahan</th> <td><input type='text' class='form-control' value='$s[kelurahan]' name='ak'></td></tr>
                            <tr><th scope='row'>Kecamatan</th> <td><input type='text' class='form-control' value='$s[kecamatan]' name='al'></td></tr>
                            <tr><th scope='row'>Kode Pos</th> <td><input type='text' class='form-control' value='$s[kode_pos]' name='am'></td></tr>
                            <tr><th scope='row'>Status Awal</th> <td><input type='text' class='form-control' value='$s[status_awal]' name='an' $close></td></tr>";
                            if ($_SESSION[level]!="siswa") {
                             echo "<tr><th scope='row'>Ganti Foto</th>             <td><div style='position:relative;''>
                                                                          <a class='btn btn-primary' href='javascript:;'>
                                                                            <span class='glyphicon glyphicon-search'></span> Browse..."; ?>
                                                                            <input type='file' class='files' name='ao' onchange='$("#upload-file-info").html($(this).val());'>
                                                                          <?php echo "</a> <span style='width:155px' class='label label-info' id='upload-file-info'></span>
                                                                        </div>
                            </td></tr>";
                            }
                          echo"</tbody>
                          </table>
                        </div>
                        <div class='col-md-5'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th width='120px' scope='row'>NIK</th> <td><input type='text' class='form-control' value='$s[nik]' name='ba'></td></tr>
                            <tr><th scope='row'>Tempat Lahir</th> <td><input type='text' class='form-control' value='$s[tempat_lahir]' name='bb'></td></tr>
                            <tr><th scope='row'>Tanggal Lahir</th> <td><input type='text' class='form-control' value='$s[tanggal_lahir]' name='bc'></td></tr>
                            <tr><th scope='row'>Jenis Kelamin</th> <td><select class='form-control' name='bd'> 
                                                                          <option value='0' selected>- Pilih Jenis Kelamin -</option>"; 
                                                                            $jk = mysql_query("SELECT * FROM rb_jenis_kelamin");
                                                                            while($a = mysql_fetch_array($jk)){
                                                                              if ($a[id_jenis_kelamin] == $s[id_jenis_kelamin]){
                                                                                echo "<option value='$a[id_jenis_kelamin]' selected>$a[jenis_kelamin]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_jenis_kelamin]'>$a[jenis_kelamin]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                            <tr><th scope='row'>Agama</th> <td><select class='form-control' name='be'> 
                                                                          <option value='0' selected>- Pilih Agama -</option>"; 
                                                                            $agama = mysql_query("SELECT * FROM rb_agama");
                                                                            while($a = mysql_fetch_array($agama)){
                                                                              if ($a[id_agama] == $s[id_agama]){
                                                                                echo "<option value='$a[id_agama]' selected>$a[nama_agama]</option>";
                                                                              }else{
                                                                                echo "<option value='$a[id_agama]'>$a[nama_agama]</option>";
                                                                              }
                                                                            }
                                                                  echo "</select></td></tr>
                            <tr><th scope='row'>Keb. Khusus</th> <td><input type='text' class='form-control' value='$s[kebutuhan_khusus]' name='bf'></td></tr>
                            <tr><th scope='row'>Jenis Tinggal</th> <td><input type='text' class='form-control' value='$s[jenis_tinggal]' name='bg'></td></tr>
                            <tr><th scope='row'>Transportasi</th> <td><input type='text' class='form-control' value='$s[alat_transportasi]' name='bh'></td></tr>
                            <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' value='$s[telepon]' name='bi'></td></tr>
                            <tr><th scope='row'>No Handpone</th> <td><input type='text' class='form-control' value='$s[hp]' name='bj'></td></tr>
                            <tr><th scope='row'>Alamat Email</th> <td><input type='text' class='form-control' value='$s[email]' name='bk'></td></tr>
                            <tr><th scope='row'>SKHUN</th> <td><input type='text' class='form-control' value='$s[skhun]' name='bl'></td></tr>
                            <tr><th scope='row'>Penerima KPS</th> <td><input type='text' class='form-control' value='$s[penerima_kps]' name='bm'></td></tr>
                            <tr><th scope='row'>No KPS</th> <td><input type='text' class='form-control' value='$s[no_kps]' name='bn'></td></tr>
                            <tr><th scope='row'>Status Siswa</th> <td>";
                                                                    if ($s[status_siswa]=='Aktif'){
                                                                        echo "<input type='radio' name='bo' value='Aktif' checked> Aktif
                                                                              <input type='radio' name='bo' value='Tidak Aktif'> Tidak Aktif";
                                                                    }else{
                                                                        echo "<input type='radio' name='bo' value='Aktif'> Aktif
                                                                              <input type='radio' name='bo' value='Tidak Aktif' checked> Tidak Aktif";
                                                                    } 
                                                                    echo "</td></tr>
                          </tbody>
                          </table>
                        </div>  
                        <div style='clear:both'></div>
                        <div class='box-footer'>
                          <button type='submit' name='update1' class='btn btn-info'>Update</button>
                          <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                        </div> 

                        </form>
                    </div>


                    <div role='tabpanel' class='tab-pane fade' id='ortu' aria-labelledby='ortu-tab'>
                        <form action='' method='POST' class='form-horizontal'>
                        <div class='col-md-12'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='22'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                            echo "</th></tr>
                            <input type='hidden' value='$s[nisn]' name='id'>
                            <tr bgcolor=#e3e3e3><th width='130px' scope='row'>Nama Ayah</th> <td><input type='text' class='form-control' value='$s[nama_ayah]' name='ca'></td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' value='$s[tahun_lahir_ayah]' name='cb'></td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' value='$s[pendidikan_ayah]' name='cc'></td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' value='$s[pekerjaan_ayah]' name='cd'></td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' value='$s[penghasilan_ayah]' name='ce'></td></tr>
                            <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' value='$s[kebutuhan_khusus_ayah]' name='cf'></td></tr>
                            <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' value='$s[no_telpon_ayah]' name='cg'></td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Ibu</th> <td><input type='text' class='form-control' value='$s[nama_ibu]' name='ch'></td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' value='$s[tahun_lahir_ibu]' name='ci'></td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' value='$s[pendidikan_ibu]' name='cj'></td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' value='$s[pekerjaan_ibu]' name='ck'></td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' value='$s[penghasilan_ibu]' name='cl'></td></tr>
                            <tr><th scope='row'>Kebutuhan Khusus</th> <td><input type='text' class='form-control' value='$s[kebutuhan_khusus_ibu]' name='cm'></td></tr>
                            <tr><th scope='row'>No Telpon</th> <td><input type='text' class='form-control' value='$s[no_telpon_ibu]' name='cn'></td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Wali</th> <td><input type='text' class='form-control' value='$s[nama_wali]' name='co'></td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td><input type='text' class='form-control' value='$s[tahun_lahir_wali]' name='cp'></td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td><input type='text' class='form-control' value='$s[pendidikan_wali]' name='cq'></td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td><input type='text' class='form-control' value='$s[pekerjaan_wali]' name='cr'></td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td><input type='text' class='form-control' value='$s[penghasilan_wali]' name='cs'></td></tr>
                          </tbody>
                          </table>
                        </div>
                        <div class='box-footer'>
                          <button type='submit' name='update2' class='btn btn-info'>Update</button>
                          <a href='index.php?view=siswa'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                        </div>
                        </form>
                    </div>

                </div>
            </div>";
			
}elseif($_GET[act]=='importdpodik'){
	if(isset($_POST['importdpodik'])){
	
			

				$target = basename($_FILES['filedapodik']['name']) ;
				move_uploaded_file($_FILES['filedapodik']['tmp_name'], $target);
				
				$data = new Spreadsheet_Excel_Reader($_FILES['filedapodik']['name'],false);
							// Cek apakah file yang diupload adalah file Excel 2007 (.xlsx)
							
				//    menghitung jumlah baris file xls
				$baris = $data->rowcount($sheet_index=0);
				
			//    jika kosongkan data dicentang jalankan kode berikut
				$drop = isset( $_POST["drop"] ) ? $_POST["drop"] : 0 ;
				if($drop == 1){
			//             kosongkan tabel pegawai
						 $truncate ="TRUNCATE TABLE dapodiksiswa";
						 mysql_query($truncate);
				};
		
				//    import data excel mulai baris ke-2 (karena tabel xls ada header pada baris 1)
					for ($i=2; $i<=$baris; $i++){
					//ini baris pertama jumlahnya 11
					$nipd		= $data->val($i, 1);
					$nama		= $data->val($i, 2);
					$nisn		= $data->val($i, 3);
					$lahir		= $data->val($i, 4);
					$tgllahir	= $data->val($i, 5);
					$nik 		= $data->val($i, 6);
					$agama		= $data->val($i, 7);
					$alamat		= $data->val($i, 8);
					$rt			= $data->val($i, 9);
					$rw			= $data->val($i, 10);
					$dusun		= $data->val($i, 11);
					
					//ini baris kedua jumlahnya 9
					$kelurahan	= $data->val($i, 12);
					$kecamatan	= $data->val($i, 13);
					$kodepos	= $data->val($i, 14);
					$jnstgl		= $data->val($i, 15);
					$transport	= $data->val($i, 16);
					$telp		= $data->val($i, 17);
					$hp			= $data->val($i, 18);
					$email		= $data->val($i, 19);
					$noskhun	= $data->val($i, 20);
					
					//ini baris ketiga jumlahnya 9
					$trmkps		= $data->val($i, 21);
					$nokps		= $data->val($i, 22);
					$nmayh		= $data->val($i, 23);
					$thnayh		= $data->val($i, 24);
					$pndkayh	= $data->val($i, 25);
					$jobayh		= $data->val($i, 26);
					$hslayh		= $data->val($i, 27);
					$nikayh		= $data->val($i, 28);	
				
					//ini baris keempat jumlahnya 9
					$nmibu		= $data->val($i, 29);
					$thnibu		= $data->val($i, 30);
					$pndkibu	= $data->val($i, 31);
					$jobibu		= $data->val($i, 32);
					$hslibu		= $data->val($i, 33);
					$nikibu		= $data->val($i, 34);
					$nmwali		= $data->val($i, 35);
					$thnwali	= $data->val($i, 36);
				    $pndkwali   = $data->val($i, 37);
			
					//ini baris kelima jumlahnya 9
					$jobwali    = $data->val($i, 38);
					$hslwali	= $data->val($i, 39);
					$nikwali	= $data->val($i, 40);
					$kelas		= $data->val($i, 41);
					$npun		= $data->val($i, 42);
					$srijazh	= $data->val($i, 43);
					$trmkip		= $data->val($i, 44);
					$nokip		= $data->val($i, 45);
					$nmkip		= $data->val($i, 46);
					
					//ini baris keenam jumlahnya 10
					$nokks		= $data->val($i, 47);
					$noregakta	= $data->val($i, 48);
					$nmbank		= $data->val($i, 49);
					$norek		= $data->val($i, 50);
					$nmrek		= $data->val($i, 51);
					$pipst		= $data->val($i, 52);
					$pipnote	= $data->val($i, 53);
					$khusus		= $data->val($i, 54);
					$aslskl		= $data->val($i, 55);
					$anakke		= $data->val($i, 56);
					
					$query ="INSERT INTO dapodiksiswa (nipd, nama, nisn, lahir, tgllahir, nik, agama, alamat, rt, rw, dusun, kelurahan,
					                              kecamatan, kodepos, jnstgl, transport, telp, hp, email, noskhun, trmkps, nokps,
												  nmayh, thnayh, pndkayh, jobayh, hslayh, nikayh, nmibu, thnibu, pndkibu, jobibu,
												  hslibu, nikibu, nmwali, thnwali, pndkwali, jobwali, hslwali, nikwali, kelas, npun,
												  srijazh, trmkip, nokip, nmkip, nokks, noregakta, nmbank, norek, nmrek, pipst, pipnote,
												  khusus, aslskl, anakke)
							VALUES('$nipd','$nama','$nisn','$lahir','$tgllahir','$nik','$agama','$alamat','$rt','$rw','$dusun','$kelurahan','
												$kecamatan','$kodepos','$jnstgl','$transport','$telp','$hp','$email','$noskhun','$trmkps','$nokps','
												$nmayh','$thnayh','$pndkayh','$jobayh','$hslayh','$nikayh','$nmibu','$thnibu','$pndkibu','$jobibu','
												$hslibu','$nikibu','$nmwali','$thnwali','$pndkwali','$jobwali','$hslwali','$nikwali','$kelas','$npun','
												$srijazh','$trmkip','$nokip','$nmkip','$nokks','$noregakta','$nmbank','$norek','$nmrek','$pipst','$pipnote
												','$khusus','$aslskl','$anakke')";
												
												
					
					$hasil = mysql_query($query);
					}
					
					 if(!$hasil){
					//jika import gagal
						die(mysql_error());
						}else{
					//jika impor berhasil
					echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data berhasil di import</div>';
							}
    
					//hapus file xls yang udah dibaca
					unlink($_FILES['filedapodik']['name']);
				}
					
					
				
		
		echo"
			<section id='main-content'>
				<div class='row mt'>
          		    <div class='col-lg-12'>
                      <div class='panel panel-success'>
                        <div class='panel-heading'>
                        <h3 class='panel-title'><i class='fa fa-user'></i> Form Import Data Dapodik</h3> 
                        </div>
						<div class='panel-body'>
                        <div class='alert alert-info alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button><h4>Pastikan Extensi File Excel yang digunakan excel 2003 (.xls) untuk format excel anda bisa download dibawah ini</a></h4></div>
						<div style='padding: 0 15px;'>
		
						<a href='index.php?view=siswa&act=importdpodik' class='btn btn-danger pull-right'>
						<span class='glyphicon glyphicon-remove'></span> Cancel
						</a>
			
			<!-- Buat sebuah tag form dan arahkan action nya ke file ini lagi -->
			<form method='post' name='myForm' action='' onSubmit='return validateForm()' enctype='multipart/form-data'>
				<a href='import_data/formatdata.xls'class='btn btn-default'>
					<span class='glyphicon glyphicon-download'></span>
					Download Format
				</a><br><br>
				
			
				<input type='file' id='filedapodik' name='filedapodik' class='pull-left' accept='.xls,.xlsx'>
				<button type='submit' name='importdpodik' class='btn btn-success btn-sm'>	
					<span class='glyphicon glyphicon-eye-open'></span> IMPORT
				</button>
			</form>
			
			</div>
			</div>
		  </div>
		  </section>
		  </section>";

}elseif($_GET[act]=='importsiswa'){

	if(isset($_POST['importsiswa'])){
	

				$target = basename($_FILES['filesiswaall']['name']) ;
				move_uploaded_file($_FILES['filesiswaall']['tmp_name'], $target);
				
				$data = new Spreadsheet_Excel_Reader($_FILES['filesiswaall']['name'],false);
							// Cek apakah file yang diupload adalah file Excel 2007 (.xlsx)
							
				//    menghitung jumlah baris file xls
				$baris = $data->rowcount($sheet_index=0);
				
			//    jika kosongkan data dicentang jalankan kode berikut
				$drop = isset( $_POST["drop"] ) ? $_POST["drop"] : 0 ;
				if($drop == 1){
			//             kosongkan tabel siswa
						 $truncate ="TRUNCATE TABLE rb_siswa";
						 mysql_query($truncate);
				};
		
				//    import data excel mulai baris ke-2 (karena tabel xls ada header pada baris 1)
					for ($i=2; $i<=$baris; $i++){
					//ini baris pertama jumlahnya 11
					$id_siswa			= $data->val($i, 1);
					$nipd				= $data->val($i, 2);
					$password			= $data->val($i, 3);
					$nama				= $data->val($i, 4);
					$id_jenis_kelamin	= $data->val($i, 5);
					$nisn				= $data->val($i, 6);
					$tempat_lahir		= $data->val($i, 7);
					$tanggal_lahir		= $data->val($i, 8);
					$nik				= $data->val($i, 9);
					$id_agama			= $data->val($i, 10);
					$kebutuhan_khusus	= $data->val($i, 11);
					
					//ini baris kedua jumlahnya 9
					$alamat				= $data->val($i, 12);
					$rt					= $data->val($i, 13);
					$rw					= $data->val($i, 14);
					$dusun				= $data->val($i, 15);
					$kelurahan			= $data->val($i, 16);
					$kecamatan			= $data->val($i, 17);
					$kodepos			= $data->val($i, 18);
					$jenis_tinggal		= $data->val($i, 19);
					$alat_transportasi	= $data->val($i, 20);
					
					//ini baris ketiga jumlahnya 8
					$telepon			= $data->val($i, 21);
					$hp					= $data->val($i, 22);
					$email				= $data->val($i, 23);
					$skhun				= $data->val($i, 24);
					$penerima_kps		= $data->val($i, 25);
					$no_kps				= $data->val($i, 26);
					$foto				= $data->val($i, 27);
					$nama_ayah			= $data->val($i, 28);	
				
					//ini baris keempat jumlahnya 9
					$tahun_lahir_ayah		= $data->val($i, 29);
					$pendidikan_ayah		= $data->val($i, 30);
					$pekerjaan_ayah			= $data->val($i, 31);
					$penghasilan_ayah		= $data->val($i, 32);
					$kebutuhan_khusus_ayah	= $data->val($i, 33);
					$no_telpon_ayah			= $data->val($i, 34);
					$nama_ibu				= $data->val($i, 35);
					$tahun_lahir_ibu		= $data->val($i, 36);
				    $pendidikan_ibu		    = $data->val($i, 37);
			
					//ini baris kelima jumlahnya 9
					$pekerjaan_ibu		    = $data->val($i, 38);
					$penghasilan_ibu		= $data->val($i, 39);
					$kebutuhan_khusus_ibu	= $data->val($i, 40);
					$no_telpon_ibu			= $data->val($i, 41);
					$nama_wali				= $data->val($i, 42);
					$tahun_lahir_wali		= $data->val($i, 43);
					$pendidikan_wali		= $data->val($i, 44);
					$pekerjaan_wali			= $data->val($i, 45);
					$penghasilan_wali		= $data->val($i, 46);
					
					//ini baris keenam jumlahnya 7
					$angkatan		= $data->val($i, 47);
					$status_awal	= $data->val($i, 48);
					$status_siswa	= $data->val($i, 49);
					$tingkat		= $data->val($i, 50);
					$kode_kelas		= $data->val($i, 51);
					$id_kls_pararel	= $data->val($i, 52);
					$kode_jurusan	= $data->val($i, 53);
					$id_sesi		= $data->val($i, 54);
				
					$query ="INSERT INTO rb_siswa (id_siswa, nipd, password, nama, id_jenis_kelamin, nisn, tempat_lahir, tanggal_lahir, nik, id_agama, kebutuhan_khusus,
												alamat, rt, rw, dusun, kelurahan, kecamatan, kode_pos, jenis_tinggal, alat_transportasi, telepon, hp, email, skhun, penerima_kps,
												no_kps, foto,nama_ayah,tahun_lahir_ayah,pendidikan_ayah,pekerjaan_ayah,penghasilan_ayah,kebutuhan_khusus_ayah,no_telpon_ayah,
												nama_ibu,tahun_lahir_ibu,pendidikan_ibu,pekerjaan_ibu,penghasilan_ibu,kebutuhan_khusus_ibu,no_telpon_ibu,nama_wali,
												tahun_lahir_wali,pendidikan_wali,pekerjaan_wali,penghasilan_wali,angkatan,status_awal,status_siswa,tingkat,kode_kelas,id_kls_pararel,
												kode_jurusan,id_sesi)
												
							VALUES('$id_siswa','$nipd','$password','$nama','$id_jenis_kelamin','$nisn','$tempat_lahir','$tanggal_lahir','$nik','$id_agama','$kebutuhan_khusus
							      ','$alamat','$rt','$rw','$dusun','$kelurahan','$kecamatan','$kode_pos','$jenis_tinggal','$alat_transportasi','$telepon','$hp','$email
								   ','$skhun','$penerima_kps','$no_kps','$foto','$nama_ayah','$tahun_lahir_ayah','$pendidikan_ayah','$pekerjaan_ayah','$penghasilan_ayah
								   ','$kebutuhan_khusus_ayah','$no_telpon_ayah','$nama_ibu','$tahun_lahir_ibu','$pendidikan_ibu','$pekerjaan_ibu','$penghasilan_ibu
								   ','$kebutuhan_khusus_ibu','$no_telpon_ibu','$nama_wali','$tahun_lahir_wali','$pendidikan_wali','$pekerjaan_wali','$penghasilan_wali
								   ','$angkatan','$status_awal','$status_siswa','$tingkat','$kode_kelas','$id_kls_pararel','$kode_jurusan','$id_sesi')";
											
												
					
					$hasil = mysql_query($query);
					}
					
					 if(!$hasil){
					//jika import gagal
						die(mysql_error());
						}else{
					//jika impor berhasil
					echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Data berhasil di import</div>';
							}
    
					//hapus file xls yang udah dibaca
					unlink($_FILES['filesiswaall']['name']);
				}
					
					
				
		
		echo"
			<section id='main-content'>
				<div class='row mt'>
          		    <div class='col-lg-12'>
                      <div class='panel panel-success'>
                        <div class='panel-heading'>
                        <h3 class='panel-title'><i class='fa fa-user'></i> Form Import Data</h3> 
                        </div>
						<div class='panel-body'>
                        <div class='alert alert-info alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button><h4>Pastikan Extensi File Excel yang digunakan excel 2003 (.xls) untuk format excel anda bisa download dibawah ini</a></h4></div>
						<div style='padding: 0 15px;'>
		
						<a href='index.php?view=siswa&act=importsiswa' class='btn btn-danger pull-right'>
						<span class='glyphicon glyphicon-remove'></span> Cancel
						</a>
			
			<!-- Buat sebuah tag form dan arahkan action nya ke file ini lagi -->
			<form method='post' name='myForm' action='' onSubmit='return validateForm()' enctype='multipart/form-data'>
				<a href='import_data/formatdatasiswa.xls'class='btn btn-default'>
					<span class='glyphicon glyphicon-download'></span>
					Download Format
				</a><br><br>
				
			
				<input type='file' id='filesiswaall' name='filesiswaall' class='pull-left' accept='.xls,.xlsx' >
				
				<button type='submit' name='importsiswa' class='btn btn-success btn-sm'>	
					<span class='glyphicon glyphicon-eye-open'></span> IMPORT
				</button>
			</form>
			
			</div>
			</div>
		  </div>
		  </section>
		  </section>";

	}elseif($_GET[act]=='detailsiswa'){
  cek_session_siswa();
    if ($_SESSION[level] == 'siswa'){
        $nisn = $_SESSION[id];
    }else{
        $nisn = $_GET[id];
    }
    $detail = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                  LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan
                                    LEFT JOIN rb_agama e ON a.id_agama=e.id_agama 
                                    LEFT JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel 
                                      where a.nisn='$nisn'");
    $s = mysql_fetch_array($detail);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Detail Data Siswa</h3>
                </div>
                <div class='box-body'>

                  <div class='panel-body'>
                    <ul id='myTabs' class='nav nav-tabs' role='tablist'>
                      <li role='presentation' class='active'><a href='#siswa' id='siswa-tab' role='tab' data-toggle='tab' aria-controls='siswa' aria-expanded='true'>Data Siswa </a></li>
                      <li role='presentation' class=''><a href='#ortu' role='tab' id='ortu-tab' data-toggle='tab' aria-controls='ortu' aria-expanded='false'>Data Orang Tua / Wali</a></li>
                    </ul><br>

                    <div id='myTabContent' class='tab-content'>
                    <div role='tabpanel' class='tab-pane fade active in' id='siswa' aria-labelledby='siswa-tab'>
                        <form class='form-horizontal'>
                        <div class='col-md-7'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='17'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                              if($_SESSION[level]!='kepala'){
                                echo "<a href='index.php?view=siswa&act=editsiswa&id=$_GET[id]' class='btn btn-success btn-block'>Edit Profile</a>";
                              }
                                echo "</th>
                            </tr>
                            <tr><th width='120px' scope='row'>NIPD</th> <td>$s[nipd]</td></tr>
                            <tr><th scope='row'>NISN</th> <td>$s[nisn]</td></tr>
                            <tr><th scope='row'>Password</th> <td><input type='password' value='$s[password]' style='border:0px; background-color:#fff;' disabled></td></tr>
                            <tr><th scope='row'>Nama Siswa</th> <td>$s[nama]</td></tr>
                            <tr><th scope='row'>Kelas</th> <td>$s[nama_kelas]</td></tr>
                            <tr><th scope='row'>Kelas Pararel</th> <td>$s[nm_pararel]</td></tr>
                            <tr><th scope='row'>Angkatan</th> <td>$s[angkatan]</td></tr>
                            <tr><th scope='row'>Jurusan</th> <td>$s[nama_jurusan]</td></tr>
                            <tr><th scope='row'>Alamat Siswa</th> <td>$s[alamat]</td></tr>
                            <tr><th scope='row'>RT/RW</th> <td>$s[rt]/$s[rw]</td></tr>
                            <tr><th scope='row'>Dusun</th> <td>$s[dusun]</td></tr>
                            <tr><th scope='row'>Kelurahan</th> <td>$s[kelurahan]</td></tr>
                            <tr><th scope='row'>Kecamatan</th> <td>$s[kecamatan]</td></tr>
                            <tr><th scope='row'>Kode Pos</th> <td>$s[kode_pos]</td></tr>
                            <tr><th scope='row'>Status Awal</th> <td>$s[status_awal]</td></tr>
                            <tr><th scope='row'>Status Siswa</th> <td>$s[status_siswa]</td></tr>
                          </tbody>
                          </table>
                        </div>
                        <div class='col-md-5'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th width='120px' scope='row'>NIK</th> <td>$s[nik]</td></tr>
                            <tr><th scope='row'>Tempat Lahir</th> <td>$s[tempat_lahir]</td></tr>
                            <tr><th scope='row'>Tanggal Lahir</th> <td>".tgl_indo($s[tanggal_lahir])."</td></tr>
                            <tr><th scope='row'>Jenis Kelamin</th> <td>$s[jenis_kelamin]</td></tr>
                            <tr><th scope='row'>Agama</th> <td>$s[nama_agama]</td></tr>
                            <tr><th scope='row'>Keb. Khusus</th> <td>$s[kebutuhan_khusus]</td></tr>
                            <tr><th scope='row'>Jenis Tinggal</th> <td>$s[jenis_tinggal]</td></tr>
                            <tr><th scope='row'>Transportasi</th> <td>$s[alat_transportasi]</td></tr>
                            <tr><th scope='row'>No Telpon</th> <td>$s[telepon]</td></tr>
                            <tr><th scope='row'>No Handpone</th> <td>$s[hp]</td></tr>
                            <tr><th scope='row'>Alamat Email</th> <td>$s[email]</td></tr>
                            <tr><th scope='row'>SKHUN</th> <td>$s[skhun]</td></tr>
                            <tr><th scope='row'>Penerima KPS</th> <td>$s[penerima_kps]</td></tr>
                            <tr><th scope='row'>No KPS</th> <td>$s[no_kps]</td></tr>
                          </tbody>
                          </table>
                        </div>   
                        </form>
                    </div>

                    <div role='tabpanel' class='tab-pane fade' id='ortu' aria-labelledby='ortu-tab'>
                        <form class='form-horizontal'>
                        <div class='col-md-12'>
                          <table class='table table-condensed table-bordered'>
                          <tbody>
                            <tr><th style='background-color:#E7EAEC' width='160px' rowspan='20'>";
                                if (trim($s[foto])==''){
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/no-image.jpg'>";
                                }else{
                                  echo "<img class='img-thumbnail' style='width:155px' src='foto_siswa/$s[foto]'>";
                                }
                              if($_SESSION[level]!='kepala'){
                                echo "<a href='index.php?view=siswa&act=editsiswa&id=$_GET[id]' class='btn btn-success btn-block'>Edit Profile</a>";
                              }
                                echo "</th>
                            </tr>
                            <tr bgcolor=#e3e3e3><th width='120px' scope='row'>Nama Ayah</th> <td>$s[nama_ayah]</td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td>$s[tahun_lahir_ayah]</td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td>$s[pendidikan_ayah]</td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td>$s[pekerjaan_ayah]</td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td>$s[penghasilan_ayah]</td></tr>
                            <tr><th scope='row'>No Telpon</th> <td>$s[no_telpon_ayah]</td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Ibu</th> <td>$s[nama_ibu]</td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td>$s[tahun_lahir_ibu]</td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td>$s[pendidikan_ibu]</td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td>$s[pekerjaan_ibu]</td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td>$s[penghasilan_ibu]</td></tr>
                            <tr><th scope='row'>No Telpon</th> <td>$s[no_telpon_ibu]</td></tr>
                            <tr><th scope='row' coslpan='2'><br></th></tr>
                            <tr bgcolor=#e3e3e3><th scope='row'>Nama Wali</th> <td>$s[nama_wali]</td></tr>
                            <tr><th scope='row'>Tahun Lahir</th> <td>$s[tahun_lahir_wali]</td></tr>
                            <tr><th scope='row'>Pendidikan</th> <td>$s[pendidikan_wali]</td></tr>
                            <tr><th scope='row'>Pekerjaan</th> <td>$s[pekerjaan_wali]</td></tr>
                            <tr><th scope='row'>Penghasilan</th> <td>$s[penghasilan_wali]</td></tr>
                          </tbody>
                          </table>
                        </div>
                        </form>
                    </div>

                </div>
            </div>";
}elseif($_GET[act]=='penilaiandiri'){
            $t = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa a JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas where a.nisn='$_GET[id]'"));
            echo "<div class='col-xs-12'>  
              <div class='box'>
                <div class='box-header'>
                  <h3 class='box-title'>Data Pertanyaan dan Jawaban Penilaian Diri </h3>
                </div>
                <div class='box-body'>

                        <div class='col-md-12'>
                            <table class='table table-condensed table-hover'>
                                <tbody>
                                  <tr><th width='120px' scope='row'>NISN</th> <td>$t[nisn]</td></tr>
                                  <tr><th scope='row'>Nama Siswa</th>           <td>$t[nama]</td></tr>
                                  <tr><th scope='row'>Kelas</th>           <td>$t[kode_kelas]</td></tr>
                                </tbody>
                            </table>
                        </div>

                  <table id='example2' class='table table-bordered table-striped'>
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Pertanyaan</th>
                      </tr>
                    </thead>
                    <tbody>";

                    $tampil = mysql_query("SELECT * FROM rb_pertanyaan_penilaian where status='diri' ORDER BY id_pertanyaan_penilaian DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $jwb = mysql_fetch_array(mysql_query("SELECT * FROM rb_pertanyaan_penilaian_jawab where nisn='$_GET[id]' AND id_pertanyaan_penilaian='$r[id_pertanyaan_penilaian]' AND status='diri' AND kode_kelas='$t[kode_kelas]'"));
                    if (trim($jwb[jawaban])==''){
                      $jawab = "<i style='color:red'>Belum Ada Jawaban...</i>";
                    }else{
                      $jawab = "<i>$jwb[jawaban]</i>";
                    }
                    echo "<tr><td>$no</td>
                              <td>$r[pertanyaan] <br> <strong>Jawaban :</strong> <br>$jawab</td>
                          </tr>";
                      $no++;
                      }
                    echo "</tbody>
                  </table>
                </div>
              </div>
            </div>";
}elseif($_GET[act]=='penilaianteman'){
          echo "<div class='col-xs-12'>  
              <div class='box'>
              <form action='' method='POST'>
                <div class='box-header'>
                  <h3 class='box-title'>Semua Data Teman Kelas anda </h3>
                </div>
                <div class='box-body'>
                  <table class='table table-bordered table-striped'>
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>NIPD</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
                        <th>Angkatan</th>
                        <th>Jurusan</th>
                        <th>Kelas</th>
                        <th width='135px'></th>
                      </tr>
                    </thead>
                    <tbody>";

                    $cs = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_GET[id]'"));
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kls_pararel b ON a.id_kls_pararel=b.id_kls_pararel 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.kode_kelas='$cs[kode_kelas]' AND a.angkatan='$cs[angkatan]' AND nisn!='$_GET[id]' ORDER BY a.id_siswa");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    echo "<tr><td>$no</td>
                              <td>$r[nipd]</td>
                              <td>$r[nisn]</td>
                              <td>$r[nama]</td>
                              <td>$r[angkatan]</td>
                              <td>$r[nama_jurusan]</td>
                              <td>$r[nm_pararel]</td>
                              <td align=center><a class='btn btn-success btn-xs' title='Lihat Penilaian' href='index.php?view=siswa&act=pertanyaan&nisn=$r[nisn]&id=$_GET[id]'><span class='glyphicon glyphicon-search'></span> Lihat Penilaian</a></td>
                          </tr>";
                      $no++;
                      }
                    echo "</tbody>
                  </table>
                </div>
              </form>
              </div>
            </div>";
	
}elseif($_GET[act]=='pertanyaan'){ ?>
            <div class="col-xs-12">  
              <div class="box">
              <form action='' method='POST'>
                <div class="box-header">
                  <h3 class="box-title">Data Pertanyan dan Jawaban Penilaian Teman </h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <?php
                      echo "<input type='hidden' value='$_GET[nisn]' name='nisnteman'>";
                      $t = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_GET[nisn]'"));
                      $tt = mysql_fetch_array(mysql_query("SELECT * FROM rb_siswa where nisn='$_GET[id]'"));
                      echo "<div class='col-md-12'>
                            <table class='table table-condensed table-hover'>
                                <tbody>
                                  <tr><th scope='row'>NISN Penilai</th>           <td>$tt[nisn]</td></tr>
                                  <tr><th scope='row'>Nama Penilai</th>           <td>$tt[nama]</td></tr>

                                  <tr bgcolor=#f4f4f4><th width='120px' scope='row'>NISN Teman</th> <td style='color:blue'>$t[nisn]</td></tr>
                                  <tr bgcolor=#f4f4f4><th scope='row'>Nama Teman</th>           <td style='color:blue'>$t[nama]</td></tr>
                                </tbody>
                            </table>
                            </div>";
                  ?>
                  <table id="example3" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Pertanyaan</th>
                      </tr>
                    </thead>
                    <tbody>

                  <?php 
                    $tampil = mysql_query("SELECT * FROM rb_pertanyaan_penilaian where status='teman' ORDER BY id_pertanyaan_penilaian DESC");
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $jwb = mysql_fetch_array(mysql_query("SELECT * FROM rb_pertanyaan_penilaian_jawab where nisn='$_GET[id]' AND nisn_teman='$_GET[nisn]' AND id_pertanyaan_penilaian='$r[id_pertanyaan_penilaian]' AND status='teman' AND kode_kelas='$tt[kode_kelas]'"));
                    if (trim($jwb[jawaban])==''){
                      $jawab = "<i style='color:red'>Belum Ada Jawaban...</i>";
                    }else{
                      $jawab = "<i>$jwb[jawaban]</i>";
                    }
                    echo "<tr><td>$no</td>
                              <td>$r[pertanyaan] <br> <strong>Jawaban :</strong> <br>$jawab</td>
                          </tr>";
                      $no++;
                      }
                  ?>			  
	  
				  
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
			
<?php
}
?>
<script type="text/javascript">
  function toggle(source) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i] != source)
            checkboxes[i].checked = source.checked;
    }
  }
</script>
<script type="text/javascript">
  function showPass() {
    var pass = document.getElementById("pass");
    var eye  = document.getElementById("eye"); 
    if (pass.type === "password") {
        pass.type = "text";
        document.getElementById("eye").className = "fa fa-eye-slash";
    } else {
        pass.type = "password";
        document.getElementById("eye").className = "fa fa-eye";
    }
  }
</script>