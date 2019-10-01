<?php
session_start();
error_reporting(0);
include "../config/koneksi.php"; 
include "../config/fungsi_indotgl.php"; 
?>
<style type="text/css">
  th{
    text-align: center;
  }
</style>
<div class="box">
    <div class="box-body">
	    <div class="col-md-8" style="margin: 0px; padding-right: 0px;"> 
		    <table id="example" class="table table-bordered table-striped col-md-8" style="border:solid 1px;">
		      <thead>
		        <tr>
		          <th style="vertical-align:middle; width: 20px;"  rowspan="2">No</th>
		          <th style="vertical-align:middle;" rowspan="2">NIS</th>
		          <th style="vertical-align:middle; width: 100px;"  rowspan="2" valign="middle">Nama Lengkap Santri</th>
		          <th colspan="8" style="width: 200px;">Jam Pelajaran</th>
		        </tr>
		        <tr>
		          <th width="20px">1</th>
		          <th width="20px">2</th>
		          <th width="20px">3</th>
		          <th width="20px">4</th>
		          <th width="20px">5</th>
		          <th width="20px">6</th>
		          <th width="20px">7</th>
		          <th width="20px">8</th>
		        </tr>
		      </thead>
		      <tbody>
		        <?php
		            $dtSiswa = mysql_query("SELECT a.* , b.* FROM `rb_absensi_siswa` a join rb_siswa b on a.nisn = b.nisn WHERE b.kode_kelas = '$_GET[kelas]' and b.id_kls_pararel = '$_GET[kelasPararel]' and a.tanggal = '$_GET[tglJurnal]' GROUP by b.nisn");
		          // $no = 1;
		          while($r=mysql_fetch_array($dtSiswa)){
		            if ($r[kode_kehadiran] == "H") {
		              $absen = "<i class='fa fa-check'></i>";
		            }else{
		              $absen = $r[kode_kehadiran];
		            }
		            echo "
		            <tr>
		              <td>$no</td>
		              <td style='width:100px;'>$r[nisn]</td>
		              <td style='width:320px;'>$r[nama]</td>
		              <td style='width:20px;' align='center'>$absen</td>
		              <td style='width:20px;' align='center'>$absen</td>
		              <td style='width:20px;' align='center'>$absen</td>
		              <td style='width:20px;' align='center'>$absen</td>
		              <td style='width:20px;' align='center'>$absen</td>
		              <td style='width:20px;' align='center'>$absen</td>
		              <td style='width:20px;' align='center'>$absen</td>
		              <td style='width:20px;' align='center'>$absen</td>
		            </tr>
		            ";$no++;
		          }
		        ?>
		      </tbody>
		    </table> 
	    </div> 
    	<div class="col-md-4" style="margin: 0; padding-left: 0px;">
	      <table id="example" class="table table-bordered table-striped" style="border:solid 1px;">
	        <thead>
	          <tr>
	            <th rowspan="2" style="vertical-align: middle width:100px;">Keterangan</th>
	          </tr>
	        </thead>
	        <tbody>
	          <tr>
	            <td style="height: 1175;">
	              <?php $dataJurnal = mysql_query("SELECT a.* , b.*, c.namamatapelajaran, d.nama_guru FROM rb_journal_list a JOIN rb_jadwal_pelajaran b on a.kodejdwl = b.kodejdwl JOIN rb_mata_pelajaran c on b.kode_pelajaran = c.kode_pelajaran  JOIN rb_guru d on b.nip = d.nip WHERE b.kode_kelas = '$_GET[kelas]' and b.id_kls_pararel = '$_GET[kelasPararel]' AND a. tanggal = '$_GET[tglJurnal]' GROUP BY a.jam_ke");
	              while ($r=mysql_fetch_array($dataJurnal)) {
	                echo '
	                <div style="padding-bottom: 10px;">
	                <table class="" style="border: solid 1px; width: 100%;">
	                  <tr>
	                    <td style="padding: 5px; width:150px;">Jam Pelajaran Ke</td>
	                    <td>:</td>
	                    <td style="padding-left:5px;">'.$r[jam_ke].'</td>
	                  </tr>
	                  <tr>
	                    <td style="padding: 5px; width:150px;">Nama Pelajaran</td>
	                    <td>:</td>
	                    <td style="padding-left:5px;">'.$r[namamatapelajaran].'</td>
	                  </tr>
	                  <tr>
	                    <td style="padding: 5px; width:150px; vertical-align: top;">Materi</td>
	                    <td style="vertical-align:top;">:</td> 
	                    <td style="vertical-align:top; padding-left:5px;">'.$r[materi].'</td>
	                  </tr>
	                  <tr>
	                    <td style="padding: 5px; width:150px;">Nama Guru</td>
	                    <td>:</td>
	                    <td style="padding-left:5px;">'.$r[nama_guru].'</td>
	                  </tr>
	                </table>
	              </div>';
	              }
	             ?>
	            </td>
	          </tr>
	        </tbody>
	      </table>
    	</div>
    </div>
</div>

<script type="text/javascript">
    setTimeout(function () {
      window.print();
    }, 1200);
    window.onfocus = function () { setTimeout(function () { window.close(); }, 500); }
    window.onafterprint = function () {  window.close(); }
</script>