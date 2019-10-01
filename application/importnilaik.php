<?php
include 'import_data/PHPExcel/PHPExcel.php';
Include 'import_data/PHPExcel/PHPExcel/IOFactory.php';

        $target = basename($_FILES['nilaik']['name']) ;
        move_uploaded_file($_FILES['nilaik']['tmp_name'], $target);
        
        $data = new Spreadsheet_Excel_Reader($_FILES['nilaik']['name'],false);
        
        $baris = $data->rowcount($sheet_index=0);
          

          for ($i=4; $i<=$baris; $i++){      
          $nisn       = $data->val($i,2);
          $kd         = $data->val($i, 4);
          $nilai1       = $data->val($i, 5);
          $nilai2       = $data->val($i, 6);   
          $nilai3       = $data->val($i, 7);
          $nilai4       = $data->val($i, 8);   
          $nilai5       = $data->val($i, 9);
          $nilai6       = $data->val($i, 10); 
          $deskripsi    = $data->val($i, 11);   
      
          $query ="INSERT INTO rb_nilai_keterampilan (`id_nilai_keterampilan`, `kodejdwl`, `nisn`, `kd`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `deskripsi`, `user_akses`, `waktu`, `tahun`) VALUES ('','$_GET[jdwl]','$nisn','$kd','$nilai1','$nilai2','$nilai3','$nilai4','$nilai5','$nilai6','$deskripsi','$_SESSION[id]','".date('Y-m-d H:i:s')."','$_GET[tahun]');";

    
           $hasil = mysql_query($query);       

       }
         
           if(!$hasil){
          //jika import gagal
            die(mysql_error());
            }else{

          //jika impor berhasil
          echo "<script>document.location='index.php?view=raport&act=listsiswaketerampilan&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&status=sukses';</script>";
              }
    
          //hapus file xls yang udah dibaca
          unlink($_FILES['nilaip']['name']);
        
        ?>
