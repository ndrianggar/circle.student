<?php 
session_start();
error_reporting(0);
include "config/koneksi.php"; 
include "config/fungsi_indotgl.php"; 
$frt = mysql_fetch_array(mysql_query("SELECT * FROM rb_header_print ORDER BY id_header_print DESC LIMIT 1")); 
?>
<head>
<title>Data Siswa Kelas <?php echo $_GET[kelas]; ?></title>
<link rel="stylesheet" href="bootstrap/css/printer.css">
</head>
<body onload="window.print()">
<?php
$j = mysql_fetch_array(mysql_query("SELECT * FROM `rb_keuangan_jenis` where id_keuangan_jenis='$_GET[biaya]'"));
$th = mysql_fetch_array(mysql_query("SELECT * FROM rb_tahun_akademik where aktif='Ya'"));
            echo "<h2><center>Semua Data Siswa Kelas $_GET[kelas] $_GET[kelasp] <br>Pembayaran $j[nama_jenis]</center></h2>
                <table width='100%' id='tablemodul1'>
                    <thead>
                      <tr><th>No</th>
                        <th>NIPD</th>
                        <th>NISN</th>
                        <th>Nama Siswa</th>
                        <th>Jenis Kelamin</th>";
                      if ($j[total_beban] <= '0'){
                        echo "<th>Total</th>";
                      }else{
                        echo "<th>Status</th>";
                      }

                      echo "</tr>
                    </thead>
                    <tbody>";
                    $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_kls_pararel m ON a.id_kls_pararel=m.id_kls_pararel 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.kode_kelas='$_GET[kelas]' AND a.id_kls_pararel='$_GET[kelasp]' ORDER BY a.id_siswa");
                 
                    $no = 1;
                    while($r=mysql_fetch_array($tampil)){
                    $t = mysql_fetch_array(mysql_query("SELECT sum(total_bayar) as total FROM `rb_keuangan_bayar` where id_keuangan_jenis='$_GET[biaya]' AND kode_kelas='$r[kode_kelas]' AND nisn='$r[nisn]' AND tahun_akademik='$th[id_tahun_akademik]'"));
                    if ($j[total_beban] <= '0'){
                      $status = "Rp ".number_format($t[total]);
                    }else{
                      if ($j[total_beban] <= $t[total]) { $status = 'Lunas'; $class = 'green'; }else{ $status = 'Belum Lunas'; $class = 'red'; }
                    }
                    
                    echo "<tr>";
                              echo "<td>$no</td>
                              <td>$r[nipd]</td>
                              <td>$r[nisn]</td>
                              <td style='font-size:12px'>$r[nama]</td>
                              <td>$r[jenis_kelamin]</td>
                              <td style='color:$class'>$status</td>";
                            echo "</tr>";
                      $no++;
                      }

                  ?>
                    </tbody>
                  </table>

<table border=0 width=100%>
  <tr>
    <td width="260" align="left"></td>
    <td width="520"align="center">Mengetahui <br> Kepala Sekolah</td>
    <td width="260" align="left">Jakarta, <?php echo tgl_raport(date("Y-m-d")); ?> <br> Wali Kelas</td>
  </tr>
  <tr>
    <td align="left"><br /><br /><br /><br /><br />
      <br /><br /></td>

    <td align="center" valign="top"><br /><br /><br /><br /><br />
      <b><?php echo $s[kepalasekolah];?><br>
      NIP : <?php echo $s[nip]; ?></b>
    </td></b>
    </td>

    <td align="left" valign="top"><br /><br /><br /><br /><br />
      <b><?php echo $s[walikelas]; ?><br />
      NIP : <?php echo $s[nip]; ?></b>
    </td>
  </tr>
</table> 
</body>