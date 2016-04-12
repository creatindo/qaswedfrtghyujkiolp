            <div class="table-container">
                <table id="dokumen_datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr class="headings">
                            <th>No</th>
                            <th>Nama </th>
                            <th>Keterangan</th>
                            <th>Status</th>
                        </tr>
                    </thead>

                    <tbody>
                        
                    </tbody>
                </table>
            </div>

<script type="text/javascript">
    var id_pelanggan = <?php echo $id_pelanggan ?>;
	function status_dokumen(id) {
        if ($('#ck_'+id).is(":checked")) {
            console.log('masuk');
            $.post('<?php echo site_url() ?>/t_dokumen/daftar_dokumen', {id_dokumen:id, id_pelanggan:id_pelanggan, status:1}, function(data, textStatus, xhr) {
                datatable.getDataTable().ajax.reload();
            });
        }else{
            $.post('<?php echo site_url() ?>/t_dokumen/daftar_dokumen', {id_dokumen:id, id_pelanggan:id_pelanggan, status:0}, function(data, textStatus, xhr) {
                datatable.getDataTable().ajax.reload();
            });
        }   
	}

    // datatable
    var datatable = new Datatable();
    datatable.setAjaxParam("id_pelanggan",  <?php echo $id_pelanggan ?>);
    datatable.init({
        src: $("#dokumen_datatable"),
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
                "url": "<?php echo site_url('t_dokumen/get') ?>" // ajax source
                // "data" : function (d){
                //     d.id_pelanggan = id_pelanggan
                // }
            },
            "columns": [
                {"orderable": false},
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

