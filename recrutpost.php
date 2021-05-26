



<?php
    $serveur = "localhost";
    $dbname = "kachkhedma";
    $user = "root";
    $pass = "";
    
    $prenom = $_POST["prenom"];
 $nom = $_POST["nom"];
    $email = $_POST["email"];
    $ecole = $_POST["ecole"];
    $annee = $_POST["annee"];
    $mdp = $_POST["mdp"];
    
    try{
        //On se connecte à la BDD
        $dbco = new PDO("mysql:host=$serveur;dbname=$dbname",$user,$pass);
        $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        //On insère les données reçues
        $sth = $dbco->prepare("
            INSERT INTO recruteurs(nom,prenom, ecole, annee, email, mdp)
            VALUES(:nom,:prenom,:ecole,:annee,:email, :mdp)");
        $sth->bindParam(':nom',$nom);
        $sth->bindParam(':prenom',$prenom);
        $sth->bindParam(':ecole',$ecole);
        $sth->bindParam(':annee',$annee);
        $sth->bindParam(':email',$email);
        $sth->bindParam(':mdp',$mdp);
       
        $sth->execute();
        
        //On renvoie l'utilisateur vers la page de remerciement
        header("Location:recherche.php");
    }
    catch(PDOException $e){
        echo 'Impossible de traiter les données. Erreur : '.$e->getMessage();
    }
?>
