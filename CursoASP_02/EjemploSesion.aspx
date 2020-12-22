<%@ Page Language="JScript" AutoEventWireup="true" CodeBehind="EjemploSesion.aspx.cs" Inherits="CursoASP_02.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Curso ASPX</h1>
    <h3>Ejemplo Sesiones</h3>
    <%
        Response.Write("<p>El área almacenada es " + Session("area") + "<p>")
    %>
    <a href="Home.aspx">Inicio</a>
</body>
</html>
