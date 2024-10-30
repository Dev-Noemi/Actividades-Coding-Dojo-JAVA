package com.FernandaEspinoza.controladores;

import com.FernandaEspinoza.modelos.Cancion;
import com.FernandaEspinoza.servicios.ServicioCanciones;

import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/canciones")
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicio;

    @GetMapping
    public String desplegarCanciones(Model model) {
        model.addAttribute("canciones", servicio.obtenerTodasLasCanciones());
        return "canciones";
    }

    @GetMapping("/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable Long idCancion, Model model) {
        Cancion cancion = servicio.obtenerCancionPorId(idCancion);
        model.addAttribute("cancion", cancion);
        return "detalleCancion";
    }

    @GetMapping("/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        model.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }

    @PostMapping("/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute Cancion cancion, BindingResult result) {
        if (result.hasErrors()) {
            return "agregarCancion";
        }
        servicio.agregarCancion(cancion);
        return "redirect:/canciones";
    }
}