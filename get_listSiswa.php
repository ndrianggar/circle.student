<?php

 include "config/koneksi.php";
 get_listSiswa($_GET['search']);
 	
 
function get_listSiswa($search){


 $sql = mysql_query("SELECT * FROM rb_siswa a INNER JOIN rb_kls_pararel b ON a.id_kls_pararel=b.id_kls_pararel WHERE nama LIKE '%$search%' ORDER BY nama ASC");
 // $result = mysql_query($sql);
 
 // if ($result->num_rows > 0) {
     $list = array();

     $key=0;
     while ($row = mysql_fetch_array($sql)) {
         $list[$key]['id'] = $row['id_siswa'];
         $list[$key]['text'] = $row['nama']." ".$row['nm_pararel'].""; 
         $list[$key]['image'] = $row['foto'];
      
     $key++;
     }
     echo json_encode($list);
 // } else {
 //     echo "hasil kosong";
 // }

}
 
?>