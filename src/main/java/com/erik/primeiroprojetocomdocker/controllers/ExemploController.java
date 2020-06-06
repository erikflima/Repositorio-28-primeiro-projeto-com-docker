package com.erik.primeiroprojetocomdocker.controllers;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController                   //Anotacao do Spring que torna essa classe um endpoint.
@RequestMapping("/api/exemplo")   //Anotacao do Spring que uso para definir qual sera o caminho do endpoint.
public class ExemploController {
	
	                   
	                             
	@GetMapping()                     //@GetMapping -> Anotacao do Spring que defino qual verbo quero utilizar. Poderia ser "@PostMapping" or "@DeleteMapping" or "@PutMapping" or "@PatchMapping".
	public String metodoExemploSimples() {
	
	return "Olá mundo. ";
	}	
	
	
                                     //@GetMapping -> Anotacao do Spring que defino qual verbo quero utilizar. Poderia ser "@PostMapping" or "@DeleteMapping" or "@PutMapping" or "@PatchMapping".
	@GetMapping(value = "/{nome}")   //Definindo um atributo que recebo atraves da url da requisicao.
	public String metodoExemploRecebeParametro( @PathVariable("nome") String nome ) {
		
		 return "Hello World - Parametro recebido: " +nome;
	}
	

}