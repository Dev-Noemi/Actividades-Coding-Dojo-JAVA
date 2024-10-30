package com.FernandaEspinoza.servicios;

import com.FernandaEspinoza.modelos.Cancion;
import com.FernandaEspinoza.repositorios.RepositorioCanciones;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicioCanciones {
    
    @Autowired
    private RepositorioCanciones repositorio;

    public List<Cancion> obtenerTodasLasCanciones() {
        return repositorio.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorio.findById(id).orElse(null);
    }
}