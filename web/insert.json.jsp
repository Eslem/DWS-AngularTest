<%-- 
    Document   : update.json.jsp
    Created on : Sep 17, 2014, 11:59:25 AM
    Author     : eslem
--%>

<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAO"%>
<%@page import="com.alzatezabala.fp.EntidadBancaria"%>
<%@page import="com.alzatezabala.fp.EntidadBancaria"%>
<%
    String nombre= request.getParameter("nombre");
    String codigoEntidad= request.getParameter("codigoEntidad");
    
    EntidadBancaria entidadBancaria= new EntidadBancaria();
    entidadBancaria.setNombre(nombre);
    entidadBancaria.setCodigoEntidad(codigoEntidad);
    
    EntidadBancariaDAO entidadBancariaDAO= new EntidadBancariaDAOImplJDBC();
    EntidadBancaria entidadBancaria2= entidadBancariaDAO.insert(entidadBancaria);

%>

{
"idEntidadBancaria":<%=entidadBancaria2.getIdEntidad()%>,
"nombre":<%=entidadBancaria2.getNombre()%>,
"codigoEntidad": <%=entidadBancaria2.getCodigoEntrada()%>,
"fechaResultado": <%=entidadBancaria2.getFechaCreacion()%>
}

