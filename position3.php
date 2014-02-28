<?php
include('config.php');


$url = $_SERVER['HTTP_REFERER'];
$parse = parse_url($url);
$domain = $parse['host']; 

$domain = str_replace(".com", "", $domain);
$domain = str_replace("www.", "", $domain);


mysql_connect ($host, $user, $password) ;
mysql_select_db ($dbname);

$position = 3;
$agent = strtolower($_SERVER['HTTP_USER_AGENT']);

date_default_timezone_set('GMT');
$today = date("Y-m-d H:i:s");// date for checking against publish time records
	
	
$query = "SELECT * FROM " . $bannerTable .
	     " WHERE  active = 1 
	      AND position = ".$position."
		  AND publishUp BETWEEN '0000-00-00 00:00:00' AND '$today'
		  AND ( (publishDown > '$today')OR(publishDown = '0000-00-00 00:00:00') )
		  AND ".$domain." = 1
	      ORDER BY RAND()
	      LIMIT 1";
	      

$result = mysql_query($query);

$row = mysql_fetch_array($result);
	
		$title = stripslashes($row['title']);
		$image = stripslashes($row['image']);   
		$bannerId = stripslashes($row['id']);   
		$client = date("D, d M Y g:i:s", $row['timestamp']);
	


	$keywords = array(
		'bot',
		'spider',
		'spyder',
		'crawlwer',
		'walker',
		'search',
		'yahoo',
		'holmes',
		'htdig',
		'archive',
		'tineye',
		'yacy',
		'yeti',
	);

	$bot = false;
	foreach($keywords as $keyword) 
	{
		if(strpos($agent, $keyword) !== false)
			$bot = true;
	}



if($bot == false)
{
	$agent = addSlashes($agent);
	$agent = mysql_real_escape_string($agent);
	
	
	$insertQuery = "INSERT INTO ".$trackerTable." 
				(`bannerId`, `position`, `userAgent`) 
				VALUES ('".$bannerId."', '".$position."', '".$agent."');";
	mysql_query($insertQuery);

}


?>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>

		<title>
			<?php echo $title;?>
		</title>

		<!-- Meta Tags -->
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="robots" content="index, follow" />

		<!-- CSS -->

		<!-- JavaScript -->

	</head>

	<body>

		<img src="<?php echo $imgPath.$image?>" alt="<?php echo $title . 'by' . $client ?>" />


	</body>

</html>	