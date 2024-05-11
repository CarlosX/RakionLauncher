<?php
@define('S_include', "freeclient");
@include_once("config.php");

$userx = @anti_injection($_GET['user']);
$passx = @anti_injection($_GET['pass']);

if ($userx !== "" && $passx !== "" && SERVER_ON == true) {
    $string_h = strtolower(hexToStr($passx));
    $string_pass = @anti_injection($string_h);

    try {
        $pdo = new PDO("mysql:host=" . MYSQL_HOST . ";dbname=" . MYSQL_NAME, MYSQL_USER, MYSQL_PASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $pdo->prepare("SELECT * FROM user WHERE id=:user AND password=:password");
        $stmt->bindParam(':user', $userx);
        $stmt->bindParam(':password', $string_pass);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row) {
            $get_client = sha1($userx . CLIENT_AUTH . $passx);

            if (USER_GCVAR) {
                $stmt_q1 = $pdo->prepare("SELECT * FROM logingold WHERE id=:user");
                $stmt_q1->bindParam(':user', $userx);
                $stmt_q1->execute();
                $row_q1 = $stmt_q1->fetch(PDO::FETCH_ASSOC);

                date_default_timezone_set("Etc/GMT+5");
                $date_hoy = date('Y-m-d H:i:s');
                $expiredate = date('Y-m-d H:i:s', time() + 3600 * 24);

                if ($row_q1) {
                    $dat_ht = strtotime($date_hoy);
                    $date_db = $row_q1['date'];
                    $dat_db = strtotime($date_db);

                    if ($dat_db <= $dat_ht) {
                        //insertar en la base de datos y agregar oro
                        $stmt_q2 = $pdo->prepare("UPDATE usergameinfo SET gold=gold+:gold WHERE name=:user");
                        $stmt_q2->bindParam(':gold', $USER_GOLDL);
                        $stmt_q2->bindParam(':user', $userx);
                        $stmt_q2->execute();

                        $stmt_q3 = $pdo->prepare("REPLACE INTO logingold(id,date) VALUES (:user, :expiredate)");
                        $stmt_q3->bindParam(':user', $userx);
                        $stmt_q3->bindParam(':expiredate', $expiredate);
                        $stmt_q3->execute();
                    }
                }
            }

            if (USER_CCVAR) {
                $stmt_q4 = $pdo->prepare("SELECT * FROM logincash WHERE id=:user");
                $stmt_q4->bindParam(':user', $userx);
                $stmt_q4->execute();
                $row_q4 = $stmt_q4->fetch(PDO::FETCH_ASSOC);

                date_default_timezone_set("Etc/GMT+5");
                $date_hoy = date('Y-m-d H:i:s');
                $expiredate = date('Y-m-d H:i:s', time() + 3600 * 24);

                if ($row_q4) {
                    $dat_ht = strtotime($date_hoy);
                    $date_db = $row_q4['date'];
                    $dat_db = strtotime($date_db);

                    if ($dat_db <= $dat_ht) {
                        //insertar en la base de datos y agregar oro
                        $stmt_q5 = $pdo->prepare("UPDATE cash SET cash=cash+:cash WHERE id=:user");
                        $stmt_q5->bindParam(':cash', $USER_CASHL);
                        $stmt_q5->bindParam(':user', $userx);
                        $stmt_q5->execute();

                        $stmt_q6 = $pdo->prepare("REPLACE INTO logincash(id,date) VALUES (:user, :expiredate)");
                        $stmt_q6->bindParam(':user', $userx);
                        $stmt_q6->bindParam(':expiredate', $expiredate);
                        $stmt_q6->execute();
                    }
                }
            }

            echo $get_client;
        } else {
            echo "[Error]: 1";
        }
    } catch (PDOException $e) {
        echo "[Error]: " . $e->getMessage();
    }
} elseif (SERVER_ON == false) {
    echo SERVER_MSJ_M;
}

function anti_injection($sql) {
    // remover palabras que contienen sintaxis SQL
    $sql = preg_replace("/(from|select|insert|delete|where|drop table|show tables|#|\*|--|\\\\)/i", "", $sql);
    $sql = trim($sql); // eliminar espacios en blanco
    $sql = strip_tags($sql); // eliminar etiquetas HTML y PHP
    $sql = addslashes($sql); // citar cadena con barras invertidas
    return $sql;
}

function hexToStr($hex)
{
    $string = '';
    for ($i = 0; $i < strlen($hex) - 1; $i += 2) {
        $string .= chr(hexdec($hex[$i] . $hex[$i + 1]));
    }
    return $string;
}
?>

