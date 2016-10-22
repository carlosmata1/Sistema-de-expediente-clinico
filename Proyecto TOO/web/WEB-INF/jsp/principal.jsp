<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <jsp:include page="head.jsp"/>
<body>

<!-- Inicio de la Barra de navegaciÃ³n
  <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Logo</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="sass.html">Pacientes</a></li>
        <li><a href="badges.html">MÃ©dicos</a></li>
        <li><a href="collapsible.html">Laboratoristas</a></li>
        <li><a href="collapsible.html">ClÃ­nicas</a></li>
        <li><a href="collapsible.html">Enfermeras</a></li>
      </ul>
    </div>
  </nav>-->

<!--Barra Lateral-->
<header>
  <div class="container "><a href="#" data-activates="nav-mobile" class="button-collapse top-nav waves-effect waves-light circle hide-on-large-only"><i class="material-icons">menu</i></a></div>
        <ul id="nav-mobile" class="side-nav fixed">
            <img src="resources/images/Logo3.png" width="300px" />

          <li><div class="divider"></div></li>

          <li class="bold"><a href="Pacientes.htm" class="waves-effect waves-teal"><i class="material-icons">book</i>Pacientes</a></li>
          <li class="bold"><a href="medicos.htm" class="waves-effect waves-teal"><i class="material-icons">book</i>Médicos</a></li>


            <li class="bold"><a href="enfermeras.html" class="waves-effect waves-teal"><i class="material-icons">create</i>Enfermeras</a></li>
            <li class="bold"><a href="ajustes_financieros.html" class="waves-effect waves-teal"><i class="material-icons">create</i>Secretarias</a></li>
            <li class="bold"><a href="ajustes_financieros.html" class="waves-effect waves-teal"><i class="material-icons">create</i>Clinicas</a></li>
            <li class="bold"><a href="login.html" class="waves-effect waves-teal"><i class="material-icons">create</i>Salir</a></li>

          </ul>
</header>
<!-- FIN Barra Lateral-->


  <script type="js/jquery.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="resources/js/materialize.min.js"></script>

  <script>
     		    $(document).ready(function(){
            $(".button-collapse").sideNav();
            });
  </script>

</body>
</html>
