<?php if (isset($dokumen)) $r = $dokumen->row() ?>
<div id="dokumen_modal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel2"><?php echo $title ?></h4>
      </div>
      <div class="modal-body">
        <form id="form_dokumen">
                <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="id_data_dokumen" <?php echo $akses_field ?> value="<?php echo @$r->ID_DATA_DOKUMEN ?>">
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Nama</label>
                <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="data_dokumen" <?php echo $akses_field ?> value="<?php echo @$r->DATA_DOKUMEN ?>">
            </div>
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Keterangan</label>
                <textarea id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="keterangan" <?php echo $akses_field ?> ><?php echo @$r->KETERANGAN ?></textarea>
            </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <?php if ($akses_field != 'readonly'): ?>
          <button type="button" class="btn btn-primary" onclick="save()">Save changes</button>
        <?php endif ?>
      </div>

    </div>
  </div>
</div>
<script type="text/javascript">
  $("#dokumen_modal").modal('show');

  function save(form_object) {
      var data_form = $("#form_dokumen").serialize();
      $.post('<?php echo site_url('dokumen/save') ?>', data_form, function(data, textStatus, xhr) {
          datatable.getDataTable().ajax.reload();
          $("#dokumen_modal").modal('hide');
      });
  }
</script>

