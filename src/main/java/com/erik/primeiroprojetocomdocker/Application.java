package com.erik.primeiroprojetocomdocker;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication //Anotacao do Spring Boot que faz tudo acontecer. Inicializa o Spring Boot, componentes, entre outras coisas.
public class Application {

	public static void main(String[] args) {
		
		System.out.println("\n\nErik - Executando o metodo main e apos isso o metodo SpringApplication.run, que roda a aplicacao literalmente!\n\n");
		
		SpringApplication.run(Application.class, args);
		
		System.out.println("\n\nErik - Finalizando a execucao do metodo main \n\n");
	}

}