# Use a imagem oficial do Ubuntu 22.04 como base
FROM ubuntu:22.04

# Evita que o instalador peça confirmações durante o processo
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza os pacotes e instala as ferramentas necessárias:
# - openjdk-17-jdk: Java, para rodar JFlex, CUP e o compilador
# - ant: Ferramenta para automatizar a compilação do nosso compilador
# - build-essential: Contém o compilador GCC, para testar o código C gerado
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk ant build-essential && \
    rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho padrão para quando entrarmos no container
WORKDIR /app

# Comando para manter o container rodando em segundo plano, se necessário
CMD ["tail", "-f", "/dev/null"]