/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.alzatezabala.fp.presentacion.json;

/**
 *
 * @author eslem
 */
public interface JSONConverter {
    
    public String toJSON(Object obj);
    
    public Object fromJSON(String json, Class clazz);
    
}
