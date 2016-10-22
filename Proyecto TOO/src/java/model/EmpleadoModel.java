/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entidades.Empleado;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author carlosantonio
 */public class EmpleadoModel {
    public List<Empleado> getAll(){
        List<Empleado> lst=new ArrayList<Empleado>();
        
        Session s;
        s = HibernateUtil.getSessionFactory().getCurrentSession();
    try{
        s.beginTransaction();
        lst=s.createCriteria(Empleado.class).list();
        s.getTransaction().commit();
    }catch(Exception e){
        e.printStackTrace();
    }
        return lst;
        
    }
    
    public void create(Empleado empleado){
        List<Empleado> lst=new ArrayList<Empleado>();
        
        Session s;
        s = HibernateUtil.getSessionFactory().getCurrentSession();
    try{
        s.beginTransaction();
        s.save(empleado);
        s.getTransaction().commit();
    }catch(Exception e){
        e.printStackTrace();
    }
        
        
    }
    
}
