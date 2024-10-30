package com.FernandaEspinoza.servicios;

import com.FernandaEspinoza.modelos.Cancion;
import com.FernandaEspinoza.repositorios.RepositorioCanciones;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicioCanciones {
    
    @Autowired
    private RepositorioCanciones repositorioCanciones;

    public List<Cancion> obtenerTodasLasCanciones() {
        return repositorioCanciones.findAll();
    }

    public Cancion agregarCancion(Cancion cancion) {
        return repositorioCanciones.save(cancion);
    }
    
    public Cancion obtenerCancionPorId(Long id) {
        return repositorioCanciones.findById(id).orElse(null);
    }
    

    public Cancion actualizaCancion(Cancion cancion) {
        return repositorioCanciones.save(cancion);
    }

    public void eliminaCancion(Long id) {
        repositorioCanciones.deleteById(id);
    }
    
}