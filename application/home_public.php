
<div class="container">
 <div class="row">  
  <div class="col-md-8 mx-auto">

      <?php
        $r1 = mysql_fetch_array(mysql_query("SELECT * FROM halamanstatis where home='1'"));
        $isi_berita = strip_tags($r1['isi_halaman']); 
        $isi = substr($isi_berita,800); 
        $isi = substr($isi_berita,strrpos($isi," "));
        echo "<h2 class='section-heading'>$r1[judul]</h2>
              <p>$isi</p>
             ";
      ?>
  </div>
 </div>
</div></section></br></br>
<div class="container">
 <div class="row">  
  <div class="col-md-13 mx-auto">
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
               
              </div>";
        }
      ?>
  </div>
</div>
</div>
</div>


 <!--   <p><a class='btn btn-default' href='index.php?view=detailhalaman&id=$row[id_halaman]' role='button'>View details »</a></p> -->