/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entidades.Persona;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author carlosantonio
 */
public class PersonaModel {
    public List<Persona> getAll(){
        List<Persona> lst=new ArrayList<Persona>();
        
        Session s;
        s = HibernateUtil.getSessionFactory().getCurrentSession();
    try{
        s.beginTransaction();
        lst=s.createCriteria(Persona.class).list();
        s.getTransaction().commit();
    }catch(Exception e){
        e.printStackTrace();
    }
        return lst;
        
    }
    
    public void create(Persona persona){
        List<Persona> lst=new ArrayList<Persona>();
        
        Session s;
        s = HibernateUtil.getSessionFactory().getCurrentSession();
    try{
        s.beginTransaction();
        s.save(persona);
        s.getTransaction().commit();
    }catch(Exception e){
        e.printStackTrace();
    }
        
        
    }
    
}
