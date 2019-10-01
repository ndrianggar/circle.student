<style type="text/css">
  span{
    padding-left: 5px;
  }
</style>
<section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?php echo $foto; ?>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><?php echo $nama; ?></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header" style='color:#fff; text-transform:uppercase; border-bottom:2px solid #00c0ef'>MENU <?php echo $level; ?></li>
            <li><a href="index.php"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
           
            
			<!--<li class="treeview">
			<a href="#"><i class="glyphicon glyphicon-pencil"></i><span>Kegiatan Guru</span></a>
			<ul class="treeview-menu">
			<li><a href="index.php?view=createbab"><i class="fa fa-fw fa-list-ul"></i><span>Bab & Sub Bab </span></a></li>
			<li><a href="index.php?view=listmateri"><i class="fa fa-fw fa-file-archive-o"></i><span> Materi</span></a></li>
			<li><a href="index.php?view=inputmateri&act=listbahanmateri"><i class="fa fa-fw fa-cloud-upload"></i><span>input Materi</span></a></li>
			</ul>
			</li>-->
          <!--  <li><a href="index.php?view=bahantugas&act=listbahantugasguru"><i class="fa fa-file"></i><span>Bahan & Tugas</span></a></li>-->
		  <li class="sidebar-header"> 
			 <span>ADMINISTRATIF</span>
			 </li>
            <li class="treeview">
			<a href="#"><i class="glyphicon glyphicon-pencil"></i><span>Administratif</span><i class="fa fa-angle-left pull-right"></i></a>
			<ul class="treeview-menu">
			 <li><a href="index.php?view=absensiswa&act=detailabsenguru"><i class="fa fa-th-large"></i> <span>Absensi Siswa</span></a></li>
            <li><a href="index.php?view=kompetensiguru"><i class="fa fa-tags"></i> <span>Kompetensi Dasar</span></a></li>
            <li><a href="index.php?view=journalguru"><i class="fa fa-list"></i> <span>Journal KBM</span></a></li>
			</ul>
			</li>
			 <li class="sidebar-header"> 
			 <span>MANAGE MATERI</span>
			 </li>
			<li><a href="index.php?view=materi"><i class="fa fa-book"></i> Materi</a></li>
			 <li class="sidebar-header"> 
			 <span>MANAGE BANK SOAL</span>
			 </li>
			<li><a href="index.php?view=banksoal"><i class="fa fa-archive"></i> Bank Soal</a></li>
			 <li class="sidebar-header"> 
			 <span>MANAGE COMPUTERE BASED TEST</span>
			 </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-users"></i> <span>Quiz/Ujian Online</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=cbt"><i class="fa fa-circle-o"></i> CBT</a></li>              
                
                <li><a href="index.php?view=report_cbt"><i class="fa fa-circle-o"></i> Report CBT</a></li>
              </ul>
            </li>
			 <li class="sidebar-header"> 
			 <span>INTERACTIVE</span>
			 </li>
			<li><a href="index.php?view=forum&act=detailguru"><i class="fa fa-th-list"></i> <span>Forum Diskusi</span></a></li>
           <!-- <li class="treeview">
              <a href="#"><i class="fa fa-calendar"></i> <span>Laporan Nilai Siswa</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <!--<li><a href="index.php?view=raportuts&act=detailguru"><i class="fa fa-circle-o"></i> Input Nilai UTS</a></li>
                <li><a href="index.php?view=raport&act=detailguru"><i class="fa fa-circle-o"></i> Input Nilai Raport</a></li>
                <li><a href="index.php?view=ledgermapelguru"><i class="fa fa-circle-o"></i> Data Ledger Mapel</a></li>
              </ul>
            </li>!-->
          <?php
          $cek = mysql_num_rows(mysql_query("SELECT * FROM rb_guru_akses where nip='$_SESSION[id]'"));
          if ($cek >= 1){
            echo "<li class='treeview'>
              <a href='#'><i class='fa fa-flag'></i> <span>Akses Khusus</span><i class='fa fa-angle-left pull-right'></i></a>
              <ul class='treeview-menu'>";
                $aksesguru = mysql_query("SELECT * FROM rb_guru_akses a JOIN rb_modul b ON a.id_modul=b.id_modul where b.aktif='Ya' AND a.nip='$_SESSION[id]' ORDER BY a.id_modul");
                while($a = mysql_fetch_array($aksesguru)){
                  echo "<li><a href='$a[url]'><i class='fa fa-circle-o'></i> $a[nama_modul]</a></li>";
                }
              echo "</ul>
            </li>";
          }
          ?>
        <li class="sidebar-header"> 
          <span>LAPORAN NILAI</span>
        </li>
        <li class="treeview">
        <a href="#"><i class="fa fa-calendar"></i> <span>Laporan Nilai Siswa</span><i class="fa fa-angle-left pull-right"></i></a>
        <ul class="treeview-menu">
          <li><a href="index.php?view=raportuts"><i class="fa fa-circle-o"></i> Data Nilai Bulanan</a></li>
          <li><a href="index.php?view=capaianhasilbelajar"><i class="fa fa-circle-o"></i> Data Capaian Belajar</a></li>
          <li><a href="index.php?view=extrakulikuler"><i class="fa fa-circle-o"></i> Data Extrakulikuler</a></li>
          <li><a href="index.php?view=prestasi"><i class="fa fa-circle-o"></i> Data Prestasi</a></li>
          <li><a href="index.php?view=raport"><i class="fa fa-circle-o"></i> Data Nilai Raport</a></li>
          <li><a href="index.php?view=ledgermapel"><i class="fa fa-circle-o"></i> Data Ledger Mapel</a></li>
          <li><a href="index.php?view=ledgerkelas"><i class="fa fa-circle-o"></i> Data Ledger Kelas</a></li>
          <li><a href="index.php?view=raportcetakuts"><i class="fa fa-circle-o"></i> Cetak Raport Bulanan</a></li>
          <li><a href="index.php?view=raportcetak"><i class="fa fa-circle-o"></i> Cetak Raport Akhir</a></li>
          <!--<li><a href="index.php?view=bukuinduk"><i class="fa fa-circle-o"></i> Cetak Buku Induk</a></li>-->
        </ul>
      </li>
		   <li class="sidebar-header"> 
			 <span>&nbsp;&nbsp;USERGUIDES</span>
			 </li>
      <li><a href="index.php?view=dokumentasiguru"><i class="fa fa-fw fa-file-pdf-o"></i> <span>Documentation</span></a></li>
    </ul>
        </section>