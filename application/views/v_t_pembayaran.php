<div class="page-title">
    <div class="title_left">
        <h3>
	        Pembayaran <small></small>
	    </h3>
    </div>

</div>
<!-- <div class="clearfix"></div> -->
          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                Form
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <br />
                  <form id="form_bayar" data-parsley-validate class="form-horizontal form-label-left">
                        <input type="hidden" class="form-control" name="id_pelanggan" value="<?php echo $id_data_pel ?>">
                        <input type="hidden" class="form-control" name="id_pembayaran"  value="<?php echo $id_pembayaran ?>">
                        <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Total Pembayaran 
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input type="number" class="form-control" name="jumlah" >
                                </div>
                            </div>
                        <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tanggal Pembayaran 
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="tanggal" type="text" class="date-picker form-control col-md-7 col-xs-12 " name="tgl" value="<?php echo date('m/d/Y') ?>">
                                </div>
                            </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button type="reset" value="reset" class="btn btn-primary">Reset</button>
                                <button type="button" onclick="simpan()" class="btn btn-success">Simpan</button>
                            </div>
                        </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

<script type="text/javascript">
    function simpan() {
        var data = $('#form_bayar').serialize();
        $.post('<?php echo site_url() ?>/t_pembayaran/simpan_pembayaran', data, function(data, textStatus, xhr) {
            window.location.href = '<?php echo site_url('t_pembayaran') ?>';
        });
	}

    $(document).ready(function() {
        $('#tanggal').daterangepicker({
            singleDatePicker: true,
            calender_style: "picker_4"
        });
    });
</script>