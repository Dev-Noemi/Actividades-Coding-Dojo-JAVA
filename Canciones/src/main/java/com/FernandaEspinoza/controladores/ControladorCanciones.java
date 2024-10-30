package com.FernandaEspinoza.controladores;

import com.FernandaEspinoza.modelos.Cancion;
import com.FernandaEspinoza.servicios.ServicioCanciones;

import jakarta.validation.Valid;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


@Controller
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicioCanciones; 

    
    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        List<Cancion> canciones = servicioCanciones.obtenerTodasLasCanciones();
        model.addAttribute("canciones", canciones);
        return "canciones";
    }

   
    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        model.addAttribute("cancion", new Cancion());
        return "agregarCancion"; 
    }

   
    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute Cancion cancion, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "agregarCancion"; 
        }
        servicioCanciones.agregarCancion(cancion); 
        return "redirect:/canciones"; 
    }

  
    @GetMapping("/canciones/formulario/editar/{idCancion}")
    public String formularioEditarCancion(@PathVariable Long idCancion, Model model) {
        Cancion cancion = servicioCanciones.obtenerCancionPorId(idCancion);
        model.addAttribute("cancion", cancion); 
        return "editarCancion"; 
    }

  
    @PostMapping("/canciones/procesa/editar/{idCancion}")
    public String procesarEditarCancion(@PathVariable Long idCancion, @Valid @ModelAttribute Cancion cancion, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "editarCancion"; 
        }
        cancion.setId(idCancion); 
        servicioCanciones.actualizaCancion(cancion); 
        return "redirect:/canciones"; 
    }

  
    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable Long idCancion, Model model) {
        Cancion cancion = servicioCanciones.obtenerCancionPorId(idCancion);
        model.addAttribute("cancion", cancion); 
        return "detalleCancion"; 
    }
    
    
    @GetMapping("/canciones/eliminar/{idCancion}")
    public String procesarEliminarCancion(@PathVariable("idCancion") Long idCancion) {
        servicioCanciones.eliminaCancion(idCancion);
        return "redirect:/canciones";
    }
    
}