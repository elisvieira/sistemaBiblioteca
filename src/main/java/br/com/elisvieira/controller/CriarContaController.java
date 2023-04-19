package br.com.elisvieira.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.elisvieira.entities.Usuario;
import br.com.elisvieira.repositories.UsuarioRepository;
import br.com.elisviera.enuns.TipoUsuarioEnum;

@Controller
public class CriarContaController {
	
	@RequestMapping(value = "/criar-conta")
	public ModelAndView criarConta() {
		
		ModelAndView modelAndView = new ModelAndView("criar-conta");
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/cadastrar-usuario", method = RequestMethod.POST)
	public ModelAndView cadastrarUsuario(HttpServletRequest request) {
		
		
		ModelAndView modelAndView = new ModelAndView("criar-conta");
		
		try {
			
			Usuario usuario = new Usuario();
			
			usuario.setNome(request.getParameter("name_user"));
			usuario.setEmail(request.getParameter("email_user"));
			usuario.setSenha(request.getParameter("password_user"));
			usuario.setTipo(TipoUsuarioEnum.valueOf(request.getParameter("user-yes-no")));
			usuario.setMatricula(request.getParameter("id_user"));
			
			UsuarioRepository usuarioRepository = new UsuarioRepository();
			if(usuario.getTipo() == TipoUsuarioEnum.YES) {
				usuarioRepository.saveFuncionario(usuario);
			}else {
				usuarioRepository.saveUsuario(usuario);
			}
			
			
			modelAndView.addObject("mensagem_sucesso", "User Created");
			
		}
		catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha" + e.getMessage());
		}
		return modelAndView;
	}

}
