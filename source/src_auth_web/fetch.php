<?php
// impediment url
$url = $_SERVER['QUERY_STRING'];

list($app, $ver) = explode("&", $url);
if(!is_numeric($app) || !is_numeric($ver)) {
	echo "Error";
	exit();
}
if($app != round($app) || $ver != round($ver)) {
	echo "Error";
	exit();
}
// DB
$config['db_host'] = 'SQL HOST';
$config['db_base'] = 'SQL DB NAME';
$config['db_user'] = 'SQL USERNAME';
$config['db_pass'] = 'SQL PASSWORD';

// mysql
if (mysql_connect($config['db_host'], $config['db_user'], $config['db_pass']))
{
	@mysql_select_db($config['db_base']);

	// Fetch
	$dbapp = @mysql_fetch_array(@mysql_query("SELECT * FROM `fetchapp` WHERE AppId = '$app' "));

	if ($dbapp != "")
	{
		if($dbapp['VerLimit'] == $ver)
		{
			exit();
		}

		if($dbapp['VerLimit'] > $ver)
		{
			echo "+".$dbapp['NoticeUrl']."\n";
			echo "=".$dbapp['FileUrl']."\n";
			$dbfile = mysql_fetch_array(mysql_query("SELECT count(*), sum(FileSize) FROM `fetchfile` WHERE FileVer > '$ver' AND AppId = '$app' "));
			echo "~".$dbfile['count(*)'].";".$dbfile['sum(FileSize)'].";".$dbapp['VerLimit']."\n";
			$dbfile2 = mysql_query("SELECT * FROM `fetchfile` WHERE FileVer > '$ver' AND AppId = '$app' ");
			while($data = mysql_fetch_array($dbfile2)){
			echo "".$data['Command'].";".$data['FileDir'].";".$data['FileIns'].";".$data['FileVer'].";".$data['FileSize']."\n";
			}
		} else 
		{
			echo "Error";
		}
	}
}
@mysql_close();
?> 
