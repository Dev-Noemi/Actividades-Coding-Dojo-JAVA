package com.FernandaEspinoza.repositorios;

import com.FernandaEspinoza.modelos.Cancion;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long> {
    List<Cancion> findAll(); 
}
