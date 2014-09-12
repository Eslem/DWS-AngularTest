/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.alzatezabala.fp;

import java.beans.PropertyChangeSupport;
import java.util.Date;

/**
 *
 * @author eslem
 */
public class EntidadBancaria {
    private int idEntidad;
    private String nombre;
    private String codigoEntrada;
    private Date fechaCreacion;
    
    public EntidadBancaria(int idEntidad, String name, String cEntrada){
        this.idEntidad=idEntidad;
        this.nombre=name;
        this.codigoEntrada=cEntrada;
        this.fechaCreacion=new Date();
    }

    public EntidadBancaria() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setIdEntidad(int idEntidad) {
        this.idEntidad = idEntidad;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setCodigoEntrada(String codigoEntrada) {
        this.codigoEntrada = codigoEntrada;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public int getIdEntidad() {
        return idEntidad;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCodigoEntrada() {
        return codigoEntrada;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }
        
    
}
