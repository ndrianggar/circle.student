<?php
include 'import_data/PHPExcel/PHPExcel.php';
Include 'import_data/PHPExcel/PHPExcel/IOFactory.php';

        $target = basename($_FILES['nilaip']['name']) ;
        move_uploaded_file($_FILES['nilaip']['tmp_name'], $target);
        
        $data = new Spreadsheet_Excel_Reader($_FILES['nilaip']['name'],false);
        
        $baris = $data->rowcount($sheet_index=0);
               
        $getid = mysql_query("SELECT * FROM rb_nilai_pengetahuan_semester where kodejdwl='$_GET[jdwl]'");
                         $h = 2;  while ($ro=mysql_fetch_array($getid)) {
                            $id[$h++]= $ro[id_nilai_pengetahuan_semester];

          
                           }
         $cekid = mysql_num_rows($getid);

          for ($i=2; $i<=$baris; $i++){      
          $nisn         = $data->val($i, 2);
          $nilai1       = $data->val($i, 4);
          $nilai2       = $data->val($i, 5);                    
        
            if($cekid>0){
              $query ="UPDATE rb_nilai_pengetahuan_semester set "; if ($nilai1!=0) { $query .= "nilai1 = '$nilai1',"; } $query .="nilai2 = '$nilai2' where id_nilai_pengetahuan_semester ='$id[$i]'";
              $cekLedger = mysql_num_rows(mysql_query("SELECT nisn FROM rb_ledger WHERE kode_pelajaran = '$_GET[kd]' AND kode_kelas = '$_GET[id]' AND tahun = '$_GET[tahun]' AND nisn = '$nisn'"));
              if ($cekLedger > 0) {
              mysql_query("UPDATE rb_ledger SET ub = '$nilai1', uas = '$nilai2', pengetahuan = '$raport' WHERE kode_pelajaran = '$_GET[kd]' AND nisn = 'nisn' AND tahun = '$_GET[tahun]'");
              }else{
              mysql_query("INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_POST[jdwl]','$_GET[kd]','$nisn','$_GET[id]','$_GET[ie]','$nilai1','$nilai2','$raport','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')");
              }
            }else{
              $query = "INSERT INTO rb_nilai_pengetahuan_semester VALUES ('','$_GET[jdwl]','$_GET[kd]','$nisn','$nilai1','$nilai2','$_SESSION[id]','".date('Y-m-d H:i:s')."','$_GET[tahun]')";
              $cekLedger = mysql_num_rows(mysql_query("SELECT nisn FROM rb_ledger WHERE kode_pelajaran = '$_GET[kd]' AND kode_kelas = '$_GET[id]' AND tahun = '$_GET[tahun]' AND nisn = '$nisn'"));
              if ($cekLedger > 0) {
              mysql_query("UPDATE rb_ledger SET ub = '$nilai1', uas = '$nilai2', pengetahuan = '$raport' WHERE kode_pelajaran = '$_GET[kd]' AND nisn = 'nisn' AND tahun = '$_GET[tahun]'");
              }else{
              mysql_query("INSERT INTO `rb_ledger`(`id_ledger`, `kodejdwl`, `kode_pelajaran`, `nisn`, `kode_kelas`, `id_kls_pararel`, `ub`, `uas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`, `tahun`) VALUES ('','$_POST[jdwl]','$_GET[kd]','$nisn','$_GET[id]','$_GET[ie]','$nilai1','$nilai2','$raport','','','','','','".date('Y-m-d H:i:s')."','$_GET[tahun]')");
              }
            }
             $hasil = mysql_query($query); 
          }
         
           if(!$hasil){
          //jika import gagal
            die(mysql_error());
            }else{

          //jika impor berhasil
          echo "<script>document.location='index.php?view=raport&act=listsiswa&jdwl=$_GET[jdwl]&kd=$_GET[kd]&id=$_GET[id]&ie=$_GET[ie]&tahun=$_GET[tahun]&status=sukses';</script>";
              }
    
          //hapus file xls yang udah dibaca
          unlink($_FILES['nilaip']['name']);
        
        ?>