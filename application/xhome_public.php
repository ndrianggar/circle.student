<div class="col-xs-12">  
  <div class="jumbotron" style='padding:20px 0px 40px 0px'>
      <?php
        $r1 = mysql_fetch_array(mysql_query("SELECT * FROM halamanstatis where home='1'"));
        $isi_berita = strip_tags($r1['isi_halaman']); 
        $isi = substr($isi_berita,0,210); 
        $isi = substr($isi_berita,0,strrpos($isi," "));
        echo "<h1>$r1[judul]</h1>
              <p>$isi...</p>
              <p><a class='btn btn-primary btn-lg' href='index.php?view=detailhalaman&id=$r1[id_halaman]' role='button'>Baca Selengkapnya »</a></p>";
      ?>
  </div>

  <div class="row">
    <?php
        $query = mysql_query("SELECT * FROM halamanstatis where home >= '2'");
        while ($row = mysql_fetch_array($query)) {
        $isi_berita = strip_tags($row['isi_halaman']); 
        $isi = substr($isi_berita,0,210); 
        $isi = substr($isi_berita,0,strrpos($isi," "));
        echo "<div class='col-md-4'>
                <h2>$row[judul]</h2>
                <p>$isi</p>
                <p><a class='btn btn-default' href='index.php?view=detailhalaman&id=$row[id_halaman]' role='button'>View details »</a></p>
              </div>";
        }
      ?>
  </div>
</div>
