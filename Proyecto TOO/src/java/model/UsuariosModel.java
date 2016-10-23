/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Usuarios;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Daniel
 */
public class UsuariosModel {
    
    public List <Usuarios> getAllUsers(){
    List <Usuarios> listaUsuarios = new ArrayList<Usuarios>();
    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
    
    try{
        
       s.beginTransaction();
       listaUsuarios = s.createCriteria(Usuarios.class).list();
       s.getTransaction().commit();
        
    }catch(Exception e){
        e.printStackTrace();
        
    }
    
    return listaUsuarios;
 }
    
}
