<?php
if(@S_include != "freeclient") exit;

#MYSQL CONFIG
define('MYSQL_HOST', "127.0.0.1");
define('MYSQL_USER', "root");
define('MYSQL_PASS', "123456");
define('MYSQL_NAME', "rakion");

#AUTH CLIENT
define('CLIENT_AUTH', "freeclient");

#ADD GOLD X DAY
define('USER_GOLDL', "1000");
define('USER_GCVAR', false);

#AUTH DISABLE OR ENABLE
define('SERVER_ON', true);
define('SERVER_MSJ_M', "Server Offline");




?>