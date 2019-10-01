<?php 
if ($_GET['act']==''){
unset($_COOKIE['waktucookies']); 
echo "<div class='col-xs-12'>  
  <div class='box'>
    <div class='box-header'>
      <h3 class='box-title'>Tugas - Computer Based Test</h3>
      <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
        <input type='hidden' name='view' value='quiz'>
        <select name='tahun' style='padding:4px'>
                <option value=''>- Pilih Tahun Akademik -</option>";
                $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                while ($k = mysql_fetch_array($tahun)){
                  if ($_GET['tahun']==$k['id_tahun_akademik']){
                    echo "<option value='$k[id_tahun_akademik]' selected>$k[nama_tahun]</option>";
                  }else{
                    echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
                  }
                }
        echo "</select>
        <input type='submit' style='margin-top:-4px' class='btn btn-success btn-sm' value='Lihat'>
      </form>

    </div>
    <div class='box-body table-responsive'>
      <table id='example1' class='table table-bordered table-striped table-responsive'>
        <thead>
          <tr>
            <th style='width:20px'>No</th>
            <th>Judul CBT</th>
            <th>Jenis</th>
            <th>KKM</th>
            <th>Waktu Tugas / Pembahasan</th>
            <th>Durasi</th>
            <th>Status CBT</th>
            <th>Nilai</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>";

        if (isset($_GET['tahun'])){
          $tampil = mysql_query("SELECT a.*, b.judul_cbt, b.kkm, b.durasi, c.namamatapelajaran, d.jenis_cbt, d.jadwal  FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran JOIN rb_quiz_jenis d ON b.id_jenis=d.id_jenis where a.id_kls_pararel='$_SESSION[id_kls_pararel]' AND a.id_tahun_akademik='$_GET[tahun]' order by id_jadwal desc");
        }else{
          $tampil = mysql_query("SELECT a.*, b.judul_cbt, b.kkm, b.durasi, c.namamatapelajaran, d.jenis_cbt, d.jadwal  FROM `rb_quiz_jadwal` a JOIN rb_quiz_cbt b ON a.id_cbt=b.id_cbt JOIN rb_mata_pelajaran c ON b.kode_pelajaran=c.kode_pelajaran JOIN rb_quiz_jenis d ON b.id_jenis=d.id_jenis where a.id_kls_pararel='$_SESSION[id_kls_pararel]' AND a.id_tahun_akademik='$tahunakademik[id_tahun_akademik]' order by id_jadwal desc");
        }
        $no = 1;
        while($r=mysql_fetch_array($tampil)){
        $objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$r[id_cbt]' AND b.kategori_soal='objektif'"));
        $essay = mysql_num_rows(mysql_query("SELECT a.*, b.kategori_soal FROM `rb_quiz_cbt_soal` a JOIN rb_bank_pertanyaan_objektif b ON a.id_bank_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.id_cbt='$r[id_cbt]' AND b.kategori_soal='essay'"));
        $objektif_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_objektif` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_objektif=c.id_bank_pertanyaan_objektif where b.id_cbt='$r[id_cbt]' AND a.id_siswa='$_SESSION[ids]' AND b.id_kls_pararel='$_SESSION[id_kls_pararel]' AND c.kategori_soal='objektif'"));
        $essay_jawab = mysql_num_rows(mysql_query("SELECT * FROM `rb_jawaban_essai` a JOIN rb_quiz_jadwal b ON a.id_jadwal=b.id_jadwal JOIN rb_bank_pertanyaan_objektif c ON a.id_pertanyaan_essai=c.id_bank_pertanyaan_objektif where b.id_cbt='$r[id_cbt]' AND a.id_siswa='$_SESSION[ids]' AND b.id_kls_pararel='$_SESSION[id_kls_pararel]' AND c.kategori_soal='essay'"));
        
        $tanyaan = $objektif+$essay;
        $jawab = $objektif_jawab+$essay_jawab;

        $cek_koreksi = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai_koreksi a JOIN rb_jawaban_essai b ON a.id_jawaban_essai=b.id_jawaban_essai where b.id_siswa='$_SESSION[ids]' AND b.id_jadwal='$r[id_jadwal]'"));
        if ($cek_koreksi<$essay){
          if ($jawab > 0 AND $tanyaan>0 AND $essay>0){ $status = "<button style='width:120px' class='btn btn-xs btn-warning'>Menunggu Koreksi</button>"; }else{ $status = "<button style='width:120px' class='btn btn-xs btn-danger'>Belum Mengerjakan</button>"; }
          $nilai = 0;
        }else{
          if ($jawab > 0 AND $tanyaan>0){ $status = "<button style='width:120px' class='btn btn-xs btn-success'>Selesai</button>"; }else{ $status = "<button style='width:120px' class='btn btn-xs btn-danger'>Belum Mengerjakan</button>"; }
          $benar_objektif = mysql_num_rows(mysql_query("SELECT a.*, b.kunci_jawaban FROM rb_jawaban_objektif a JOIN rb_bank_pertanyaan_objektif b ON a.id_pertanyaan_objektif=b.id_bank_pertanyaan_objektif where a.jawaban=b.kunci_jawaban AND a.id_jadwal='$r[id_jadwal]' AND a.id_siswa='$_SESSION[ids]'"));
          $benar_essay = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai a JOIN rb_jawaban_essai_koreksi b ON a.id_jawaban_essai=b.id_jawaban_essai where a.id_siswa='$_SESSION[ids]' AND a.id_jadwal='$r[id_jadwal]' AND b.nilai='1'"));
          $nilai = number_format(($benar_essay+$benar_objektif)/$objektif+$essay * 100);
          $soal  = $benar_essay+$benar_objektif;
          $soal_semua  = $objektif+$essay;
          $nilai = number_format($soal/$soal_semua * 100);
        }

        $total = mysql_num_rows(mysql_query("SELECT * FROM rb_quiz_ujian where kodejdwl='$r[kodejdwl]'"));
        if ($r['jadwal']=='N'){ 
          $waktu = tgl_indo($r['tgl_mulai'])." $r[jam_mulai] <b style='color:red'>s/d</b> ".tgl_indo($r['tgl_akhir'])." $r[jam_akhir]"; 
          $durasi = '-'; 
          $detik = 0; 
        }else{ 
          $waktu = tgl_indo($r['tgl_mulai'])." $r[jam_mulai]"; 
          $durasi = $r['durasi']; 
          $detik = $r['durasi']*60; 
        }

        echo "<tr><td>$no</td>
                  <td>$r[judul_cbt]</td>
                  <td>$r[jenis_cbt]</td>
                  <td>$r[kkm]</td>
                  <td>$waktu</td>
                  <td>$durasi</td>
                  <td>$status</td>
                  <td>$nilai</td>";
                  $objektif = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_objektif where id_jadwal='$r[id_jadwal]' AND id_siswa='$_SESSION[ids]'"));
                  $essay = mysql_num_rows(mysql_query("SELECT * FROM rb_jawaban_essai where id_jadwal='$r[id_jadwal]' AND id_siswa='$_SESSION[ids]'"));
                
                  if (($objektif+$essay)>=1){
                    if ($cek_koreksi>=$essay){
                      echo "<td width='130px'><a style='width:80px' class='btn btn-default btn-xs' title='Selesai CBT' href='quiz_siswa_mulai.php?id_jadwal=$r[id_jadwal]'><span class='glyphicon glyphicon-ok'></span> Selesai</a>";
                      echo "<a style='margin-left:3px' class='btn btn-primary btn-xs' title='Pembahasan' href='quiz_siswa_mulai.php?act=pembahasan&id_jadwal=$r[id_jadwal]'><span class='glyphicon glyphicon-th-list'></span></a>";
                    }else{
                      echo "<td width='130px'><a style='width:108px' class='btn btn-default btn-xs' title='Selesai CBT' href='quiz_siswa_mulai.php?id_jadwal=$r[id_jadwal]'><span class='glyphicon glyphicon-ok'></span> Selesai</a>";
                    }
                  }else{
                    if ($r['jadwal']=='N'){ 
                      $tgl_mulai = str_replace('-','',$r['tgl_mulai']);
                      $jam_mulai = str_replace(':','',$r['jam_mulai']);
                      $waktu_mulai = $tgl_mulai.$jam_mulai;

                      $tgl_akhir = str_replace('-','',$r['tgl_akhir']);
                      $jam_akhir = str_replace(':','',$r['jam_akhir']);
                      $waktu_akhir = $tgl_akhir.$jam_akhir;

                      if (date('YmdHis')>=$waktu_mulai AND date('YmdHis')<=$waktu_akhir){
                          echo "<td width='130px'><a style='width:108px' class='btn btn-success btn-xs' title='Mulai CBT' href='quiz_siswa_mulai.php?id_jadwal=$r[id_jadwal]'><span class='glyphicon glyphicon-pencil'></span> Mulai CBT</a>";
                      }else{
                          echo "<td width='130px'><a style='width:108px' class='btn btn-danger btn-xs' title='Selesai CBT' href='#'><span class='glyphicon glyphicon-remove'></span> Tutup</a>";
                      }
                    }else{ 
                      $tgl_mulai = str_replace('-','',$r['tgl_mulai']);
                      $jam_mulai = str_replace(':','',$r['jam_mulai']);
                      $waktu_mulai = $tgl_mulai.$jam_mulai;
                      $waktu_akhir = '';

                      if (date('YmdHis')>=$waktu_mulai){
                          echo "<td width='130px'><a style='width:108px' class='btn btn-success btn-xs' title='Mulai CBT' href='quiz_siswa_mulai.php?id_jadwal=$r[id_jadwal]'><span class='glyphicon glyphicon-pencil'></span> Mulai CBT</a>";
                      }else{
                          echo "<td width='130px'><a style='width:108px' class='btn btn-danger btn-xs' title='Selesai CBT' href='#'><span class='glyphicon glyphicon-remove'></span> Tutup</a>";
                      }
                    } 
                  }   
              echo "</td></tr>";
          $no++;
          }

        echo "</tbody>
      </table>
    </div>
    </div>
</div>";                      
}
?>