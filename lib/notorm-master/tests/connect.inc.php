<?php
error_reporting(E_ALL | E_STRICT);
include dirname(__FILE__) . "/../NotORM.php";

$connection = new PDO("mysql:dbname=notorm;host=localhost;port=3306", "root", "230386");
$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
$connection->setAttribute(PDO::ATTR_CASE, PDO::CASE_LOWER);
$software = new NotORM($connection);
//~ $software->debug = true;
