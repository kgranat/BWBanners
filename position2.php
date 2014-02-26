<?php
include('config.php');


mysql_connect ($host, $user, $password) ;
mysql_select_db ($dbname);
$query = "SELECT * FROM " . $bannerTable .
	     " WHERE  active = 1 
	      AND position = 2
	      ORDER BY RAND()
	      LIMIT 1";
$result=mysql_query($query);

$row = mysql_fetch_array($result);
	
		$title = stripslashes($row['title']);
		$image = stripslashes($row['image']);   
		$client = date("D, d M Y g:i:s", $row['timestamp']);
	




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