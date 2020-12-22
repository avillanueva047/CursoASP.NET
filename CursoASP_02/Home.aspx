<%@ Page Language="JScript" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CursoASP_02.Home" %>
<%
    var intRadius, area;
    
    function calcularArea(){
        intRadius = 20;
        const pi = 3.14;
        area = pi * intRadius * intRadius;
    }
    calcularArea();
    Session("area") = area;
%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Curso ASP</title>
</head>
<body>
    <h1>Curso ASPX</h1>
    <h3>Ejemplo variables y constantes</h3>
    <% 
        Response.Write("<p>El área de un círculo de radio "+intRadius+" es "+area+"</p>");
    %>
    <a href="EjemploSesion.aspx">Ejemplo Sesion</a>
</body>
</html>