<?php
try{
$bdd = new PDO('mysql:host=localhost;dbname=amar', 'root', '');


}
catch(PDOException $e){
die('Erreur: '.$e->getMessage());
}
?>

      