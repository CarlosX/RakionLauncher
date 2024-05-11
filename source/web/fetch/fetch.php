<?php
// impediment url
$url = $_SERVER['QUERY_STRING'];

list($app, $ver) = explode("&", $url);
if (!is_numeric($app) || !is_numeric($ver)) {
    echo "Error";
    exit();
};
if ($app != round($app) || $ver != round($ver)) {
    echo "Error";
    exit();
}

// DB
$config['db_host'] = 'localhost';
$config['db_base'] = 'rakion';
$config['db_user'] = 'MYSQL_USER_REPLACE_HERE';
$config['db_pass'] = 'MYSQl_PASSWORD_REPLACE_HERE';

try {
    // Connect to database
    $pdo = new PDO("mysql:host=" . $config['db_host'] . ";dbname=" . $config['db_base'], $config['db_user'], $config['db_pass']);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Fetch
    $stmt = $pdo->prepare("SELECT * FROM `fetchapp` WHERE AppId = :app");
    $stmt->bindParam(':app', $app);
    $stmt->execute();
    $dbapp = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($dbapp) {
        if ($dbapp['VerLimit'] == $ver) {
            exit();
        }

        if ($dbapp['VerLimit'] > $ver) {
            echo "+" . $dbapp['NoticeUrl'] . "\n";
            echo "=" . $dbapp['FileUrl'] . "\n";

            $stmt = $pdo->prepare("SELECT COUNT(*), SUM(FileSize) FROM `fetchfile` WHERE FileVer > :ver AND AppId = :app");
            $stmt->bindParam(':ver', $ver);
            $stmt->bindParam(':app', $app);
            $stmt->execute();
            $dbfile = $stmt->fetch(PDO::FETCH_ASSOC);

            echo "~" . $dbfile['COUNT(*)'] . ";" . $dbfile['SUM(FileSize)'] . ";" . $dbapp['VerLimit'] . "\n";

            $stmt = $pdo->prepare("SELECT * FROM `fetchfile` WHERE FileVer > :ver AND AppId = :app");
            $stmt->bindParam(':ver', $ver);
            $stmt->bindParam(':app', $app);
            $stmt->execute();
            while ($data = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo $data['Command'] . ";" . $data['FileDir'] . ";" . $data['FileIns'] . ";" . $data['FileVer'] . ";" . $data['FileSize'] . "\n";
            }
        } else {
            echo "Error";
        }
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
