<?php
@define('S_include', "freeclient");
@include_once("config.php");

$userx = @anti_injection($_GET['user']);
$passx = @anti_injection($_GET['pass']);



if($userx !="" && $passx !="" && SERVER_ON == true)
{
	$string_pass = strtolower(hexToStr($passx));
	@mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS) or die("[Error]: Auth OFF");
	@mysql_select_db(MYSQL_NAME) or die("[Error]: 3");
	$result = mysql_query("SELECT * FROM user WHERE id='".$userx."' AND password='".$string_pass."'")or die("[Error]: 2");  
	$row = @mysql_fetch_array( $result );
	
	if($row !="")
	{
		if(strtolower($row['id']) == strtolower($userx) && strtolower($row['password']) == $string_pass)
		{
			$get_client = sha1($userx . CLIENT_AUTH . $passx);
			
			if( USER_GCVAR )
			{
				$result_q1 = mysql_query("SELECT * FROM logingold WHERE id='".$userx."'") or die("");;
				$row_q1 = mysql_fetch_array($result_q1);
			
				@date_default_timezone_set("Etc/GMT+5");
				$date_hoy = date('Y-m-d H:i:s');
				$expiredate = date('Y-m-d H:i:s', time()+3600*24);
			
				if($row_q1 != "")
				{
					$dat_ht = strtotime($date_hoy);
					$date_db = $row_q1['date'];
					$dat_db = strtotime($date_db);
					
					if($dat_db <= $dat_ht)
					{
						//insertalos db y agregamos oro
						mysql_query("UPDATE usergameinfo SET gold=gold+".USER_GOLDL." WHERE name = '".$userx."'") or die("");
						mysql_query("REPLACE INTO logingold(id,date) VALUES ('".$userx."','".$expiredate."')") or die("");
					}
				}else
				{
					//insertamos db y agregamos oro
					mysql_query("UPDATE usergameinfo SET gold=gold+".USER_GOLDL." WHERE name = '".$userx."'") or die("");
					mysql_query("REPLACE INTO logingold(id,date) VALUES ('".$userx."','".$expiredate."')") or die("");
				}
			}
			
			echo $get_client;
		}
		else
		{
			echo "[Error]: 1";
		}
	}
	else
	{
		$query = "SELECT COUNT(id) FROM user WHERE id='".$userx."'"; 
		$result2 = mysql_query($query) or die("Error!");
		$row2 = mysql_fetch_array( $result2 );
		if($row2[0] == "1" )
		{
			echo "Password incorecto!";
		}
		else
		{
			echo "Cuenta No Existe!";
		}
	}
}else if(SERVER_ON == false)
{
	echo SERVER_MSJ_M;
}

function anti_injection($sql) {
   // removes words that contain sql syntax
   $sql = preg_replace(sql_regcase("/(from|select|insert|delete|where|drop table|show tables|#|\*|--|\\\\)/"),"",$sql);
   $sql = trim($sql); // strip whitespace
   $sql = strip_tags($sql); // strip HTML and PHP tags
   $sql = addslashes($sql); // quote string with slashes
   return $sql;
}
function hexToStr($hex)
{
    $string='';
    for ($i=0; $i < strlen($hex)-1; $i+=2)
    {
        $string .= chr(hexdec($hex[$i].$hex[$i+1]));
    }
    return $string;
}
function strToHex($string)
{
    $hex='';
    for ($i=0; $i < strlen($string); $i++)
    {
        $hex .= dechex(ord($string[$i]));
    }
    return $hex;
}
?>