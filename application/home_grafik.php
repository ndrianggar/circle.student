<script type="text/javascript" src="plugins/jQuery/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('#container').highcharts({
            data: {
                table: 'datatable'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: ''
            },
            yAxis: {
                allowDecimals: false,
                title: {
                    text: ''
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>Kunjungan ' + this.series.name + '</b><br/>' +
                        'Ada ' + this.point.y + ' Kali';
                }
            }
        });
    });
</script>

<div class="box box-success">
    <div class="box-header">
    <i class="fa fa-th-list"></i>
    <h3 class="box-title">Grafik Kunjungan Siswa, Guru dan Superuser</h3>
        <div class="box-tools pull-right">
           <!-- <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button> -->
            <button class="btn btn-primary btn-sm btn-flat" data-toggle="modal" data-target="#modalTanggalAkses">Show</button>
        </div>
        </div>

<div class="box-body chat" id="chat-box">
    <script src="plugins/highchart/highcharts.js"></script>
    <script src="plugins/highchart/modules/data.js"></script>
    <script src="plugins/highchart/modules/exporting.js"></script>
    <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

<table id="datatable" style='display:none'>
    <thead>
        <tr>
            <th></th>
            <th>Siswa</th>
            <th>Guru</th>
            <th>Superuser</th>
        </tr>
    </thead>
    <tbody>
    <?php 
        $grafik = mysql_query("SELECT * FROM rb_users_aktivitas GROUP BY tanggal ORDER BY tanggal DESC LIMIT 14");
        while ($r = mysql_fetch_array($grafik)){
            $ale = tgl_grafik($r[tanggal]);
            $siswa = mysql_num_rows(mysql_query("SELECT * FROM rb_users_aktivitas where status='siswa' AND tanggal='$r[tanggal]'"));
            $guru = mysql_num_rows(mysql_query("SELECT * FROM rb_users_aktivitas where status='guru' AND tanggal='$r[tanggal]'"));
            $superuser = mysql_num_rows(mysql_query("SELECT * FROM rb_users_aktivitas where status='superuser' AND tanggal='$r[tanggal]'"));
            echo "<tr>
                    <th>$ale</th>
                    <td>$siswa</td>
                    <td>$guru</td>
                    <td>$superuser</td>
                  </tr>";
        }
    ?>
    </tbody>
</table>
</div><!-- /.chat -->
</div><!-- /.box (chat box) -->

<!-- The Modal Tanggal Akses -->
<div class="modal" id="modalTanggalAkses">
  <div class="modal-dialog">
    <div class="modal-content" style="width: 300px;">
      <!-- Modal Header -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="text-align: center;">Pilih Bulan</h4>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
        <form method="GET" action="index.php?view=raport_aksesGuru">
        <div class="form-group">
            <input type="hidden" name="view" value="raport_aksesGuru"> 
            <input class='form-control' id='blnAkses' style='height:40px;' type='text' name='bulan' autocomplete='off' placeholder='  - Pilih Bulan -'>
        </div>
        <div class="form-group">
            <select class="form-control" name="unit" style="height: 40px;">
                <option value="" selected="selected"> - Pilih Unit -</option>
            <?php if ($_SESSION['level']=='kepala') { ?>
             <option value="<?php echo $_SESSION[unit];?>"><?php echo $_SESSION[unit];?></option>
              <?php } else { ?>
                <option value='SMP PUTRA'>SMP PUTRA</option>
               <option value='SMA PUTRA'>SMA PUTRA</option>
                <option value='SMP PUTRI'>SMP PUTRI</option>
                <option value='SMA PUTRI'>SMA PUTRI</option>
             <?php } ?>
            </select>
       
        </div>
      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
        <button style="width: 100%;" type="submit" class="btn btn-success btn-flat">Show</button>
        </form>
      </div>

    </div>
  </div>
</div>

