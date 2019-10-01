<?php
 $materi = mysql_fetch_array(mysql_query("SELECT a.*, b.nama_guru FROM rb_quiz_materi a LEFT JOIN rb_guru b on a.user = b.nip where a.id_materi = '".$_GET[idMt]."'"));
?>
<div class="col-xs-12">  
	<div class="box">
		<div class="box-header">
			<a href="index.php?view=list_materi&kls=<?php echo $_GET[kls] ?>&kdPel=<?php echo $_GET[kdPel]; ?>" class="btn btn-primary"><i class="fa fa-angle-left"></i> &nbsp;Back</a>
			<h2 class="text-center"><b><?php echo ucwords($materi[materi_pokok]);?></b></h2>
			<h4>Create By : <?php echo $materi[nama_guru] ?></h4>
			<hr style="margin: 1px;">
			<hr style="margin: 1px;">
		</div>
		<div class="box-body">
			<p>
				<?php
					echo $materi[materi_content];
				?>
			</p>
		</div>
	</div>
</div>