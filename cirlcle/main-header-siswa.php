<nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="index.php" class="navbar-brand"><b>IHBS</b> AKADEMIK</a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">
          <?php if ($_SESSION['level']=='siswa'){ ?>
          <!--  <li><a href="index.php?view=penilaiandirisiswa"> <span>Penilaian Diri</span></a></li>
            <li><a href="index.php?view=penilaiantemansiswa"> <span>Penilaian Teman</span></a></li>-->
            <li><a href="index.php?view=bahantugas"><span>Materi</span></a></li>
            <li><a href="index.php?view=quiz"><span>Tugas</span></a></li>
            <li><a href="index.php?view=forum&act=detailsiswa"> <span>Forum</span></a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Laporan Nilai <span class="caret"></span></a>
              <ul class="dropdown-menu"role="menu">
                <!--<li><a href="index.php?view=raportuts&act=detailsiswa"><i class="fa fa-circle-o"></i> Data Nilai UTS</a></li>-->
                <li><a href="index.php?view=raport&act=detailsiswa"> Data Nilai Raport</a></li>
              </ul>
            </li>
            <li><a href="index.php?view=dokumentasi"> <span>Documentation</span></a></li>
          </ul>
          <?php }elseif ($_SESSION['level']==''){ ?>
          <ul class="nav navbar-nav">
			<?php
					$menu = mysql_query("SELECT * FROM menu where id_parent='0' AND aktif='Ya' ORDER BY urutan ASC");
					while($dataMenu = mysql_fetch_assoc($menu)){
						$menu_id = $dataMenu['id_menu'];
						$submenu = mysql_query("SELECT * FROM menu where id_parent='$menu_id' AND aktif='Ya' ORDER BY urutan ASC");
						if(mysql_num_rows($submenu) == 0){
							echo '<li><a href="'.$dataMenu['link'].'">'.$dataMenu['nama_menu'].' </a></li>';
						}else{
							echo '
							<li class="dropdown">
								<a href="'.$dataMenu['link'].'" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">'.$dataMenu['nama_menu'].' <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">';
								while($dataSubmenu = mysql_fetch_assoc($submenu)){
									echo '<li><a href="'.$dataSubmenu['link'].'">'.$dataSubmenu['nama_menu'].'</a></li>';
								}
							echo '
								</ul>
							</li>';
						}
					}
				?>
        </ul>
          <?php } ?>
        </div>
        <!-- /.navbar-collapse -->
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <?php if ($_SESSION['level']=='siswa'){ ?>
              <li class="dropdown user user-menu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="<?php echo $foto; ?>" class="user-image" alt="User Image">
                    <span class="hidden-xs"><?php echo $nama; ?></span> <span class='caret'></span>
                  </a>
                  <ul class="dropdown-menu">
                    <!-- User image -->
                    <li class="user-header">
                      <img src="<?php echo $foto; ?>" class="img-circle" alt="User Image">
                      <p>
                        <?php echo $nama; ?>
                        <small><?php echo $level; ?></small>
                      </p>
                    </li>
                    <!-- Menu Body --
                    <li class="user-body">
                      <div class="col-xs-4 text-center">
                        <a href="#">Followers</a>
                      </div>
                      <div class="col-xs-4 text-center">
                        <a href="#">Sales</a>
                      </div>
                      <div class="col-xs-4 text-center">
                        <a href="#">Friends</a>
                      </div>
                    </li>
                    -- Menu Footer-->
                    <li class="user-footer">
                      <div class="pull-left">
                        <a href="index.php" class="btn btn-default btn-flat">Dashboard</a>
                      </div>
                      <div class="pull-right">
                        <?php 
                          if ($_SESSION[level]=='superuser'){
                              echo "<a href='index.php?view=admin&act=edit&id=$_SESSION[id]' class='btn btn-default btn-flat'>Edit Profile</a>";
                          }elseif($_SESSION[level]=='kepala'){
                              echo "<a href='index.php?view=admin&act=edit&id=$_SESSION[id]' class='btn btn-default btn-flat'>Edit Profile</a>";    
                          }elseif($_SESSION[level]=='guru'){
                              echo "<a href='index.php?view=guru&act=detailguru&id=$_SESSION[id]' class='btn btn-default btn-flat'>View Profile</a>";
                          }elseif($_SESSION[level]=='siswa'){
                              echo "<a href='index.php?view=siswa&act=detailsiswa&id=$_SESSION[id]' class='btn btn-default btn-flat'>View Profile</a>";
                          }
                        ?>
                      </div>
                    </li>
                  </ul>
                </li>
              <li><a href="logout.php" ><i class="fa fa-power-off"></i></a></li>
            <?php }elseif ($_SESSION['level']==''){ ?>
              <li><a href="siswa" ><i class="glyphicon glyphicon-log-in"></i> &nbsp; Login</a></li>
            <?php } ?>
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>