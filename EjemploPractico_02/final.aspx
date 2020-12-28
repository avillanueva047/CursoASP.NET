<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="final.aspx.cs" Inherits="EjemploPractico_02.final" %>

<%
    var question_01 = Session["question_01"];
    var question_02 = Session["question_02"];
    var name = Request.Form("name") + " " + Request.Form("last_name");
    var age = Request.Form("age");
    var sex = Request.Form("sex");

    if(name == " " || age == ""){
        Response.Redirect("paso2.aspx");
    }

    var conn = Server.CreateObject("ADODB.Connection");
    conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=D:/Users/Adalid Villanueva/Desktop/Curso_ASP.NET/CursoASP/EjemploPractico_02/ejemplo_Practico_02.mdb");
    conn.close;


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
