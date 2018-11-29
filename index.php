

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Комиксы</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    
</head>
<body>
    <div class="header header-inverse header-fixed-top">
        <div class="navbar">
                <a class="navbar-brand" href="#">COMIX</a>
                <div class="conteiner">


                    <form action="poisk.php" method="get">
                <input type="search" class="field" placeholder="Давай помогу найти">
                <input type="button" class="poisk" value="поиск">
                </form>


            </div>
            <ul id="navbar-new">
                <li><a href="index.php" title="Главная страница">Главная</a></li>
                <li><a href="janr.php"  title="Жанры" >Комиксы по жанрам</a></li>
            </ul>
        </div>
    </div>


    <p>
    <?php

$id_comix = $_GET['id_comix'];
$nazvanie = $_GET['nazvanie'];

$db = mysql_connect('localhost' ,'root' ,'') or die('Не могу подключиться');
mysql_select_db("base",$db) or die ('Не могу выбрать БД');

if(isset($_GET[' nazvanie '])) { $nazvanie = $_GET['nazvanie']; }



$result=mysql_query("SELECT * FROM comix where nazvanie='$nazvanie' ",$db);

$table = "<table border=1 width = '1000px' align=center>";
 while ($myrow= mysql_fetch_array($result))
 {
 $table.= "<tr BGCOLOR='#DCDCDC'>";
 $table .= "<td align=center width='100'>".$myrow['$id_comix']."</td>";
 $table .= "<td align=center width='150'>".$myrow['nazvanie']."</td>";
  $table .= "<td align=center width='100'>".$myrow['kol_str']."</td>";
    $table .= "<td align=center width='100'>".$myrow['janr']."</td>";
    $table .= "<td align=center width='100'>".$myrow['author']."</td>";

    $table .= "</tr>";
 }
 $table .= "</table>";

echo $table;
  mysql_close($db);
?>




</body>
</html>