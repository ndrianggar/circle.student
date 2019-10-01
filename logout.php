<?php
  session_start();
  if ($_SESSION['level']=="siswa" || $_SESSION['level']=="parent" ) {
  	session_destroy();
  	echo "<script>window.alert('Sukses Keluar dari system.');
				window.location='index.php'</script>";
  }else{
  	session_destroy();
  	echo "<script>window.alert('Sukses Keluar dari system.');
				window.location='login.php'</script>";
  }
	die();
?>