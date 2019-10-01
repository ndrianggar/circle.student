<?php 
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 
$frt = mysql_fetch_array(mysql_query("SELECT * FROM rb_header_print ORDER BY id_header_print DESC LIMIT 1")); 
?>
<head>
<title>Raport Absen Guru</title>
<link rel="stylesheet" href="../bootstrap/css/printer.css">
<style type="text/css">
  .img-banner{
    width: 110px;
    position: absolute;
    top: -2px;
    left: 20px;
    z-index: -1;
  }
</style>
</head>
<body>
<img src='../dist/img/logo_ihbs.png' class='img-banner'>
<h3 style="text-align: center;">PRESENSI GURU <?php echo $_GET[unit] ?> IBNU HAJAR <br> TAHUN PELAJARAN 2018-2019<br>Tanggal : <?php echo date("d-M-Y", strtotime($_GET[tglAbsen])); ?> </h3>
<table id='tablemodul1' width='100%' border='1' style="margin-top: 60px;">
	<tr height='30'>
		<td width="20">No</td>
		<td>Nip</td>
		<td>Nama</td>
		<td width="80">Kehadiran</td>
		<td>Keterangan</td>
	</tr>
	<?php 
		$data = mysql_query("SELECT a.nama_guru, a.nip, b.kode_kehadiran, b.tanggal, b.note FROM rb_guru a INNER JOIN rb_absensi_guru b on a.nip = b.nip WHERE a.unit = '$_GET[unit]' AND b.tanggal = '$_GET[tglAbsen]'");$no=1;
		while ($row = mysql_fetch_array($data)){
			if ($row[kode_kehadiran]=="H") {
				$absen = "Hadir";
			}elseif ($row[kode_kehadiran]=="I") {
				$absen = "Izin";
			}elseif ($row[kode_kehadiran]=="S") {
				$absen = "Sakit";
			}elseif ($row[kode_kehadiran]=="A") {
				$absen == "Alpa";
			}
			echo "
			<tr>
				<td align='center'>$no</td>
				<td>$row[nip]</td>
				<td>$row[nama_guru]</td>
				<td>$absen</td>
				<td>$row[note]</td>
			</tr>
			";
			$no++;
		}
	?>
</table>
<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 1200);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
    window.onafterprint = function () {  window.close(); }
</script>
</body>