﻿<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="proveedor.aspx.cs" Inherits="EjemploPractico_01.proveedor" %>

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
    *   Is needed a simple quote (\') character between the VARCHAR value to get inserted.
    *   When is need to verify if a field value is already inserted, in SQL ACCESS the command
    *   "SELECT TOP 1" is needed on the query.
    */
    var sql = "INSERT INTO PROVEEDOR (PROVEEDOR, CIF, CIUDAD, TELEFONO) SELECT TOP 1 \'" 
                + proveedor 
                + "\', \'" 
                + cif 
                + "\', \'" 
                + ciudad 
                + "\', \'" 
                + tlf 
                + "\' FROM PROVEEDOR WHERE NOT EXISTS ( SELECT PROVEEDOR FROM PROVEEDOR WHERE PROVEEDOR = \'"
                + proveedor
                + "\');";
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
