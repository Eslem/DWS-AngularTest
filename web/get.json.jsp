<%-- 
    Document   : get.json.jsp
    Created on : Sep 17, 2014, 11:53:34 AM
    Author     : eslem
--%>
<%@page import="com.alzatezabala.fp.json.JSONConverterImplGson"%>
<%@page import="com.alzatezabala.fp.json.JSONConverterImplJackson"%>
<%@page import="com.alzatezabala.fp.json.JSONConverter"%>
<%@page import="com.alzatezabala.fp.EntidadBancaria"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAO"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAOImplJDBC"%>
<%
    int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));

    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    EntidadBancaria entidadBancaria = entidadBancariaDAO.get(idEntidadBancaria);
    
    JSONConverter jsonConverter= new JSONConverterImplJackson();
    
    
    String json=jsonConverter.toJSON(entidadBancaria);
    
    EntidadBancaria entidadBancaria2= (EntidadBancaria) jsonConverter.fromJSON(json, EntidadBancaria.class);
    
    out.print(jsonConverter.toJSON(entidadBancaria));
    

%>
