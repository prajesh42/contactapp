<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>FriendShip</title>
        <link rel="stylesheet" type="text/css" href="./static/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./static/css/style.css">
        <script type="text/javascript" src="./static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./static/js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <header>
            <nav class="nav navbar-default navbar-fixed-top">
                <div class="container">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">FriendZone</a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <form class="form-group" method="POST">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a>Email <input type="email" name="email" required></a></li>
                            <li><a>Password <input type="password" name="password" required></a></li>
                            <li><a><button><span class="glyphicon glyphicon-log-in"></span> Login</button></a></li>
                        </ul>
                      </form>
                    </div>
                </div>
            </nav>
        </header>
    </body>
</html>
