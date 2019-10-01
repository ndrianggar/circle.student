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
              <a href="#"><i class="fa fa-users"></i> <span>Materi dan Tugas</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
               
                <li><a href="index.php?view=materi"><i class="fa fa-circle-o"></i> Materi</a></li>
                <li><a href="index.php?view=banksoal"><i class="fa fa-circle-o"></i> Bank Soal</a></li>
                
              </ul>
            </li>  
			<!--<li class="treeview">
			<a href="#"><i class="glyphicon glyphicon-pencil"></i><span>Kegiatan Admin Konten</span></a>
			<ul class="treeview-menu">
			<li><a href="index.php?view=createbab"><i class="fa fa-fw fa-list-ul"></i><span>Bab & Sub Bab </span></a></li>
			<li><a href="index.php?view=listmateri"><i class="fa fa-fw fa-file-archive-o"></i><span> Materi</span></a></li>
			<li><a href="index.php?view=inputmateri&act=listbahanmateri"><i class="fa fa-fw fa-cloud-upload"></i><span>input Materi</span></a></li>
			</ul>
			</li>-->
         
            <li><a href=""><i class="fa fa-book"></i> <span>Documentation</span></a></li>
          </ul>
        </section>