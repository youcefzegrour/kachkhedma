<?php
require('assets/head.php')
?>

<main>
    <section>
        <picture>
            <source media="(max-width: 480px)" srcset="img/accueil.png.jpg">
            <source media="(max-width: 768px)" srcset="img/accueil.png.jpg">
            <source media="(max-width: 1024px)" srcset="img/accueil.png.jpg">
            <source media="(max-width: 1440px)" srcset="img/accueil.png.jpg">
            <source media="(max-width: 1441px)" srcset="img/accueil.png.jpg">
            <img src="img/accueil.png.jpg" class="imgacc" alt="">
        </picture>
        <div class="titleacc">
            <h1>Bienvenue sur KeshKhedma</h1>
            <p>Trouver un emploi, stage , ect...</p>
            <div class="btninsc">
                <a href="inscriptioncand.php">Creé ton compte</a>
            </div>
        </div>
    </section>

    <section>

    </section>
    <section>

    
    </section>

</main>

<?php
require('assets/footer.php')
?>