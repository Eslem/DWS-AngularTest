<%-- 
    Document   : update.json.jsp
    Created on : Sep 17, 2014, 11:59:25 AM
    Author     : eslem
--%>

<%@page import="com.alzatezabala.fp.json.JSONConverterImplJackson"%>
<%@page import="com.alzatezabala.fp.json.JSONConverter"%>
<%@page import="com.alzatezabala.fp.json.JSONConverter"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAOImplDataSource"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAO"%>
<%@page import="com.alzatezabala.fp.EntidadBancaria"%>
<%@page import="com.alzatezabala.fp.EntidadBancaria"%>
<%
    int idEntidadBancaria= Integer.parseInt(request.getParameter("idEntidadBancaria"));
    String nombre= request.getParameter("nombre");
    String codigoEntidad= request.getParameter("codigoEntidad");
    
    EntidadBancaria entidadBancaria= new EntidadBancaria();
    entidadBancaria.setNombre(nombre);
    entidadBancaria.setIdEntidad(idEntidadBancaria);
    entidadBancaria.setCodigoEntidad(codigoEntidad);
    
    EntidadBancariaDAO entidadBancariaDAO= new EntidadBancariaDAOImplDataSource();
    entidadBancaria= entidadBancariaDAO.update(entidadBancaria);
    
    JSONConverter jsonConverter = new JSONConverterImplJackson();
    out.print(jsonConverter.toJSON(entidadBancaria));

%>


