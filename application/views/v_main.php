<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Gentallela Alela! | </title>

  <!-- Bootstrap core CSS -->

  <link href="<?php echo base_url() ?>assets/theme/css/bootstrap.min.css" rel="stylesheet">

  <link href="<?php echo base_url() ?>assets/theme/fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="<?php echo base_url() ?>assets/theme/css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="<?php echo base_url() ?>assets/theme/css/custom.css" rel="stylesheet">
  <link href="<?php echo base_url() ?>assets/theme/css/icheck/flat/green.css" rel="stylesheet">
  <script src="<?php echo base_url() ?>assets/theme/js/jquery.min.js"></script>

        <!-- datatable -->
        <link href="<?php echo base_url() ?>assets/theme/js/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url() ?>assets/theme/js/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url() ?>assets/theme/js/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url() ?>assets/theme/js/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url() ?>assets/theme/js/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />

        <!-- Datatables-->
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/jquery.dataTables.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/dataTables.bootstrap.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/dataTables.buttons.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/buttons.bootstrap.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/jszip.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/pdfmake.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/vfs_fonts.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/buttons.html5.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/buttons.print.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/dataTables.fixedHeader.min.js"></script>
        
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/dataTables.keyTable.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/dataTables.responsive.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/responsive.bootstrap.min.js"></script>
        <script src="<?php echo base_url() ?>assets/theme/js/datatables/dataTables.scroller.min.js"></script>
  


</head>


<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentellela Alela!</span></a>
          </div>
          <div class="clearfix"></div>

          <!-- menu prile quick info -->
          <!-- /menu prile quick info -->

          <br />

          <!-- sidebar menu -->
          <?php echo $sidebar ?>
          <!-- /sidebar menu -->

          <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
              <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout">
              <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
          </div>
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <img src="<?php echo base_url() ?>assets/theme/images/img.jpg" alt="">John Doe
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                  <li><a href="javascript:;">  Profile</a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="badge bg-red pull-right">50%</span>
                      <span>Settings</span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">Help</a>
                  </li>
                  <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>

      </div>
      <!-- /top navigation -->

      <!-- page content -->
      <div class="right_col" role="main">
        <div class="">
          
        <?php echo $content ?>
          

        <!-- footer content -->
        <footer>
          <div class="copyright-info">
            <p class="pull-right">Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </p>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->

      </div>
      <!-- /page content -->
    </div>

  </div>

  <div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
  </div>

  <script src="<?php echo base_url() ?>assets/theme/js/bootstrap.min.js"></script>

  <!-- bootstrap progress js -->
  <script src="<?php echo base_url() ?>assets/theme/js/progressbar/bootstrap-progressbar.min.js"></script>
  <script src="<?php echo base_url() ?>assets/theme/js/nicescroll/jquery.nicescroll.min.js"></script>
  <!-- icheck -->
  <script src="<?php echo base_url() ?>assets/theme/js/icheck/icheck.min.js"></script>

  <script src="<?php echo base_url() ?>assets/theme/js/custom.js"></script>

  <!-- pace -->
  <script src="<?php echo base_url() ?>assets/theme/js/pace/pace.min.js"></script>

</body>

</html>
