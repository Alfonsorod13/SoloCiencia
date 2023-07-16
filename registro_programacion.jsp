<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="estilo.css">
<title>Registro Exitoso</title>
</head>
<body class="curso-jsp">

 

 

<%

 

                String Nombre = request.getParameter("Nombre");
                String Cedula = request.getParameter("Cedula");
                String Fecha = request.getParameter("Fecha");


 

                Connection cnx=null;
                ResultSet rs=null;
                Statement sta=null;

 

 

                try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost/solociencia?user=root&password=");
                sta = cnx.createStatement();
                sta.executeUpdate("INSERT INTO usuarios_programacion (Nombre, Cedula, Fecha) VALUES ('" +Nombre+"', '" +Cedula+"', '" +Fecha+"')");

 

                out.print("¡Felicidades! Te has registrado en el curso de Programación exitosamente.");
                }catch(Exception e){
                    out.print(e);
                }



 


        %>
<a href="home.html"> Regresar al inicio </a>
</body>
<footer>
</footer>
</html>