<?php
  // memanggil class PHPExcel
  include 'import_data/PHPExcel/PHPExcel.php';
  include 'import_data/PHPExcel/PHPExcel/IOFactory.php';
  // load excel
  $file = $_FILES['fileexcel']['tmp_name'];
  $load = PHPExcel_IOFactory::load($file);
  $sheets = $load->getActiveSheet()->toArray(null,true,true,true);

  $i = 1;
  foreach ($sheets as $sheet) {
    // karena data yang di excel di mulai dari baris ke 2
    // maka jika $i lebih dari 1 data akan di masukan ke database
    if ($i > 1) {
      // nama ada di kolom A
      // sedangkan alamat ada di kolom B
      $data1 = $sheet['A'];
      $data2 = $sheet['B'];
      $data3 = $sheet['C'];
      $data4 = $sheet['D'];
      $data5 = $sheet['E'];
      $data6 = $sheet['F'];
      $data7 = $sheet['G'];
      $data8 = $sheet['H'];
      $data9 = $sheet['I'];
      $data10 = $sheet['J'];
      mysql_query("INSERT INTO rb_bank_pertanyaan_objektif VALUES('','0','$_GET[id_topiksoal]','$_GET[kelas]','$_GET[mapel]','$data1','$data2','$data3','$data4','$data5','$data6','$data7','$data8','$data9','$data10','$_SESSION[id]')");
    }
    $i++;
  }
echo "<script>document.location='index.php?view=banksoal&act=lihatsoal&mapel=$_GET[mapel]&kelas=$_GET[kelas]&id_topiksoal=$_GET[id_topiksoal]&sukses';</script>";
?>

