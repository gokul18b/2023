<?php
/**
 * Created by PhpStorm.
 * User: Sanjay
 * Date: 26-10-2015
 * Time: 12:01
 */

echo json_encode($_POST);

    require "databaseAndFunctions.php";

    $email = stripcslashes($_POST['mail_id']);
    $password = stripcslashes($_POST['password']);

    $email = $DB->real_escape_string($email);
    $password = $DB->real_escape_string($password);

    $password = md5($password . $salt);

    $sql = "Select `uname`, `uid`, `mail_id` from `user_details` where `mail_id` = '$email' AND `password` = '$password'";

    $result = $DB->query($sql);
    $username = $row['uname'];
    if ($result) {
        $row = mysqli_fetch_array($result);
        if ($row != null) {
            if ($row['mail_id'] === $email) {
                session_start();
                $_SESSION['userId'] = $row['uid'];
                $_SESSION['userName'] = $row['uname'];
                $_SESSION['sessionID'] = md5($row['uname']);
                echo json_encode(array('result' => "success", 'name' => $row['uname'], 'id' => $row['uid']));
                header("Location: http://localhost/myschool/pages/facebook.html");
            }
        } else {
            echo json_encode(array('result' => "failure", 'reason' => "No user match found"));
        }
    } else {
        echo json_encode(array('result' => "failure", 'reason' => "No user match found"));
    }

    $DB->close();

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>My Notifications</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="assets/css/facebook.css" rel="stylesheet">




<div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">

            <!-- sidebar -->
            <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">

                <ul class="nav">
                    <li><a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i
                            class="glyphicon glyphicon-chevron-right"></i></a></li>
                </ul>

                <ul class="nav hidden-xs" id="lg-menu">
                    <li><a href="#stories"><i class="glyphicon glyphicon-list"></i> Stories</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-paperclip"></i> Saved</a></li>
                    <li><a href="#"><i class="glyphicon glyphicon-refresh"></i> Refresh</a></li>
                </ul>

                <!-- tiny only nav-->
                <ul class="nav visible-xs" id="xs-menu">
                    <li><a href="#featured" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
                    <li><a href="#stories" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
                    <li><a href="#" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
                </ul>

            </div>
            <!-- /sidebar -->

            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">

                <!-- top nav -->
                <div class="navbar navbar-blue navbar-static-top">
                    <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="http://usebootstrap.com/theme/facebook" class="navbar-brand logo">b</a>
                    </div>
                    <nav class="collapse navbar-collapse" role="navigation">
                        <form class="navbar-form navbar-left">
                            <div class="input-group input-group-sm" style="max-width:500px;">
                                <input class="form-control" placeholder="Search" name="srch-term" id="srch-term"
                                       type="text">

                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i
                                            class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </form>
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#"><i class="glyphicon glyphicon-home"></i> Home</a>
                            </li>
                            <li>
                                <a href="#postModal" role="button" data-toggle="modal"><i
                                        class="glyphicon glyphicon-plus"></i> Post</a>
                            </li>
                            <li>
                                <a href="#"><span class="badge">badge</span></a>
                            </li>
                            <li>
                                <a href="#"><span class="badge">$username</span></a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                        class="glyphicon glyphicon-user"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Checked</a></li>
                                    <li><a href="">Settings</a></li>
                                    <li><a href="">About Us</a></li>

                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- /top nav -->

                <div class="padding">
                    <div class="full col-sm-9">

                        <!-- content -->
                        <div class="row">

                            <!-- main col left -->
                            <div class="col-sm-5">

                                <div class="panel panel-default">
                                    <div class="panel-thumbnail"><img src="assets/img/bg_5.jpg" class="img-responsive">
                                    </div>
                                    <div class="panel-body">
                                        <p class="lead">Urbanization</p>

                                        <p>45 Followers, 13 Posts</p>

                                        <p>
                                            <img src="assets/img/uFp_tsTJboUY7kue5XAsGAs28.png" height="28px"
                                                 width="28px">
                                        </p>
                                    </div>
                                </div>
                                <div class="well">
                                    <form class="form-horizontal" role="form">
                                        <h4>What's New</h4>

                                        <div class="form-group" style="padding:14px;">
                                            <textarea class="form-control" placeholder="Update your status"></textarea>
                                        </div>
                                        <button class="btn btn-primary pull-right" type="button">Post</button>
                                        <ul class="list-inline">
                                            <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
                                            <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
                                            <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li>
                                        </ul>
                                    </form>
                                </div>



                        </div><!--/row-->

                        <hr>


                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->

        </div>
    </div>
</div>


<!--post modal-->
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                Update Status
            </div>
            <div class="modal-body">
                <form class="form center-block">
                    <div class="form-group">
                        <textarea class="form-control input-lg" autofocus=""
                                  placeholder="What do you want to share?"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div>
                    <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
                    <ul class="pull-left list-inline">
                        <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
                        <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
                        <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="assets/js/jquery.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('[data-toggle=offcanvas]').click(function () {
            $(this).toggleClass('visible-xs text-center');
            $(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
            $('.row-offcanvas').toggleClass('active');
            $('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
            $('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
            $('#btnShow').toggle();
        });
    });
</script>


?>