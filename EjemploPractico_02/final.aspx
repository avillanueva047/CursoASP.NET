<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="final.aspx.cs" Inherits="EjemploPractico_02.final" %>

<%
    var question_01 = Request.Form("question_01");
    Response.Write(question_01);
%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h3>Gracias por tu feedback!</h3>
    <a href="inicio.aspx">Volver al Inicio</a>
</body>
</html>
