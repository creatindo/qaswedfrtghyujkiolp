<?php if (isset($periode)) $r = $periode->row() ?>
<div id="periode_modal" class="modal fade bs-example-modal-sm" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title" id="myModalLabel2"><?php echo $title ?></h4>
      </div>
      <div class="modal-body">
        <form id="form_periode">
            <input id="middle-name" class="form-control col-md-7 col-xs-12" type="hidden" name="id_periode" <?php echo $akses_field ?> value="<?php echo @$r->ID_PERIODE ?>">
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Nama</label>
                <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="nama" <?php echo $akses_field ?> value="<?php echo @$r->NAMA ?>">
            </div>
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Berangkat</label>
                <input <?php echo $akses_field ?> class="date-picker tanggal form-control col-md-7 col-xs-12" name="tgl_brngkt"  type="text" value="<?php echo @$r->TGL_BRNGKT ?>">
            </div>
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Pulang</label>
                <input <?php echo $akses_field ?> class="date-picker tanggal form-control col-md-7 col-xs-12" name="tgl_pulang"  type="text" value="<?php echo @$r->TGL_PULANG ?>">
            </div>
            <div class="form-group">
                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Kuota</label>
                <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="kuota" <?php echo $akses_field ?> value="<?php echo @$r->KUOTA ?>">
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

    $(document).ready(function() {
        $('.tanggal').daterangepicker({
            singleDatePicker: true,
            calender_style: "picker_4"
        });

        $("#periode_modal").modal('show');
    });

  function save(form_object) {
      var data_form = $("#form_periode").serialize();
      $.post('<?php echo site_url('periode/save') ?>', data_form, function(data, textStatus, xhr) {
          datatable.getDataTable().ajax.reload();
          $("#periode_modal").modal('hide');
      });
  }
</script>
