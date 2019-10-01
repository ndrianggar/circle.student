<div class="col-xs-12">  
  <div class="box">
    <div class="box-header">
    <h3 class="box-title">
      <?php if (isset($_GET[kelas]) AND isset($_GET[tahun])){ echo "Data Ledger Mata Pelajaran"; 
      }else{ echo "Data Ledger Mata Pelajaran ".date('Y'); } ?>
    </h3>
    <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
    <input type="hidden" name='view' value='ledger'>
    <select name='tahun' style='padding:4px'>
        <?php 
            echo "<option value=''>- Pilih Tahun Akademik -</option>";
            $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
            while ($k = mysql_fetch_array($tahun)){
              if ($_GET[tahun]==$k[id_tahun_akademik]){
                echo "<option value='$k[id_tahun_akademik]' selected>$k[nama_tahun]</option>";
              }else{
                echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
              }
            }
        ?>
    </select>
    <select name='kelas' style='padding:4px'>
        <?php 
            echo "<option value=''>- Pilih Kelas -</option>";
            if ($_SESSION[unit]=="SMP PUTRA") {
               $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('VII','VIII','IX') ");
            }else if($_SESSION[unit]=="SMA PUTRA"){
              $kelas = mysql_query("SELECT * FROM rb_kelas where kode_kelas in ('X','XI','XII') ");
            }else{
              $kelas = mysql_query("SELECT * FROM rb_kelas");
            }
            while ($k = mysql_fetch_array($kelas)){
              if ($_GET[kelas]==$k[kode_kelas]){
                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
              }else{
                echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
              }
            }
        ?>
    </select>
    <select name='kelasp' style='padding:4px'>
        <?php 
            echo "<option value=''>- Pilih Kelas Pararel-</option>";
            if ($_SESSION[unit]=="SMP PUTRA") {
              $kelasp = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('VII','VIII','IX')");
             }else if($_SESSION[unit]=="SMA PUTRA"){
               $kelasp = mysql_query("SELECT * FROM rb_kls_pararel where kode_kelas in ('X','XI','XII')");
             }else{
              $kelasp = mysql_query("SELECT * FROM rb_kls_pararel");
             }
            while ($k = mysql_fetch_array($kelasp)){
              if ($_GET[kelasp]==$k[id_kls_pararel]){
                echo "<option value='$k[id_kls_pararel]' selected>$k[id_kls_pararel] - $k[nm_pararel]</option>";
              }else{
                echo "<option value='$k[id_kls_pararel]'>$k[id_kls_pararel] - $k[nm_pararel]</option>";
              }
            }
        ?>
    </select>
    <input type="submit" style='margin-top:-4px' class='btn btn-success btn-sm' value='Lihat'>
  </form>
</div><!-- /.box-header -->
<?Php
  $data = mysql_query("SELECT a.namamatapelajaran, b.kodejdwl FROM rb_mata_pelajaran a INNER JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE b.kode_kelas = '$_GET[kelas]' AND id_kls_pararel = '$_GET[kelasp]' AND b.id_tahun_akademik = $_GET[tahun] GROUP BY a.namamatapelajaran");
  $jum = mysql_num_rows($data);
 ?>
