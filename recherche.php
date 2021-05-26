<?php
require('assets/head.php')
?>
 <?php

$objetpdo = new PDO('mysql:host=localhost;dbname=kachkhedma', 'root', '');


    
      	$pdoStat =$objetpdo->prepare ('SELECT * FROM candidat');
 $executeIsOk=$pdoStat->execute();
$condidats=$pdoStat->fetchAll();
?>
<main class="formcand">

        <header>
        </header>
     <div class="page" id="page2">

            <div class="cells">
                <label class="" for="">Je recherche</label>
                    <select id="disabledSelect" class="form-select" required="required" aria-required="true">
                        <option value=""></option>
                        <option value="2031">Stage</option>
                        <option value="2030">CDI</option>
                        <option value="2029">CDD</option>
                        <option value="2028">Doctorat</option>
                        <option value="2027">Graduate program</option>
                    </select>
            </div>

            <div class="cells">
                <label class="" for="">Votre experience</label>
                    <select id="disabledSelect" class="form-select" required="required" aria-required="true">
                        <option value=""></option>
                        <option value="2031">Etudiant</option>
                        <option value="2030">jeune diplomé</option>
                        <option value="2029">3 a 5 ans</option>
                        <option value="2028">6 a 10 ans</option>
                        <option value="2027">plus de 10 ans</option>
                    </select>
            </div>

            <div class="cells">
                <label class="" for="">Je recherche</label>
                    <select id="disabledSelect" class="form-select" required="required" aria-required="true">
                      <option  value="" >--Liste des profils--</option>  
                  <?php foreach($condidats as $condidats):?>     
                      
    <option  value="<?php echo $condidats['nom']?>" ><?=$condidats['nom'] ?> <?=$condidats['prenom'] ?> </option>
    <?php endforeach; ?>
                    </select>
            </div>

            <button class="prev" type="button">Précédent</button>

                    <button class="finish">Terminer</button>
    </div></main>
 <?php
require('assets/footer.php')
?>