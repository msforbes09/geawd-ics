<?php
  try {
    $pdo = new PDO( 'mysql:host=localhost;dbname=mint_geawd_dev;charset=utf8;', 'root', '' );
    $pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
    $stmt = $pdo->prepare(

      "DELETE FROM materialRelease
      WHERE releaseId = :itemIndex;"

    );
    $stmt->bindValue(':itemIndex', $_REQUEST["itemIndex"], PDO::PARAM_INT);
    $stmt->execute();
  } catch( PDOException $e ) {
    echo $e->getMessage();
  }
  $pdo = null;
?>
