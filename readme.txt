Bad Wolf Banner System

-The number of banners will be limited, so rather than have a single modular page that parses the url, I’ve decided to have several different pages that are almost the same (the only difference is the ‘position = x’ one in the sql statement). So you'll point the iframe to
http://datablue.net/bwbanner/position1.php
http://datablue.net/bwbanner/position2.php
http://datablue.net/bwbanner/position3.php

-I like using random() it occured to me to use a queue system (i.e. actually just traverse the list) but there are some issues with that
	-You need to write back to the db
	-bots might 

-I need to make aure that ORDER BY RAND() is no slower than doing it in php (I didn't do it in php to avoid another db call)

-Probably needs some kind of up-publish / down-publish dates

-Currently using just the image name in the db, then appending an image path from the config file

