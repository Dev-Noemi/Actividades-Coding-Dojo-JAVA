package com.FernandaEspinoza.controladores;

import com.FernandaEspinoza.modelos.Artista;
import com.FernandaEspinoza.servicios.ServicioArtista;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ControladorArtistas {

    @Autowired
    private ServicioArtista servicioArtista;

    @GetMapping
    public String desplegarArtistas(Model model) {
        List<Artista> artistas = servicioArtista.obtenerTodosLosArtistas();
        model.addAttribute("artistas", artistas);
        return "artistas";
    }

    @GetMapping("/detalle/{idArtista}")
    public String desplegarDetalleArtista(@PathVariable Long idArtista, Model model) {
        Artista artista = servicioArtista.obtenerArtistaPorId(idArtista);
        model.addAttribute("artista", artista);
        return "detalleArtista";
    }

    @GetMapping("/formulario/agregar")
    public String formularioAgregarArtista(Model model) {
        model.addAttribute("artista", new Artista());
        return "agregarArtista";
    }

    @PostMapping("/procesa/agregar")
    public String procesarAgregarArtista(@ModelAttribute Artista artista) {
        servicioArtista.agregarArtista(artista);
        return "redirect:/artistas";
    }
    
    @PostMapping("/procesa/agregar")
    public String procesarAgregarCancion(@ModelAttribute Cancion cancion, @RequestParam Long artistaId) {
        Artista artista = servicioArtista.obtenerArtistaPorId(artistaId);
        cancion.setArtista(artista);
        servicioCanciones.agregarCancion(cancion);
        return "redirect:/canciones";
    }

    @GetMapping("/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        List<Artista> artistas = servicioArtista.obtenerTodosLosArtistas();
        model.addAttribute("artistas", artistas);
        model.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }
        public ControladorArtistas(ServicioArtista servicioArtista) {
    		super();
    		this.servicioArtista = servicioArtista;
    	}
}

	