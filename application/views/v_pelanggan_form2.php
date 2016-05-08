<?php if (isset($pelanggan)) $r = $pelanggan->row() ?>

<div class="page-title">
    <div class="title_left">
        <h3>
          Tambah Pelanggan
      </h3>
    </div>
</div>
<div class="clearfix"></div>

<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h2>Formulir Pendaftaran<small>Pelanggan</small></h2>
      <ul class="nav navbar-right panel_toolbox">
        <li>
          <button class="btn btn-success" onclick="kembali()">Kembali</button>
        </li>
      </ul>
      <div class="clearfix"></div>
    </div>
    <div class="x_content">


      <!-- Smart Wizard -->
      <div id="wizard" class="form_wizard wizard_horizontal">
        <ul class="wizard_steps">
          <li>
            <a href="#step-1">
              <span class="step_no">1</span>
              <span class="step_descr">
              Data Pribadi
            </a>
          </li>
          <li>
            <a href="#step-2">
              <span class="step_no">2</span>
              <span class="step_descr">
              Periode
            </a>
          </li>
          <li>
            <a href="#step-3">
              <span class="step_no">3</span>
              <span class="step_descr">
              Pembayaran
            </a>
          </li>
          <li>
            <a href="#step-4">
              <span class="step_no">4</span>
              <span class="step_descr">
              Administrasi
            </a>
          </li>
        </ul>
        <div id="step-1">
            <form id="form_pelanggan"  class="form-horizontal form-label-left">
                <input type="hidden"  name="id_data_pel" value="<?php echo @$r->ID_DATA_PEL ?>">
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nama <span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="first-name" name="pel_nama" value="<?php echo @$r->PEL_NAMA ?>" <?php echo $akses_field ?> required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Alamat
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <textarea type="text" id="first-name" name="pel_alamat" <?php echo $akses_field ?> class="form-control col-md-7 col-xs-12"><?php echo @$r->PEL_ALAMAT ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Ibu Kandung</label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="pel_ibu_kandung" <?php echo $akses_field ?> value="<?php echo @$r->PEL_IBU_KANDUNG ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Jenis Kelamin</label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                    <?php $jk =  (isset($r->PEL_JK)) ? $r->PEL_JK : ''; ?>
                                <input type="radio" class="flat" name="pel_jk" value="l" <?php echo $akses_select ?> <?php echo ($jk == 'l') ? 'checked' : '' ; ?>> Laki-Laki &nbsp;
                                <input type="radio" class="flat" name="pel_jk" value="p" <?php echo $akses_select ?> <?php echo ($jk == 'p') ? 'checked' : '' ; ?>> Perempuan
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Tempat Lahir</label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <?php //$options = []; ?>
                        <?php //form_dropdown('pel_tempat_lahir', $options, 'class="form-control select2_single"'); ?>
                        <select name="pel_tempat_lahir" <?php echo $akses_select ?> class="form-control select2_single">
                            <option value="">Pilih Kota</option>
                            <option value="1">Option one</option>
                            <option value="2">Option two</option>
                            <option value="3">Option three</option>
                            <option value="4">Option four</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Lahir
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input id="birthday" <?php echo $akses_field ?> class="date-picker form-control col-md-7 col-xs-12" name="pel_tanggal_lahir"  type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Pekerjaan 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="first-name" name="pel_pekerjaan" <?php echo $akses_field ?>  value="<?php echo @$r->PEL_PEKERJAAN ?>" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">No. Passport 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <input type="text" id="first-name" name="pel_no_passport" <?php echo $akses_field ?> value="<?php echo @$r->PEL_NO_PASSPORT ?>" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="ln_solid"></div>
                <?php if ($akses_field != 'readonly'): ?>
                  
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button type="reset" value="reset" class="btn btn-primary">Reset</button>
                        <button type="button" onclick="save()" class="btn btn-success">Simpan</button>
                    </div>
                </div>
                <?php endif ?>

            </form>
        </div>
        <div id="step-2">
            <?php $data['id_pelanggan'] = $r->ID_DATA_PEL ?>
            <?php $this->load->view('v_tab_periode', $data, FALSE); ?>
        </div>
        <div id="step-3">
        <div class="clearfix"></div>
            <form id="form_pembayaran"  class="form-horizontal form-label-left">
                <div class="form-group">
                    <input type="hidden" class="form-control" name="id" value="<?php echo $r->ID_DATA_PEL ?>">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Jumlah Cicilan 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" class="form-control" name="jumlah_cicilan" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Total Pembayaran 
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" class="form-control" name="total_bayar" >
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button type="reset" value="reset" class="btn btn-primary">Reset</button>
                        <button type="button" onclick="save_pembayaran()" class="btn btn-success">Simpan</button>
                    </div>
                </div>
            </form>
        </div>
        <div id="step-4">
            <?php $data['id_pelanggan'] = $r->ID_DATA_PEL ?>
            <?php $this->load->view('v_tab_dokumen', $data, FALSE); ?>
        </div>
      <!-- End SmartWizard Content -->

    </div>
  </div>

<script type="text/javascript">

    function kembali() {
        window.location.href = '<?php echo site_url('pelanggan') ?>';
    }
    function pelanggan_edit(id) {
        window.location.href = '<?php echo site_url() ?>/pelanggan/edit/'+id;
    }
    
    function step_0(next_or_prev) { 
        var data = $('#form_pelanggan').serialize();
        $.post('<?php echo site_url('pelanggan/save') ?>', data, function(data, textStatus, xhr) {
            if (data.pelanggan.status == "updated") {
              if (next_or_prev == "next") {
                $('#wizard').smartWizard('goForward');
              }else{
                $('#wizard').smartWizard('goBackward');
              }
            }else{
              return false;
            }
        });
    }
    
    function step_1(next_or_prev) {
        var data2 = $('#form_pembayaran').serialize();
        $.post('<?php echo site_url('t_pembayaran/save_pembayaran') ?>', data2, function(data, textStatus, xhr) {
            if (data.status == "updated") {
              if (next_or_prev == "next") {
                $('#wizard').smartWizard('goForward');
              }else{
                $('#wizard').smartWizard('goBackward');
              }
            }else{
              return false;
            }
        });
    }

// ===============================================================================================================
    $(document).ready(function() {
        // Smart Wizard
        $('#wizard').smartWizard();

        function onFinishCallback() {
        window.location.href = '<?php echo site_url() ?>/pelanggan';
            $('#wizard').smartWizard('showMessage', 'Finish Clicked');
        }

        //datepicker
        $('#birthday').daterangepicker({
            singleDatePicker: true,
            calender_style: "picker_4"
        });

        //select2
        $(".select2_single").select2({
            placeholder: "Pilih Kota",
        });
    });

    $('.simpan').click(function(event) {
        window.location.href = '<?php echo site_url() ?>/pelanggan';
      /* Act on the event */
    });
    function simpan() {
        window.location.href = '<?php echo site_url() ?>/pelanggan';
      // body...
      
    }

</script>
