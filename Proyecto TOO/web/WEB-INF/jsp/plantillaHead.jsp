<%-- 
    Document   : plantilla head
    Created on : 10-22-2016, 07:14:31 PM
    Author     : carlosantonio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
  <html>
    <head>
        <c:url value="/resources/images/Logo.png" var="logoURL"/>
        <c:url value="/resources/css/materialize.min.css" var="materializeURL"/>
        <c:url value="/resources/css/index.css" var="indexURL"/>
        <c:url value="/resources/css/ghpages-materialize.css" var="ghpagesURL"/>
        <c:url value="/resources/css/prism.css" var="primURL"/>
               
    <!--<meta charset="UTF-8">-->
    <link rel="shortcut icon" href="${logoURL}">
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="${materializeURL}"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="${indexURL}"  media="screen,projection"/>
      <link href="${primURL}" rel="stylesheet">
  	  <link href="${ghpagesURL}" type="text/css" rel="stylesheet" media="screen,projection">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>