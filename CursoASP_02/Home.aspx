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

    var nombres = ["Paco", "Juanmi", "Esther", "Noelia"];
    var edad = [44, 37, 35, 45];
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
        Response.Write("<p>El área de un círculo de radio " + intRadius + " es "+area+"</p>");
    %>
    <a href="EjemploSesion.aspx">Ejemplo Sesion</a>

    <h3>Ejemplo secuencias de servidor y cliente</h3>
    <table>
        <tr>
            <th>Nombre</th>
            <th>Edad</th>
        </tr>
        <%
            for(var i = 0; i < nombres.length; i++){
                Response.Write("<tr>");
                Response.Write("<td>" + nombres[i] + "</td>");
                Response.Write("<td>" + edad[i] + "</td>");
                Response.Write("</tr>");
            }
        %>
    </table>

    <h3>Ejemplo Formularios. Cálculo IMC</h3>
    <form action="Imc.aspx" method="post">
        Estatura [cm]: <input type="text" name="estatura"/><br />
        Peso [kg]: <input type="text" name="peso" /><br />
        <input type="submit" value="CALCULAR"/>
    </form>
</body>
</html>