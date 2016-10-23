
<jsp:include page="plantillaHead.jsp"/>
  <title>Signos vitales</title>
</head>
<body>



<!--Barra Lateral-->
<header>
  <div class="container "><a href="#" data-activates="nav-mobile" class="button-collapse top-nav waves-effect waves-light circle hide-on-large-only"><i class="material-icons">menu</i></a></div>
        <ul id="nav-mobile" class="side-nav fixed">
          <img src="resources/images/logo3.png" width="300px">

          <li><div class="divider"></div></li>

          <li class="bold"><a href="libro_diario.html" class="waves-effect waves-teal"><i class="material-icons">book</i>Pacientes</a></li>

          <li class="no-padding">
            <ul class="collapsible collapsible-accordion">
              <li class="bold "><a class="collapsible-header  waves-effect waves-teal"><i class="material-icons ">assessment</i>Médicos</a>
                <div class="collapsible-body">
                  <ul>
                    <li><a href="balance_comprobacion.html">Balance de comprobación</a></li>
                    <li><a href="estado_resultados.html">Estado de resultados</a></li>
                    <li><a href="estado_capital.html">Estado de capital </a></li>
                    <li><a href="balance_general.html">Balance general</a></li>
                  </ul>
                </div>
              </li>

           <li class="bold"><a href="ajustes_financieros.html" class="waves-effect waves-teal"><i class="material-icons">settings</i>Laboratoristas</a></li>
           <li class="bold"><a class="collapsible-header  waves-effect waves-teal"><i class="material-icons">create</i>Enfermeras</a>
           <li class="bold"><a class="collapsible-header  waves-effect waves-teal"><i class="material-icons">create</i>Clínicas</a>
                <div class="collapsible-body">
                    <ul>
                          <li><a href="empleados.html">Empleados</a></li>
                          <li><a href="usuarios.html">Usuarios</a></li>
                          <li><a href="proveedores.html">Proveedores</a></li>
                    </ul>
                </div>
            </li>
          </ul>
        </li>

        <li class="bold"><a href="login.html" class="waves-effect waves-teal"><i class="material-icons">close</i>Salir</a></li>
      </ul>
</header>
<!-- FIN Barra Lateral-->
<main>
  

   <div class="section no-pad-bot #e65100 orange darken-4" id="ini">
         <div class="container ">
          <h2 class="white-text left thin">Registro de Signos vitales</h2>
          <div class='row center'>
          </div>
        </div>
        </div>

        <div class="container">
        <nav>
                <div class="nav-wrapper #4a148c purple darken-4">
                  <form>
                    <div class="input-field">
        
                      <input id="search" type="search" required placeholder="Buscar paciente">
                      <label for="search"><i class="material-icons">search</i></label>
                                 <i class="material-icons">close</i>
                   </div>
                  </form>
                </div>
              </nav>

              <br>
              </div>



        <form>

        <div class="container">



            <div class="row">

          <div class="input-field col s4">
          <input id="temperatura" type="number" class="validate" min="0" max="100" step="any" required="">
          <label for="temperatura">Temperatura (Celcius)</label>
          </div>

          <div class="input-field col s4">
          <input id="altura" type="number" class="validate" min="0" max="3" step="any" required="">
          <label for="altura">Altura (metros)</label>
          </div>

           <div class="input-field col s4">
          <input id="peso" type="number" class="validate" min="0" step="any" required="">
          <label for="peso">Peso (Kg)</label>
          </div>

            </div>


            <div class="row">

          <div class="input-field col s4">
          <input id="presion" type="number" class="validate" min="0" step="any" required="">
          <label for="presion">Presion Alterial (mmHg)</label>
          </div>

          <div class="input-field col s4">
          <input id="pulso" type="number" class="validate" min="0" step="any" required="">
          <label for="pulso">Pulso cardiaco (latidos/minuto)</label>
          </div>



          

            </div>
            <button class="btn waves-effect waves-light" type="submit" name="action">Guardar
         <i class="material-icons right">send</i>
          </button>

          </div>


        </form>







</main>


  <script type="js/jquery.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="js/materialize.min.js"></script>

  <script>
     		    $(document).ready(function(){
            $(".button-collapse").sideNav();
            });
             $('input#input_text, textarea#textarea1').characterCounter();
             $('.datepicker').pickadate({
              selectMonths: true, // Creates a dropdown to control month
               selectYears: 15 // Creates a dropdown of 15 years to control year
              });
  </script>

</body>
</html>

