<?php
session_start();
try {
	$pdo = new PDO( 'mysql:host=localhost;dbname=mint_geawd_dev;charset=utf8;', 'root', '' );
	$pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
	$stmt = $pdo->prepare(
	"select * from systemUser
		where
		userName = :username
		and
		passWord = :password");
	$stmt->bindValue(':username', $_REQUEST["username"], PDO::PARAM_STR);
	$stmt->bindValue(':password', md5($_REQUEST["password"]), PDO::PARAM_STR);
	$stmt->execute();
		if ($stmt->rowCount() == 1){
			echo '1';
			$row = $stmt->fetch(PDO::FETCH_ASSOC);
			$_SESSION["userId"] = $row["userId"];
			$_SESSION["userLevel"] = $row["levelId"];

		}
	} catch( PDOException $e ) {
		echo $e->getMessage();
	}
$pdo = null;
?>
