<?php if (isset($pelanggan)) {
    $r = $pelanggan->row();
}
?>
<div class="right_col" role="main">
    <div class="">

        <div class="page-title">
            <div class="title_left">
                <h3>Formulir Pendaftaran <small>anggota baru</small></h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Formulir</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li>
				                <button class="btn btn-success" onclick="pelanggan_back()">Kembali</button>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br />
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
	                                    <option value="">Choose option</option>
	                                    <option value="">Option one</option>
	                                    <option value="">Option two</option>
	                                    <option value="">Option three</option>
	                                    <option value="">Option four</option>
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
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button type="submit" class="btn btn-primary">Reset</button>
                                    <button type="button" onclick="save()" class="btn btn-success">Simpan</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<script type="text/javascript">
    $(document).ready(function () {
        $('#birthday').daterangepicker({
            singleDatePicker: true,
            calender_style: "picker_4"
        });

        //select2
        $(".select2_single").select2({
            placeholder: "Pilih Kota",
            allowClear: true
        });
    });

	$(function(){
	    // Komentar form
	    var rules = {
	        pel_nama: {
	            required: true
	        }
	    };
	    main.validateForm($('#form_pelanggan'), rules,save);
	});

	function pelanggan_back() {
		window.location.href = '<?php echo site_url('pelanggan') ?>';
	}

	function save(form_object) {
		var data = $('#form_pelanggan').serialize();
		$.post('<?php echo site_url('pelanggan/save') ?>', data, function(data, textStatus, xhr) {
			if (data.pelanggan.status == true) {
				window.location.href = '<?php echo site_url('pelanggan') ?>';
			}
		});

	}

</script>