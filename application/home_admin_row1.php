            <a style='color:#000' href='index.php?view=siswa'>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-users"></i></span>
                <div class="info-box-content">
                <?php $siswa = mysql_fetch_array(mysql_query("SELECT count(*) as total FROM rb_siswa")); ?>
                  <span class="info-box-text">Siswa</span>
                  <span class="info-box-number"><?php echo $siswa[total]; ?></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            </a>

            <a style='color:#000' href='index.php?view=guru'>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-green"><i class="fa fa-user"></i></span>
                <div class="info-box-content">
                <?php $guru = mysql_fetch_array(mysql_query("SELECT count(*) as total FROM rb_guru")); ?>
                  <span class="info-box-text">Guru</span>
                  <span class="info-box-number"><?php echo $guru[total]; ?></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            </a>

            <a style='color:#000' href='index.php?view=bahantugas'>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="fa fa-files-o"></i></span>
                <div class="info-box-content">
                <?php $upload = mysql_fetch_array(mysql_query("SELECT count(*) as total FROM rb_elearning")); ?>
                  <span class="info-box-text">Uploads</span>
                  <span class="info-box-number"><?php echo $upload[total]; ?></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            </a>

            <a style='color:#000' href='index.php?view=forum'>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-star-o"></i></span>
                <div class="info-box-content">
                <?php $forum = mysql_fetch_array(mysql_query("SELECT count(*) as total FROM rb_forum_topic")); ?>
                  <span class="info-box-text">Forum</span>
                  <span class="info-box-number"><?php echo $forum[total]; ?></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            </a>

            <div class="col-sm-6">
                  <div class="box">
                        <div class="box-header ">
                          <i class="fa fa-bullhorn"></i>
                          <h3 class="box-title">Informasi Telah Dilakukan Penginputan Raport</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body" style="overflow-y: auto; height: 200px" >
                          <?php
                            $tampil = mysql_query("SELECT RIGHT(`raport_bulan`, 4) AS Tahun, raport_bulan FROM rb_nilai_uts 
                                                    WHERE  raport_bulan !='' GROUP by raport_bulan order by id_nilai_uts DESC" );



                            $no = 1;

                            while($r=mysql_fetch_array($tampil)){
                              $date = DATE("Y")-2;

                              if ($r["Tahun"]==$date){

                                 echo "
                                    <a class='btn btn-block btn-social btn-github'>
                                    <i class='glyphicon glyphicon-calendar'></i>$r[raport_bulan] Input Raport
                                    </a>";
                              }else{

                              echo "
                                    <a class ='btn btn-block btn-social btn-dropbox'>
                                    <i class='glyphicon glyphicon-calendar'></i>$r[raport_bulan] Input Raport
                                    </a>";
                                  }
                          $no++;
                            }

                          ?>
                          
                        
                        </div><!-- /.box-body -->
                      </div>
                    </div>