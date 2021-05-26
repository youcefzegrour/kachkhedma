<?php
require('assets/head.php')
?>

<main class="formcand">

        

        <header>
        </header>
    
<body>
    

    
    <form action="recrutpost.php" method="post">

    <div class="page" id="page1">
                <div class="titleinsc">
                    <h1>Pour vous inscrire veuillez remplire les champs ci dessous</h1>
                </div>
            <div class="cells">
                <label for="" class="form-label">Prénom</label>
                <input type="text" class="form-control"  name="prenom" aria-describedby="emailHelp">
            </div>
<label for="" class="form-label">nom</label>
            <div class="cells">
                <input type="text" name="nom" class="form-control"  aria-describedby="emailHelp">
            </div>

            <div class="cells">
                <label for="" class="form-label">Votre Ecole ou Université</label>
                <input type="text" name="ecole" class="form-control"  aria-describedby="emailHelp">
            </div>

            <label class="" for="">Année d'obtention du diplôme (effective ou estimée) *</label>

                <div class="cells">
                    <select  name="annee" class="form-select" required="required" aria-required="true">
                        <option value=""></option>
                        <option value="2031">2031</option>
                        <option value="2030">2030</option>
                        <option value="2029">2029</option>
                        <option value="2028">2028</option>
                        <option value="2027">2027</option>
                        <option value="2026">2026</option>
                        <option value="2025">2025</option>
                        <option value="2024">2024</option>
                        <option value="2023">2023</option>
                        <option value="2022">2022</option>
                        <option value="2021">2021</option>
                        <option value="2020">2020</option>
                        <option value="2019">2019</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                    </select>
            </div>

            <div class="cells">
                <label for="" class="form-label">Email address</label>
                <input type="email" class="form-control"  name="email" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div >

            <div class="cells">
                <label for="" class="form-label">Password</label>
                <input type="password" name="mdp"  class="form-control" aria-describedby="passwordHelpBlock">
            </div>

            <div class="cells">
                <label for="inputPassword5" class="form-label">Confirmation Mot de passe</label>
                <input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock">
            </div>

        <button type="submit"  class="btn btn-success next">suivant</button>
        </div>
        
        </form>
    </body>
</main>



    <?php
require('assets/footer.php')
?>




