<div class="page-title">
    <div class="title_left">
        <h3>
	        Periode <small>master</small>
	    </h3>
    </div>

</div>
<div class="clearfix"></div>
<div id="modal_periode"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Data</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li>
                        <button class="btn btn-success" onclick="periode_add()">Tambah Periode</button>
                        </li>
                    </ul>
                <div class="clearfix"></div>
            </div>
            <div class="table-container">
                <table id="periode_datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr class="headings">
                            <th>No</th>
                            <th>Periode</th>
                            <th>BRANGKAT</th>
                            <th>PULANG</th>
                            <th>KUOTA</th>
                            <th>SISA</th>
                            <th>Action</span>
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
	function periode_add() {
        $('#modal_periode').load('<?php echo site_url('periode/add') ?>');
    }

    function edit(id) {
        $('#modal_periode').load('<?php echo site_url() ?>/periode/edit/'+id);
	}

	function lihat(id) {
        $('#modal_periode').load('<?php echo site_url() ?>/periode/lihat/'+id);
	}

	function hapus(id) {
		$.post('<?php echo site_url() ?>/periode/delete/'+id, {a:a}, function(data, textStatus, xhr) {
            datatable.getDataTable().ajax.reload();
        });
    }

    var datatable = new Datatable();
    datatable.init({
        src: $("#periode_datatable"),
        onSuccess: function (grid, response) {
            // grid:        grid object
            // response:    json object of server side ajax response
            // execute some code after table records loaded
        },
        onError: function (grid) {
            // execute some code on network or other general error  
        },
        onDataLoad: function(grid) {
            // execute some code on ajax data load
        },
        dataTable: { // here you can define a typical datatable settings from http://datatables.net/usage/options 

            // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
            // setup uses scrollable div(table-scrollable) with overflow:auto to enable vertical scroll(see: assets/global/scripts/datatable.js). 
            // So when dropdowns used the scrollable div should be removed. 
            //"dom": "<'row'<'col-md-8 col-sm-12'pli><'col-md-4 col-sm-12'<'table-group-actions pull-right'>>r>t<'row'<'col-md-8 col-sm-12'pli><'col-md-4 col-sm-12'>>",
            
            //  fixedHeader: {
            //     header: true,
            //     headerOffset: fixedHeaderOffset
            // },
            
            
            "ajax": {
                "url": "<?php echo site_url('periode/get') ?>", // ajax source
            },
            "columns": [
                {"orderable": false},
                {"orderable": true},
                {"orderable": true},
                {"orderable": true},
                {"orderable": true},
                {"orderable": true},
                {"orderable": false},
            ],
            "order": [
                [1, "asc"]
            ]// set first column as a default sort by asc
        }
    });
</script>