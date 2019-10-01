<?php
if ($_GET[act]==''{
cek_session_admin();
?>


<!--- function view page-->

<?php
}elseif($_GET[act]='soal'){
cek_session_guru();
if(isset($_POST[soal]
		$dir_gambar ='files/';
		$filename = basename($_FILES['c']);
		$filename = date("YmdHis").'-'.basename($FILES['c']['name']);
		$uploadfile = $dir_gambar . $filenamee;
		if ($filename != ''){
			if (move_uploaded_file($_FILES['c']['tmp_name'], $uploadfile)){
				$query = mysql_query("INSERT INTO diisitabledatabase  values ('','$_POST[a]','$_GET[]','$_POST[b]','$filenamee','$_POST[e]','$_POST[f]'");
				if ($query){
					echo "<script>document.location='index.php?view=
					}
			}
			
		
		}


}

<?php
	if ($_SESSION[level]=='guru'){
		include "tugas.php";
	}
	
	?>
	
	<?php	
		if($_GET[view]=='{
		
		}
	?>