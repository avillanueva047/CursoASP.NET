<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="proveedor.aspx.cs" Inherits="EjemploPractico_01.proveedor" %>

<%
    var conn = Server.CreateObject("ADODB.Connection");
    conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=D:/Users/Adalid Villanueva/Desktop/Curso_ASP.NET/CursoASP/EjemploPractico_01/ejemplo_Practico_01.mdb");

    var proveedor = Request.Form("proveedor");
    var cif = Request.Form("cif");
    var ciudad = Request.Form("ciudad");
    var tlf = Request.Form("tlf");

    if(proveedor == "" || cif == "" || ciudad == "" || tlf == "" ){
        Response.Redirect("index.aspx");
    }

    /*
      Is needed a simple quote (\') character between the VARCHAR value to get inserted
    */
    var sql = "INSERT INTO PROVEEDOR (PROVEEDOR, CIF, CIUDAD, TELEFONO) VALUES (\'" + proveedor + "\', \'" + cif + "\', \'" + ciudad + "\', \'" + tlf + "\')";
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
    <h3>Proveedor Insertado Correctamente</h3>
    <a href="index.aspx">Añadir otro proveedor</a>
</body>
</html>
