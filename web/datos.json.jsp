<%@page import="java.util.List"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAO"%>
<%@page import="com.alzatezabala.fp.persistencia.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.alzatezabala.fp.EntidadBancaria"%>
<%
    EntidadBancariaDAO entidadBancariaDAO= new EntidadBancariaDAOImplJDBC();
    //EntidadBancaria entidadBancaria = entidadBancariaDAO.get(1);
    
    
    EntidadBancaria entidadBancaria= new EntidadBancaria();
    entidadBancaria.setNombre("Entidad");
    entidadBancaria.setCodigoEntrada("01234");
    entidadBancaria.setIdEntidad(1);
    entidadBancaria=entidadBancariaDAO.update(entidadBancaria);
    /*
    //entidadBancariaDAO.delete(2);
    
    List<EntidadBancaria> listaEntidadBancaria = entidadBancariaDAO.findAll();
    
    for(int x=0; x<listaEntidadBancaria.size(); x++){
        entidadBancaria=listaEntidadBancaria.get(x);*/
    
    
%>

{
"idEntidadBancaria":<%=entidadBancaria.getIdEntidad()%>,
"nombre":<%=entidadBancaria.getNombre()%>,
"codigoEntidad": <%=entidadBancaria.getCodigoEntrada()%>,
"fechaResultado": <%=entidadBancaria.getFechaCreacion()%>
}

