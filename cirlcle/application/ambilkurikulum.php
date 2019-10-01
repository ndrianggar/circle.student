<?php
mysql_connect("localhost","root","");
mysql_select_db("cless");

	$mapel = $_GET['mapel'];{
	$kurikulum = mysql_query("SELECT kode_kurikulum,kurikulum FROM rb_kurikulum WHERE kode_pelajaran='$mapel' ORDER by kurikulum");
	while($k = mysql_fetch_array($mapel))

	echo "<option>-- Pilih Mapel--</option>";
		while($k = mysql_fetch_array($kelas)){
		echo "<option value=\"".$k['kode_kurikulum']."\">".$k['kurikulum']."</option>\n";

	}
	
	?>