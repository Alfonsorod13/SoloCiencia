<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" xml:lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="estilo.css">
<title>Registro Exitoso</title>
</head>
<body class="registro-jsp">

 

 

<%

 

                String Nombre = request.getParameter("Nombre");
                String Apellido = request.getParameter("Apellido");
                String Edad = request.getParameter("Edad");
                String Contrasenha = request.getParameter("Contrasenha");

 

                Connection cnx=null;
                ResultSet rs=null;
                Statement sta=null;

 

 

                try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost/solociencia?user=root&password=");
                sta = cnx.createStatement();
                sta.executeUpdate("INSERT INTO usuarios_solociencia (Nombre, Apellido, Edad, Contrasenha) VALUES ('" +Nombre+"', '" +Apellido+"', '" +Edad+"', '" +Contrasenha+"')");

 

                out.print("¡Bienvenido! Te has registrado a Solo Ciencia exitosamente.");
                }catch(Exception e){
                    out.print(e);
                }



 


        %>
        
<a href="login.html"> Iniciar Sesión </a>

</body>
<footer>
</footer>
</html>