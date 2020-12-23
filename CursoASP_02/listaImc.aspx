<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="listaImc.aspx.cs" Inherits="CursoASP_02.listaImc" %>

<%
    var conn = Server.CreateObject("ADODB.Connection");
    conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=D:/Users/Adalid Villanueva/Desktop/Curso_ASP.NET/CursoASP/CursoASP_02/curso.mdb");
    var rs = Server.CreateObject("ADODB.recordset");
    rs.Open("SELECT * FROM IMC", conn);
%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Curso ASPX</h1>
    <h3>Lista IMC</h3>
    <%
      while(rs.EOF == false){
        Response.Write(rs.Fields.Item("imc").Value);
        Response.Write("<br/>");
        rs.MoveNext();
      }
        rs.Close();
        conn.Close();
    %>
    <a href="Home.aspx">Volver a Calcular</a>
</body>
</html>
