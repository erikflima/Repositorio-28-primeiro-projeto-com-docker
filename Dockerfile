#   ---------Dockerfile para aplicacao SpringBoot---------

#Digo quais imagens auxiliares vou precisar para gerar o ambiente que meu projeto vai rodar.
#Como meu projeto eh SpringBoot, digo vou precisar da jdk 8 para rodar meu projeto.
FROM openjdk:8-jre


#Digo para o Docker ir na pasta "target" do meu projeto SpringBoot e fazer uma copia para ele do artefato gerado apos eu empacotar meu projeto,
#e dar o nome dessa copia de "28-primeiro-projeto-com-docker.jar".
ADD target/28-primeiro-projeto-com-docker-0.0.1-SNAPSHOT.jar 28-primeiro-projeto-com-docker.jar


#Defino os comandos a serem executados assim que essa imagem foir inicializada por um container.
#Entao peco para o Docker pegar o arquivo "28-primeiro-projeto-com-docker.jar" que ele copiou pra ele no comando anterior(ADD), e executar usando a jdk no qual defini o endereco.
CMD ["/usr/local/openjdk-8/bin/java", "-jar", "28-primeiro-projeto-com-docker.jar"]