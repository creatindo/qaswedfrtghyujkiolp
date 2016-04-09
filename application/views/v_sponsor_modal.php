<?php if (isset($sponsor)) $r = $sponsor->row() ?>
<div id="sponsor_modal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel2"><?php echo $title ?></h4>
      </div>
      <div class="modal-body">
        <form id="form_sponsor">
                <input id="middle-name" class="form-control col-md-7 col-xs-12" type="hidden" name="id_sponsor" <?php echo $akses_field ?> value="<?php echo @$r->ID_SPONSOR ?>">
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Nama</label>
                <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="nama" <?php echo $akses_field ?> value="<?php echo @$r->NAMA ?>">
            </div>
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Alamat</label>
                <textarea id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="alamat" <?php echo $akses_field ?> ><?php echo @$r->ALAMAT ?></textarea>
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
  $("#sponsor_modal").modal('show');

  function save(form_object) {
      var data_form = $("#form_sponsor").serialize();
      $.post('<?php echo site_url('sponsor/save') ?>', data_form, function(data, textStatus, xhr) {
          datatable.getDataTable().ajax.reload();
          $("#sponsor_modal").modal('hide');
      });
  }
</script>

