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
			 <li class="treeview">
              <a href="#"><i class="fa fa-th"></i> <span>Data Master</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
			   <li><a href="index.php?view=identitas"><i class="fa fa-circle-o"></i> Data Identitas Sekolah</a></li>
                <li><a href="index.php?view=kurikulum"><i class="fa fa-circle-o"></i> Data Kurikulum</a></li>
                <li><a href="index.php?view=tahunakademik"><i class="fa fa-circle-o"></i> Data Tahun Akademik</a></li>
                <li><a href="index.php?view=kelas"><i class="fa fa-circle-o"></i> Data Kelas</a></li>
				<li><a href="index.php?view=kelaspararel"><i class="fa fa-circle-o"></i> Data Kelas Pararel</a></li>
                <li><a href="index.php?view=matapelajaran"><i class="fa fa-circle-o"></i> Data Mata Pelajaran</a></li>
                <li><a href="index.php?view=jadwalpelajaran"><i class="fa fa-circle-o"></i> Data Jadwal Pelajaran</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#"><i class="fa fa-user"></i> <span>Data Pengguna</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=siswa"><i class="fa fa-circle-o"></i> Data Siswa</a></li>
                <li><a href="index.php?view=guru"><i class="fa fa-circle-o"></i> Data Guru</a></li>
             
              </ul>
            </li>
			<li class="treeview">
              <a href="#"><i class="fa fa-tag"></i> <span>Data Akademik</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=kelompokmapel"><i class="fa fa-circle-o"></i> Data Kelompok Mapel</a></li>
                <li><a href="index.php?view=matapelajaran"><i class="fa fa-circle-o"></i> Data Mata Pelajaran</a></li>
                <li><a href="index.php?view=jadwalpelajaran"><i class="fa fa-circle-o"></i> Data Jadwal Pelajaran</a></li>
                <li><a href="index.php?view=bahantugas"><i class="fa fa-circle-o"></i>Data Bahan dan Tugas</a></li>
                <li><a href="index.php?view=kompetensidasar"><i class="fa fa-circle-o"></i>Data Kompetensi Dasar</a></li>
                <li><a href="index.php?view=penilaiandiri"><i class="fa fa-circle-o"></i>Data Penilaian Diri</a></li>
                <li><a href="index.php?view=predikat"><i class="fa fa-circle-o"></i>Data Rentang Nilai</a></li>
                <li><a href="index.php?view=penilaianteman"><i class="fa fa-circle-o"></i>Data Penilaian Teman</a></li>
              </ul>
            </li>
           
            <li class="treeview">
              <a href="#"><i class="fa fa-th-large"></i> <span>Data Absensi</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=rekapabsensiswa"><i class="fa fa-circle-o"></i> Rekap Absensi Siswa</a></li>
              </ul>
            </li>
			<li class="treeview">
              <a href="#"><i class="fa fa-th-large"></i> <span>Data Keuangan</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="index.php?view=jeniskeuangan"><i class="fa fa-circle-o"></i> Jenis Biaya</a></li>
                <li><a href="index.php?view=laporankeuangan"><i class="fa fa-circle-o"></i> Laporan Keuangan</a></li>
              </ul>
            </li>
            <li><a href="index.php?view=bahantugas"><i class="fa fa-file"></i><span>Bahan dan Tugas</span></a></li>
            <li><a href="index.php?view=soal"><i class="fa fa-users"></i><span>Quiz / Ujian Online</span></a></li>
            <li><a href="index.php?view=journalkbm"><i class="fa fa-tags"></i><span>Journal KBM</span></a></li>
            <li><a href="index.php?view=ledgerkelas"><i class="fa fa-circle-o"></i> Data Ledger Kelas</a></li>
            <li><a href="index.php?view=raportcetak"><i class="fa fa-calendar"></i> <span>Laporan Nilai</span></a></li>
            </ul>
		    </section>