package com.everis.data.repositories;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;

import com.everis.data.models.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

	List<Usuario> findAll();

}
