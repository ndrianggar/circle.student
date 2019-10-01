<?php
mysql_connect("localhost","root","");
mysql_select_db("cless");

	$kelas = $_GET['kelas'];{
	$mapel = mysql_query("SELECT kode_pelajaran,namamatapelajaran FROM rb_mata_pelajaran WHERE kode_kelas='$kelas' ORDER by namamatapelajaran");
	while($k = mysql_fetch_array($mapel))

	echo "<option>-- Pilih Mapel--</option>";
		while($k = mysql_fetch_array($mapel)){
		echo "<option value=\"".$k['kode_pelajaran']."\">".$k['namamatapelajaran']."</option>\n";

	}
	
	?>