<div class="box-body" style="overflow-x:auto;">
  <table id="example" class="table table-bordered table-striped table-responsive">
    <thead>
      <tr>
        <th style='width:20px; vertical-align: middle; background-color: #4286f4;' rowspan="3">No</th>
        <th rowspan="3" style="vertical-align: middle; text-align: center;  background-color: #4286f4;">NISN</th>
        <th rowspan="3" style="vertical-align: middle; text-align: center; width: 300px; background-color: #4286f4;">NAMA</th>
        <th style="text-align: center;  background-color: #4286f4;" colspan="<?php echo $jum*3 ?>">MATA PELAJARAN</th>
        <th rowspan="3" style="text-align: center; vertical-align: middle;  background-color: #4286f4;">RATA-RATA</th>
        <th style="text-align: center;  background-color: #4286f4; vertical-align: middle;" colspan="3" rowspan="2">KEHADIRAN</th>
      </tr>
      <tr>
        <?php 
          while ($r=mysql_fetch_array($data)) {
            echo "<th colspan='3' style='text-align:center; background-color:#54b5d8;'>$r[namamatapelajaran]</th>";
          }
        ?>
      </tr>
      <tr>
        <?php 
          $data = mysql_query("SELECT a.namamatapelajaran, b.kodejdwl FROM rb_mata_pelajaran a INNER JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE b.kode_kelas = '$_GET[kelas]' AND id_kls_pararel = '$_GET[kelasp]' AND b.id_tahun_akademik = $_GET[tahun] GROUP BY a.namamatapelajaran");
          while ($r=mysql_fetch_array($data)) {
            echo "<th style='background-color:#fce96c;'>UB</th>
                <th style='background-color:#fce96c;'>UAS</th>
                <th style='background-color:#47a56d;'>R</th>";
          }
        ?>
        <th style="text-align: center; width: 10px; background-color: #e24444;">S</th>
        <th style="text-align: center; width: 10px; background-color: #e24444;">I</th>
        <th style="text-align: center; width: 10px; background-color: #e24444;">A</th>
      </tr>
    </thead>
    <tbody>
      <?php 
        $dataSiswa = mysql_query("SELECT nisn, nama FROM rb_siswa WHERE kode_kelas = '$_GET[kelas]' AND id_kls_pararel = '$_GET[kelasp]'");$no=1;
        while ($s = mysql_fetch_array($dataSiswa)) {?>
          <tr>
            <td><?php echo $no++ ?></td>
            <td><?php echo $s[nisn] ?></td>
            <td style='white-space: nowrap;'><?php echo $s[nama] ?></td>
            <?php 
              $data = mysql_query("SELECT a.namamatapelajaran, b.kodejdwl FROM rb_mata_pelajaran a INNER JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE b.kode_kelas = '$_GET[kelas]' AND b.id_kls_pararel = '$_GET[kelasp]' AND b.id_tahun_akademik = '$_GET[tahun]' GROUP BY a.namamatapelajaran");
              while ($n= mysql_fetch_array($data)) {
         $dataNilai =  mysql_fetch_array(mysql_query("SELECT FORMAT(a.nilai1,1) as nilai1, FORMAT(a.nilai2,1) as nilai2, FORMAT((a.nilai1*6+a.nilai2*4)/10,1) as raport, b.kode_pelajaran FROM rb_nilai_pengetahuan_semester a INNER JOIN rb_jadwal_pelajaran b ON a.kodejdwl = b.kodejdwl WHERE a.tahun = '$_GET[tahun]' AND a.nisn = '$s[nisn]' AND b.kode_kelas = '$_GET[kelas]' AND b.id_kls_pararel= '$_GET[kelasp]' AND b.kodejdwl = '$n[kodejdwl]'"));

              echo "<td  style='background-color:#c1c1c1;'><b>".$dataNilai[nilai1]."</b></td><td style='background-color:#c1c1c1;'><b>".$dataNilai[nilai2]."</b></td><td style='background-color:#42f49e;'><b>".$dataNilai[raport]."</b></td>";
              }
              $data = mysql_fetch_array(mysql_query("SELECT a.namamatapelajaran, b.kodejdwl FROM rb_mata_pelajaran a INNER JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE b.kode_kelas = '$_GET[kelas]' AND id_kls_pararel = '$_GET[kelasp]'"));
              $avg = mysql_fetch_array(mysql_query("SELECT AVG((nilai1*6+nilai2*4)/10) AS avg FROM rb_nilai_pengetahuan_semester WHERE `nisn` = '$s[nisn]'"));
              echo "<td align='center'>".number_format($avg[avg],1)."</td>";
              $data = mysql_query("SELECT a.namamatapelajaran, b.kodejdwl FROM rb_mata_pelajaran a INNER JOIN rb_jadwal_pelajaran b ON a.kode_pelajaran = b.kode_pelajaran WHERE b.kode_kelas = '$_GET[kelas]' AND id_kls_pararel = '$_GET[kelasp]'");
              
              // while ($n= mysql_fetch_array($data)) {
                $absen = mysql_fetch_array(mysql_query("SELECT COUNT(IF(kode_kehadiran='H',1, NULL)) 'hadir', COUNT(IF(kode_kehadiran='S',1, NULL)) 'sakit', COUNT(IF(kode_kehadiran='I',1, NULL)) 'izin', COUNT(IF(kode_kehadiran='A',1, NULL)) 'alpa' FROM rb_absensi_siswa where nisn = '$s[nisn]' AND kode_kelas = '$_GET[kelas]'"));
              // }
              echo "<td align='center'>".$absen[sakit]."</td>
                    <td align='center'>".$absen[izin]."</td>
                    <td align='center'>".$absen[alpa]."</td>";
            ?>
          </tr> 
       <?php } ?>
    </tbody>
  </table>
</div>
                