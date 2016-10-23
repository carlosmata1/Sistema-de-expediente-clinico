/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import entity.Pacientes;
import entity.Usuarios;
import model.PacienteModel;
import model.UsuariosModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Daniel
 */

@Controller
public class UsuariosController {
    
    @RequestMapping(value="getAllUsuarios",method = RequestMethod.GET)
    public String getAll(Model m){
    UsuariosModel model= new UsuariosModel();
    m.addAttribute("listaUsuarios",model.getAllUsers());
    
    return "usuarios"; //Pag donde se muestran los datos
    }
    
    @RequestMapping(value="getAllUsuarios2",method = RequestMethod.GET)
    public String getAll2(Model m){
    UsuariosModel model= new UsuariosModel();
    m.addAttribute("listaUsuarios",model.getAllUsers());
    
    return "index"; //Pag donde se muestran los datos
    }
    
    @RequestMapping(value = "validacion",method=RequestMethod.POST)
    public String create(@ModelAttribute(value="Usuarios") Usuarios p)
    {
        if(2+2 == 3){
          p.getNombreUsuario();
        }
        
        int a=0;
        if(a==0){
        return "principal";
        }
         return "clinicas";
        
    }
    
}
