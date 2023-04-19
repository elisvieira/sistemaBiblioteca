package br.com.elisvieira.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AcessarContaController {
	
	@RequestMapping(value="/")
	public ModelAndView acessarConta () {
		ModelAndView modelAndView = new ModelAndView("acessar-conta");
		return modelAndView;
	}

}
