<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>
			        Pelanggan
			    </h3>
            </div>

        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Data</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li>
				                <button class="btn btn-success" onclick="pelanggan_add()">Tambah Pelanggan</button>
                            </li>
                        </ul>
                        <div class="clearfix"></div>

                    </div>
                    <div class="x_content">
                        <table id="example" class="table table-striped responsive-utilities jambo_table">
                            <thead>
                                <tr class="headings">
                                    <th>No</th>
                                    <th>Nama </th>
                                    <th>Alamat </th>
                                    <th>IBU Kandung</th>
                                    <th>JK </th>
                                    <th>No Passport </th>
                                    <th>Status </th>
                                    <th class=" no-link last"><span class="nobr">Action</span>
                                    </th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i=0; foreach ($pelanggan->result() as $v): ?>
                                <tr class="even pointer">
	                                <td><?php echo ++$i ?></td>
	                                <td><?php echo $v->PEL_NAMA ?></td>
	                                <td><?php echo $v->PEL_ALAMAT ?></td>
	                                <td><?php echo $v->PEL_IBU_KANDUNG ?></td>
	                                <td><?php echo $v->PEL_JK ?></td>
	                                <td><?php echo $v->PEL_NO_PASSPORT ?></td>
	                                <td><?php echo $v->STATUS ?></td>
	                                <td>
	                                	<button class="btn btn-round btn-success btn-xs" onclick="lihat('<?php echo $v->ID_DATA_PEL ?>')">lihat</button>
	                                	<button class="btn btn-round btn-success btn-xs" onclick="edit('<?php echo $v->ID_DATA_PEL ?>')">edit</button>
	                                	<button class="btn btn-round btn-warning btn-xs" onclick="hapus('<?php echo $v->ID_DATA_PEL ?>')">hapus</button>
	                                </td>
                                </tr>
								<?php endforeach ?>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
	function pelanggan_add() {
		 window.location.href = '<?php echo site_url('pelanggan/add') ?>';
	}

	function edit(id) {
		 window.location.href = '<?php echo site_url() ?>/pelanggan/edit/'+id;
	}

	function lihat(id) {
		 window.location.href = '<?php echo site_url() ?>/pelanggan/lihat/'+id;
	}

	function hapus(id) {
		$.post('<?php echo site_url() ?>/pelanggan/delete/'+id, {a:a}, function(data, textStatus, xhr) {
			location.reload();
		});
	}

	var asInitVals = new Array();
        $(document).ready(function () {
            var oTable = $('#example').dataTable({
                "oLanguage": {
                    "sSearch": "Search all columns:"
                },
                "aoColumnDefs": [
                    {
                        'bSortable': false,
                        'aTargets': [0]
                    } //disables sorting for column one
        ],
                'iDisplayLength': 12,
                "sPaginationType": "full_numbers",
                "dom": 'lfrtip',
                "tableTools": {
                    "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
                }
            });
            $("tfoot input").keyup(function () {
                /* Filter on the column based on the index of this element's parent <th> */
                oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
            });
            $("tfoot input").each(function (i) {
                asInitVals[i] = this.value;
            });
            $("tfoot input").focus(function () {
                if (this.className == "search_init") {
                    this.className = "";
                    this.value = "";
                }
            });
            $("tfoot input").blur(function (i) {
                if (this.value == "") {
                    this.className = "search_init";
                    this.value = asInitVals[$("tfoot input").index(this)];
                }
            });
        });
</script>