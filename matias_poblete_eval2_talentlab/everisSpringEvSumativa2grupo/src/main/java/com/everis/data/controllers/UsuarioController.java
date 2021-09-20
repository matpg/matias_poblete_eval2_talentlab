package com.everis.data.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.data.models.Producto;
import com.everis.data.models.Usuario;
import com.everis.data.services.ProductoService;
import com.everis.data.services.UsuarioService;

@Controller
@RequestMapping("")
public class UsuarioController {
	
	private final UsuarioService us;
	
	public UsuarioController(UsuarioService ususarioservice) {
		this.us = ususarioservice;
	}
	
	@Autowired
	private ProductoService ps;
	
	// =================CREAR====================
	// PASAR ENTIDA A JSP
	@RequestMapping("/")
	public String index(@ModelAttribute("usuario") Usuario usuario, Model model) {
		System.out.println("INDEX");
		List<Usuario> lista_usuarios = us.findAll();
		model.addAttribute("lista_usuarios", lista_usuarios);
		return "inicio_sesion.jsp";
	}
	@RequestMapping("/registro")
	public String registro(@ModelAttribute("usuario") Usuario usuario, Model model) {
		System.out.println("INDEX");
		List<Usuario> lista_usuarios = us.findAll();
		model.addAttribute("lista_usuarios", lista_usuarios);
		return "registro_usuario.jsp";
	}

	@RequestMapping(value = "/inicio", method = RequestMethod.GET)
	public String inicio(Model model) {
		List<Producto> lista_productos = ps.findAll();
		model.addAttribute("lista_productos", lista_productos);
		return "lista_productos.jsp";
	}
	
	@RequestMapping(value = "/crear", method = RequestMethod.POST)
	public String crear(@Valid @ModelAttribute("usuario") Usuario usuario) {
		System.out.println("CREATE" + usuario);
		us.crearUsuario(usuario);
		return "redirect:/producto";
	}

	// ============================================
	// ==============DELETE=======================
	@RequestMapping(value = "/eliminar", method = RequestMethod.POST)
	public String eliminar(@RequestParam("id") Long id) {
		System.out.println("eliminar la id:" + id);
		us.deleteUsuario(id);
		return "redirect:/usuario";
	}
	// ============================================
	
	// ==================EDITAR================
	@RequestMapping(value = "/actualizar/{id}", method = RequestMethod.GET)
	public String actualizar(@PathVariable("id") Long id, Model model) {
		System.out.println("actualizar id: " + id);
		
		
		Usuario usuario = us.buscarUsuario(id);
		model.addAttribute("usuario", usuario);
		return "usuarioEditar.jsp";
	}
	// ============================================
	// ==================MODIFICAR==================
	@RequestMapping(value="/modificar", method= RequestMethod.PUT)
	public String modificar(@Valid @ModelAttribute("usuario") Usuario usuario) {
		us.modificarUsuario(usuario);
		return "redirect:/usuario";
	}
	//===============================================
}