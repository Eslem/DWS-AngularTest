/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.alzatezabala.fp.persistencia;

import com.alzatezabala.fp.EntidadBancaria;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author eslem
 */
public interface EntidadBancariaDAO {
    public EntidadBancaria get(int id);
    
    public EntidadBancaria insert(EntidadBancaria entidad);
    
    public EntidadBancaria update(EntidadBancaria entidad);
    
    public boolean delete(int id);
    
    public List<EntidadBancaria> findAll();
    
    
}
