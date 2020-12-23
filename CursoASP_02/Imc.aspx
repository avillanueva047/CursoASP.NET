<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="Imc.aspx.cs" Inherits="CursoASP_02.WebForm2" %>

<%
    if(Request.Form("estatura") == "" || Request.Form("peso") == ""){
        Response.Redirect("Home.aspx");
    }
    else{
        var estatura = Number(Request.Form("estatura"));
        var estaturaM = estatura/100;
        var peso = Number(Request.Form("peso"));
    }

    var conn = Server.CreateObject("ADODB.Connection");
    conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=D:/Users/Adalid Villanueva/Desktop/Curso_ASP.NET/CursoASP/CursoASP_02/curso.mdb");
    var sql = "INSERT INTO IMC (ESTATURA, PESO, IMC) VALUES (" + estatura + ", " + peso + ", " + peso/estaturaM + ")";
    conn.Execute(sql);
    conn.close;

%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Curso ASPX</h1>
    <h3>Cálculo IMC</h3>
    IMC = <% =peso/estatura %><br />
    <a href="Home.aspx">Volver a calcular</a>
</body>
</html>
