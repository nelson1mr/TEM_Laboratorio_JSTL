<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            if(session.getAttribute("listaper")==null){
                ArrayList<Persona> lista = new ArrayList<Persona>();
                lista.add(new Persona(1, "Nicol Carla Cochi Munoz", "7854234", "nicol@gmail.com"));
                lista.add(new Persona(2, "Felipito Gutierrez Espinoza", "7854234", "felipito@gmail.com"));
                lista.add(new Persona(3, "Juan Perez Espinoza", "7854234", "juan@gmail.com"));
                session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Probando el if</a></li>
            <li><a href="jstl_choose.jsp">Probando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recorriendo la coleccion con foreach</a></li>
        </ul>

    </body>
</html>
