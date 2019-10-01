<div class="col-xs-12">  
	<div class="box">
		<div class="box-header">
			<h3 class="pull-left">List Materi</h3>
			<form method="GET" action="index.php">
			<table class="pull-right" style="margin-top: 15px;">
				<tr>
					<td>
						<input type="hidden" name="view" value="list_materi">
						<select class="form-control" name="kls">
							<option selected="selected">-Pilih Kelas-</option>
							<?php
							if ($_SESSION[unit]=="SMP PUTRA") {
								$kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('VII','VIII','IX')");
							}elseif ($_SESSION[unit]=="SMP PUTRI") {
								$kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('VII SMP','VIII SMP','IX SMP')");
							}elseif ($_SESSION[unit]=="SMA PUTRA") {
								$kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('X','XI','XII')");
							}elseif ($_SESSION[unit]=="SMA PUTRI") {
								$kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('X.IPA','XI.IPA','XI.IPS')");	
							}elseif ($_SESSION[level]=="superuser"){
								$kelas = mysql_query("SELECT * FROM rb_kelas WHERE kode_kelas in ('X.IPA','XI.IPA','XI.IPS','VII','VIII','IX','X','XI','XII')");
							}	
								while ($row = mysql_fetch_array($kelas)) {
								echo "<option value='$row[kode_kelas]'>".$row[kode_kelas]."</option>";
							}
							?>
						</select>
					</td>
					<td>
						<select class="form-control" name="kdPel">
							<option selected="selected">-Pilih Matapelajaran-</option>
							<?php
							if ($_SESSION[unit]=="SMP PUTRA") {
								$mapel = mysql_query("SELECT kode_pelajaran, namamatapelajaran,tingkat FROM rb_mata_pelajaran WHERE tingkat in ('VII','VIII','IX') AND unit='$_SESSION[unit]' ORDER BY tingkat ASC, namamatapelajaran ASC");
							}elseif ($_SESSION[unit]=="SMP PUTRI") {
								$mapel = mysql_query("SELECT kode_pelajaran, namamatapelajaran,tingkat FROM rb_mata_pelajaran WHERE tingkat in ('VII SMP','VIII SMP','IX SMP') AND unit='$_SESSION[unit]' ORDER BY tingkat ASC, namamatapelajaran ASC");
							}elseif ($_SESSION[unit]=="SMA PUTRI") {
								$mapel = mysql_query("SELECT kode_pelajaran, namamatapelajaran,tingkat FROM rb_mata_pelajaran WHERE tingkat in ('X.IPA','XI.IPA','XI.IPS') AND unit='$_SESSION[unit]' ORDER BY tingkat ASC, namamatapelajaran ASC");
							}elseif ($_SESSION[unit]=="SMA PUTRA") {
								$mapel = mysql_query("SELECT kode_pelajaran, namamatapelajaran,tingkat FROM rb_mata_pelajaran WHERE tingkat in ('X','XI',XII) AND unit='$_SESSION[unit]' ORDER BY tingkat ASC, namamatapelajaran ASC");
							}else{
								$mapel = mysql_query("SELECT kode_pelajaran, namamatapelajaran,tingkat FROM rb_mata_pelajaran ORDER BY tingkat DESC, namamatapelajaran ASC");
							}
							while ($row = mysql_fetch_array($mapel)) {
								echo "<option value='$row[kode_pelajaran]'>".$row[tingkat]." - ".$row[namamatapelajaran]."</option>";
							}
							?>
						</select>
					</td>
					<td>
						<button type="submit" class="btn btn-primary btn-flat" style="padding: 9px;"><i class="fa fa-search"></i></button>
					</td>
				</tr>
			</table>
			</form>
		</div>
		<div class="box-body">
			<table id="tbMateri" class="table table-striped">
			    <thead style="background-color: #cecece;">
			        <tr>
			            <th width="10">No</th>
			            <th>Nama Materi</th>
			            <th width="100">Action</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<?php
			    		if (!empty($_GET[kdPel])) {
			    			$materi = mysql_query("SELECT * FROM rb_quiz_materi_kategori WHERE kode_kelas = '".$_GET[kls]."' and kode_pelajaran = '".$_GET[kdPel]."'");$no =1;
				    		while ($row = mysql_fetch_array($materi)) {
				    			echo "
				    			<tr>
				    				<td>".$no++."</td>
						        	<td>".$row[nama_kategori]."</td>
						        	<td></td>
						        </tr>
						        ";
						        $sub = mysql_query("SELECT * FROM rb_quiz_materi WHERE id_materi_kategori = '".$row[id_materi_kategori]."'");
						        while ($s = mysql_fetch_array($sub)) {
						        	echo "
						        		<tr>
						        			<td></td>
						        			<td>".$s[materi_pokok]."</td>
						        			<td><a href='index.php?view=view_materi&kls=$row[kode_kelas]&kdPel=$row[kode_pelajaran]&idMt=$s[id_materi]' class='btn btn-primary'><i class='fa fa-eye'></i></a></td>
						        		</tr>
						        	";
						        }
				    		}
			    		}
			    	?>
			    </tbody>
			</table>
		</div>
	</div>
</div>