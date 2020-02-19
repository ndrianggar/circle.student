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
            <li class="header" style='color:#fff; text-transform:uppercase; border-bottom:2px solid #00c0ef'>MENU <?php echo $level; ?> <?php echo $unit;?></li>
            <li><a href="index.php"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="sidebar-header"> 
			 <span>MANAGE DATA MASTER</span>
			 </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-th"></i> <span>Data Master</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=identitas"><i class="fa fa-circle-o"></i> Data Identitas Sekolah</a></li>
                <li><a href="index.php?view=kurikulum"><i class="fa fa-circle-o"></i> Data Kurikulum</a></li>
                <li><a href="index.php?view=tahunakademik"><i class="fa fa-circle-o"></i> Data Tahun Akademik</a></li>
                <li><a href="index.php?view=gedung"><i class="fa fa-circle-o"></i> Data Gedung</a></li>
                <li><a href="index.php?view=ruangan"><i class="fa fa-circle-o"></i> Data Ruangan</a></li>
                <li><a href="index.php?view=golongan"><i class="fa fa-circle-o"></i> Data Golongan</a></li>
                <li><a href="index.php?view=ptk"><i class="fa fa-circle-o"></i> Data Jenis PTK</a></li>
                
                <li><a href="index.php?view=kelas"><i class="fa fa-circle-o"></i> Data Kelas</a></li>
                <li><a href="index.php?view=kelaspararel"><i class="fa fa-circle-o"></i> Data Kelas Pararel</a></li>
                <li><a href="index.php?view=statuspegawai"><i class="fa fa-circle-o"></i> Data Status Kepegawaian</a></li>
              </ul>
            </li>
			<li class="sidebar-header"> 
			 <span>MANAGE DATA PENGGUNA</span>
			 </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-user"></i> <span>Data Pengguna</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=siswa"><i class="fa fa-circle-o"></i> Data Siswa</a></li>
                <li><a href="index.php?view=guru"><i class="fa fa-circle-o"></i> Data Guru</a></li>
               <!-- <li><a href="index.php?view=wakilkepala"><i class="fa fa-circle-o"></i> Data Kepala Sekolah</a></li>
                 <li><a href="index.php?view=admin"><i class="fa fa-circle-o"></i> Data Administrator</a></li>
                 <li><a href="index.php?view=adminkonten"><i class="fa fa-circle-o"></i> Data Admin konten</a></li>
                <li><a href="index.php?view=modul"><i class="fa fa-circle-o"></i> Data Modul Akses Khusus</a></li>!-->
              </ul>
            </li>
			<li class="sidebar-header"> 
			 <span>MANAGE DATA AKADEMIK</span>
			 </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-tag"></i> <span>Data Akademik</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=kelompokmapel"><i class="fa fa-circle-o"></i> Data Kelompok Mapel</a></li>
                <li><a href="index.php?view=matapelajaran"><i class="fa fa-circle-o"></i> Data Mata Pelajaran</a></li>
                <li><a href="index.php?view=jadwalpelajaran"><i class="fa fa-circle-o"></i> Data Jadwal Pelajaran</a></li>
               <li><a href="index.php?view=kaldik"><i class="fa fa-circle-o"></i>Kalender Akademik</a></li>
              <!--  <li><a href="index.php?view=kompetensidasar"><i class="fa fa-circle-o"></i>Data Kompetensi Dasar</a></li>-->
                <!--<li><a href="index.php?view=bahantugas"><i class="fa fa-circle-o"></i>Data Bobot Raport *</a></li>-->
               <!--  <li><a href="index.php?view=penilaiandiri"><i class="fa fa-circle-o"></i>Data Penilaian Diri</a></li>-->
                <!--<li><a href="index.php?view=bahantugas"><i class="fa fa-circle-o"></i>Data Set Rubrik *</a></li>-->
                <!--<li><a href="index.php?view=predikat"><i class="fa fa-circle-o"></i>Data Rentang Nilai</a></li>
                <li><a href="index.php?view=penilaianteman"><i class="fa fa-circle-o"></i>Data Penilaian Teman</a></li>--!>
              </ul>
            </li>

            <!--<li class="treeview">
              <a href="#"><i class="fa fa-send"></i> <span>SMS Gateway</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=sms"><i class="fa fa-circle-o"></i> Send SMS</a></li>
                <li><a href="index.php?view=broadcast"><i class="fa fa-circle-o"></i> Broadcast SMS</a></li>
                <li><a href="index.php?view=autoreply"><i class="fa fa-circle-o"></i> Autoreply</a></li>
                <li><a href="index.php?view=smstoweb"><i class="fa fa-circle-o"></i> Inbox SMS2WEB</a></li>
                <li><a href="index.php?view=outboxautoreply"><i class="fa fa-circle-o"></i> Outbox Autoreply</a></li>
              </ul>
            </li>-->
			<li class="sidebar-header"> 
			 <span>MANAGE DATA ABSENSI</span>
			 </li>
        <li class="treeview">
          <a href="#"><i class="fa fa-th-large"></i> <span>Data Absensi</span><i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li><a href="index.php?view=absenguru"><i class="fa fa-circle-o"></i> Absensi Guru</a></li>
            <li><a href="index.php?view=absensiswa"><i class="fa fa-circle-o"></i> Absensi Siswa</a></li>
            <li><a href="index.php?view=rekapabsensiswa"><i class="fa fa-circle-o"></i> Rekap Absensi Siswa</a></li>
          </ul>
        </li>
        <li class="sidebar-header"><span>MANAGE JOURNAL KBM</span></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-users"></i> <span>Journal KBM</span><i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">  
            <!-- <li><a href="index.php?view=journalkbm"><i class="fa fa-tags"></i><span>Input Journal KBM</span></a></li> -->
            <li><a href="index.php?view=laporanJurnalKbm"><i class="fa fa-tags"></i><span>Laporan Journal KBM</span></a></li>
          </ul>
        </li>
			<!--
            <li class="treeview">
              <a href="#"><i class="fa fa-list"></i> <span>PSB Online</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=psbmenu"><i class="fa fa-circle-o"></i> Data Menu</a></li>
                <li><a href="index.php?view=psbhalaman"><i class="fa fa-circle-o"></i> Data Halaman</a></li>
                <li><a href="index.php?view=psbaktivasi"><i class="fa fa-circle-o"></i> Kode Aktivasi</a></li>
                <li><a href="index.php?view=psbsma"><i class="fa fa-circle-o"></i> Data Pendaftar SMA</a></li>
                <li><a href="index.php?view=psbsmk"><i class="fa fa-circle-o"></i> Data Pendaftar SMK</a></li>
                <li><a href="index.php?view=psbsmp"><i class="fa fa-circle-o"></i> Data Pendaftar SMP</a></li>
              </ul>
            </li>-->

           <!-- <li class="treeview">
              <a href="#"><i class="fa fa-th-large"></i> <span>Data Keuangan</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=jeniskeuangan"><i class="fa fa-circle-o"></i> Jenis Biaya</a></li>
                <li><a href="index.php?view=pembayaransiswa"><i class="fa fa-circle-o"></i> Pembayaran Siswa</a></li>
                <li><a href="index.php?view=laporankeuangan"><i class="fa fa-circle-o"></i> Laporan Keuangan</a></li>
              </ul>
            </li>-->

           <!-- <li><a href="index.php?view=journalkbm"><i class="fa fa-tags"></i><span>Journal KBM</span></a></li>
            <!--<li><a href="index.php?view=forum"><i class="fa fa-th-list"></i> <span>Forum Diskusi</span></a></li>-->

            <!--<li class="treeview">
              <a href="#"><i class="fa fa-users"></i> <span>Quiz/Ujian Online</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=banksoal"><i class="fa fa-circle-o"></i> Bank Soal</a></li>
                <li><a href="index.php?view=soal"><i class="fa fa-circle-o"></i> Data Quiz dan Ujian</a></li>
              </ul>
            </li>!-->
             <li class="treeview">
        <a href="#"><i class="glyphicon glyphicon-book"></i><span>Materi</span><i class="fa fa-angle-left pull-right"></i></a>
        <ul class="treeview-menu">
     <!--      <li><a href="index.php?view=materi"><i class="fa fa-pencil"></i>Input Materi</a></li> -->
          <li><a href="index.php?view=list_materi"><i class="fa fa-book"></i>List Materi</a></li>
        </ul>
      </li>
         <li class="treeview">
              <a href="#"><i class="fa fa-calendar"></i> <span>Laporan Nilai Siswa</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                 <li><a href="index.php?view=raportuts"><i class="fa fa-circle-o"></i> Data Nilai Bulanan</a></li>
                <li><a href="index.php?view=downnilaiuts"><i class="fa fa-circle-o"></i> Download Nilai Bulanan</a></li>
                <li><a href="index.php?view=capaianhasilbelajar"><i class="fa fa-circle-o"></i> Data Capaian Belajar</a></li>
                <li><a href="index.php?view=extrakulikuler"><i class="fa fa-circle-o"></i> Data Extrakulikuler</a></li>
                <li><a href="index.php?view=prestasi"><i class="fa fa-circle-o"></i> Data Prestasi</a></li>
                <li><a href="index.php?view=raport"><i class="fa fa-circle-o"></i> Data Nilai Raport</a></li>
                <li><a href="index.php?view=ledger"><i class="fa fa-circle-o"></i> Data Ledger</a></li>
                <li><a href="index.php?view=ledgermapel"><i class="fa fa-circle-o"></i> Data Ledger Mapel</a></li>
                <li><a href="index.php?view=ledgerkelas"><i class="fa fa-circle-o"></i> Data Ledger Kelas</a></li>
                <li><a href="index.php?view=raportcetakuts"><i class="fa fa-circle-o"></i> Cetak Raport Bulanan</a></li>
                <li><a href="index.php?view=raportcetak"><i class="fa fa-circle-o"></i> Cetak Raport Akhir</a></li>
                <!--<li><a href="index.php?view=bukuinduk"><i class="fa fa-circle-o"></i> Cetak Buku Induk</a></li>-->
              </ul>
            </li>

             <li class="treeview">
              <a href="#"><i class="fa fa-list"></i> <span>Bimbingan Konseling</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=categ_pel"><i class="fa fa-circle-o"></i> Data Kategori Bimbingan</a></li>
                <li><a href="index.php?view=jns_mslh"><i class="fa fa-circle-o"></i> Data Jenis Masalah</a></li>
                 <li><a href="index.php?view=jns_pel"><i class="fa fa-circle-o"></i> Data Jenis Pelanggaran</a></li>
                <li><a href="index.php?view=layanan"><i class="fa fa-circle-o"></i> Data Layanan</a></li>
                <li><a href="index.php?view=sanksi"><i class="fa fa-circle-o"></i> Data Sanksi</a></li>
                <li><a href="index.php?view=pros_pel"><i class="fa fa-circle-o"></i> Proses Pelanggaran</a></li>
                <li><a href="index.php?view=lap_pel"><i class="fa fa-circle-o"></i> Laporan Pelanggaran</a></li>
               </ul>
            </li>
              <!--  <li class="treeview">
              <a href="#"><i class="fa fa-calendar"></i> <span>Laporan Nilai Siswa</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=raportuts"><i class="fa fa-circle-o"></i> Data Nilai Bulanan</a></li>
                <li><a href="index.php?view=capaianhasilbelajar"><i class="fa fa-circle-o"></i> Data Capaian Belajar</a></li>
                <li><a href="index.php?view=extrakulikuler"><i class="fa fa-circle-o"></i> Data Extrakulikuler</a></li>
                <li><a href="index.php?view=prestasi"><i class="fa fa-circle-o"></i> Data Prestasi</a></li>
                <li><a href="index.php?view=raport"><i class="fa fa-circle-o"></i> Data Nilai Raport</a></li>
                <li><a href="index.php?view=ledger"><i class="fa fa-circle-o"></i> Data Ledger</a></li>
              <!--   <li><a href="index.php?view=ledgermapel"><i class="fa fa-circle-o"></i> Data Ledger Mapel</a></li>
                <li><a href="index.php?view=ledgerkelas"><i class="fa fa-circle-o"></i> Data Ledger Kelas</a></li>
                <li><a href="index.php?view=raportcetakuts"><i class="fa fa-circle-o"></i> Cetak Raport Bulanan</a></li>
                <li><a href="index.php?view=raportcetak"><i class="fa fa-circle-o"></i> Cetak Raport Akhir</a></li> -->
                <!--<li><a href="index.php?view=bukuinduk"><i class="fa fa-circle-o"></i> Cetak Buku Induk</a></li>
              </ul>
            </li>-->
            <li><a href="index.php?view=dokumentasi"><i class="fa fa-book"></i> <span>Documentation</span></a></li>

              <?php if ($_SESSION['unit']=='SMP PUTRA'){ ?>
              <li><a href="index.php?view=cctvsmp"><i class=""></i><span>CCTV</span></a></li>

             
              <?php }if ($_SESSION['unit']=='SMA PUTRA'){ ?>
            <li><a href="index.php?view=cctvsma"><i class=""></i><span>CCTV</span></a></li>
            <?php }?>
          </ul>
        </section>