<?php
include 'import_data/PHPExcel/PHPExcel.php';
Include 'import_data/PHPExcel/PHPExcel/IOFactory.php';

        $target = basename($_FILES['fileJadwal']['name']) ;
        move_uploaded_file($_FILES['fileJadwal']['tmp_name'], $target);
        
        $data = new Spreadsheet_Excel_Reader($_FILES['fileJadwal']['name'],false);
        
        $baris = $data->rowcount($sheet_index=0);
               
        // $getid = mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kodejdwl='$_GET[jdwl]'");
        //                  $h = 2;  while ($ro=mysql_fetch_array($getid)) {
        //                     $id[$h++]= $ro[id_nilai_pengetahuan_semester];

          
        //                    }
        //  $cekid = mysql_num_rows($getid);

      for ($i=2; $i<=$baris; $i++){      
          $id_tahun_akademik = $data->val($i,1);
          $kode_kelas = $data->val($i,2);
          $id_kls_pararel = $data->val($i,3);
          $kode_pelajaran = $data->val($i,4);
          $kode_ruangan = $data->val($i,5);
          $nip = $data->val($i,6);
          $paralel = $data->val($i,7);
          $jadwal_serial = $data->val($i,8);
          $jam_mulai = $data->val($i,9);
          $jam_selesai = $data->val($i,10);
          $hari = $data->val($i,11);
          $aktif    = $data->val($i,12);              
        
        // if($cekid>0){
        // $query ="UPDATE rb_nilai_pengetahuan_semester set "; if ($nilai1!=0) { $query .= "nilai1 = '$nilai1',"; } $query .="nilai2 = '$nilai2' where id_nilai_pengetahuan_semester ='$id[$i]'";

        // }else{
        //   $query = "INSERT INTO rb_nilai_pengetahuan_semester VALUES ('','$_GET[jdwl]','$_GET[kd]','$nisn','$nilai1','$nilai2','$_SESSION[id]','".date('Y-m-d H:i:s')."','$_GET[tahun]')";

        // }
        $query = "INSERT INTO `rb_jadwal_pelajaran`(`kodejdwl`, `id_tahun_akademik`, `kode_kelas`, `id_kls_pararel`, `kode_pelajaran`, `kode_ruangan`, `nip`, `paralel`, `jadwal_serial`, `jam_mulai`, `jam_selesai`, `hari`, `aktif`) 

        VALUES ('','$id_tahun_akademik','$kode_kelas','$id_kls_pararel','$kode_pelajaran','$kode_ruangan','$nip','$paralel','$jadwal_serial','$jam_mulai','$jam_selesai','$hari','$aktif')"; 
        $hasil = mysql_query($query); 


       }
         
           if(!$hasil){
          //jika import gagal
            die(mysql_error());
            }else{

          //jika impor berhasil
          echo "<script>document.location='index.php?view=jadwalpelajaran&tahun=".$_GET[tahun]."&kelas=".$_GET[kelas]."&status=sukses';</script>";
              }
    
          //hapus file xls yang udah dibaca
          unlink($_FILES['fileJadwal']['name']);
        
        ?>