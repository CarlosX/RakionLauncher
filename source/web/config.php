<?php
if(@S_include != "freeclient") exit;

#MYSQL CONFIG
define('MYSQL_HOST', "127.0.0.1");
define('MYSQL_USER', "root");
define('MYSQL_PASS', "19734682fgh");
define('MYSQL_NAME', "rakion");

#AUTH CLIENT
define('CLIENT_AUTH', "freeclient");

#ADD GOLD X DAY
$USER_GOLDL = '25000';
define('USER_GCVAR', false);

#ADD CASH X DAY
$USER_CASHL = '25000';
define('USER_CCVAR', false);

#AUTH DISABLE OR ENABLE
define('SERVER_ON', true);
define('SERVER_MSJ_M', "Server Offline");

try {
    $pdo = new PDO("mysql:host=" . MYSQL_HOST . ";dbname=" . MYSQL_NAME, MYSQL_USER, MYSQL_PASS);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "[Error]: Auth OFF";
    exit;
}

// Comprobar la conexión exitosa
if (!$pdo) {
    echo "[Error]: Auth OFF";
    exit;
}

