<?php
  try {
    $pdo = new PDO( 'mysql:host=localhost;dbname=mint_geawd_dev;charset=utf8;', 'root', '' );
    $pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
    $stmt = $pdo->prepare(

      "UPDATE materialReceive
      SET
      itemId = :itemId,
      itemCount = :quantity
      WHERE receiveId = :receiveId;"

    );
    $stmt->bindValue(':itemId', $_REQUEST["itemId"], PDO::PARAM_INT);
    $stmt->bindValue(':quantity', $_REQUEST["quantity"], PDO::PARAM_INT);
    $stmt->bindValue(':receiveId', $_REQUEST["receiveId"], PDO::PARAM_INT);
    $stmt->execute();
  } catch( PDOException $e ) {
    echo $e->getMessage();
  }
  $pdo = null;
  /*
  */
?>
