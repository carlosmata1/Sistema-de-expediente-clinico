/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder.controller;

/**
 *
 * @author carlosantonio
 */
@Controller
public class controlador {
    
 @RequestMapping(value="/principal.htm",method=RequestMethod.GET)
       public String principal(){
           return "principal";
       }
  
 @RequestMapping(value="/pacientes2.htm", method=RequestMethod.GET)
    public String pacientes(){
        return "pacientes2";
    }
    
  @RequestMapping(value="/index.htm", method=RequestMethod.GET)
    public String index(){
        return "index";
    }
    
  @RequestMapping(value="/clinicas.htm", method=RequestMethod.GET)
    public String clinicas(){
        return "clinicas";
    }
    @RequestMapping(value="/signosvitales.htm",method=RequestMethod.GET)
    public String signos(){
        return "Svitales";
    }
}
