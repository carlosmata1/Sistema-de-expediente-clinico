/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.app;

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
public class DefaultController {
    @RequestMapping(value="/",method = RequestMethod.GET)
    public String index() {
        return "index";
        
    }
    @RequestMapping(value="/home",method = RequestMethod.GET)
    public String home(Model model) {
        model.addAttribute("saludo","hola..este es mi nueva paginita" );
        return "newjsp";
        
    }
}
