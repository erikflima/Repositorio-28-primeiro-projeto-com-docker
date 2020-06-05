#   ---------Dockerfile para aplicacao SpringBoot do Curso---------

#Digo quais imagens auxiliares vou precisar para gerar o ambiente que meu projeto vai rodar.
#Como meu projeto eh SpringBoot, digo vou precisar da jdk 8 para rodar meu projeto.
FROM openjdk:8-jre


#Entrypoint eh a definicao dos comandos executados toda vez que a imagem for inicializada. Entao aqui digo para o Docker rodar minha aplicacao SpringBoot.
# "/usr/local/openjdk-8/bin/java"         > Digo onde esta instalado a jdk dentro da imagem "openjdk:8-jre" que foi baixada.
# "-jar"                                  > Digo o tipo da minha aplicacao.
# "28-primeiro-projeto-com-docker.jar"    > Nome do artefato gerado apos empacotar o meu projeto SpringBoot que o Docker deve rodar.
ENTRYPOINT ["/usr/local/openjdk-8/bin/java", "-jar", "28-primeiro-projeto-com-docker.jar"]


#ARG serve para passar argumentos para o Docker. Esse comando eh opcional. Digo para o Docker que o meu projeto SpringBoot eh um ".jar"
ARG JAR_FILE


#Digo para o Docker ir na pasta "target" do meu projeto SpringBoot e fazer uma copia para ele do artefato gerado apos eu empacotar meu projeto,
#e dar o nome dessa copia de "28-primeiro-projeto-com-docker.jar". Esse eh o mesmo nome que esta na instrucao "ENTRYPOINT" acima.
ADD target/${JAR_FILE} 28-primeiro-projeto-com-docker.jar