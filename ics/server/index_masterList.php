<?php
  try {
  	$pdo = new PDO( 'mysql:host=localhost;dbname=mint_geawd_dev;charset=utf8;', 'root', '' );
  	$pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
  	$stmt = $pdo->prepare(

      "SELECT itemId
      FROM materialList
      WHERE (stockNo LIKE :keyWord
      OR itemName LIKE :keyWord)
      AND removeStatus = 0
      ORDER BY stockNo;"

    );
    $stmt->bindValue(':keyWord', '%' . $_REQUEST["keyWord"] . '%', PDO::PARAM_STR);
    $stmt->execute();
    echo $row = $stmt->fetch(PDO::FETCH_ASSOC)["itemId"];

  } catch( PDOException $e ) {
  	echo $e->getMessage();
  }
  $pdo = null;
?>
