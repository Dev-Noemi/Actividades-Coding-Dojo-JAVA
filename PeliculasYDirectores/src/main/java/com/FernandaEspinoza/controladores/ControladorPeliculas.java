package com.FernandaEspinoza.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@Controller
@RequestMapping("/pelicula")
public class ControladorPeliculas {

	private static HashMap<String, String> listaPeliculas = new HashMap<String, String>();

	public ControladorPeliculas() {
		listaPeliculas.put("Winnie the Pooh", "Don Hall");
		listaPeliculas.put("El zorro y el sabueso", "Ted Berman");
		listaPeliculas.put("Tarzán", "Kevin Lima");
		listaPeliculas.put("Mulán", "Barry Cook");
		listaPeliculas.put("Oliver", "Kevin Lima");
		listaPeliculas.put("Big Hero 6", "Don Hall");
	}

	@GetMapping
	public String obtenerPeliculaPorNombre() {
	return String.join(", ", listaPeliculas.keySet());	
	}

	@GetMapping("/{nombre}")
	public String obtenerPeliculaPorNombre(@PathVariable String nombre) {
		String director = listaPeliculas.get(nombre);
		if (director != null) {
			return "La película " + nombre + " fue dirigida por " + director + ".";
		} else {
			return "La película no se encuentra en nuestra lista.";
		}
	}

	@GetMapping("/director/{nombre}")
	public String obtenerPeliculasPorDirector(@PathVariable String nombre) {
		StringBuilder peliculasPorDirector = new StringBuilder();
		for (HashMap.Entry<String, String> entry : listaPeliculas.entrySet()) {
			if (entry.getValue().equalsIgnoreCase(nombre)) {
				peliculasPorDirector.append(entry.getKey()).append(", ");
			}
		}
		if (peliculasPorDirector.length() > 0) {
			return peliculasPorDirector.substring(0, peliculasPorDirector.length() - 2);
		} else {
			return "No tenemos películas dirigidas por este director(a), proximamente estaremos actualizando C:! ";
		}

	}

}