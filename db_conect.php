<?php
$db = mysql_connect('localhost' ,'root' ,'') or die('Не могу подключиться');
mysql_select_db("Comix",$db) or die ('Не могу выбрать БД');
$result=mysql_query("SELECT * FROM batman ",$db);

echo $result;
?>
