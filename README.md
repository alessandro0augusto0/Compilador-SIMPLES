# Compilador da Linguagem SIMPLES para C ![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)

## Projeto final da disciplina de Compiladores

## 🎓 Sobre o Projeto

Este compilador foi desenvolvido como projeto final da disciplina de **Compiladores** do [IFSULDEMINAS - Campus Poços de Caldas](https://portal.pcs.ifsuldeminas.edu.br/), no curso de Bacharelado em Engenharia de Computação.

- **Aluno:** [Alessandro Augusto](https://github.com/alessandro0augusto0)
- **Professor Orientador:** [Paulo Ávila](https://www.linkedin.com/in/paulo-ávila/)

O objetivo do projeto é proporcionar uma experiência prática e completa no desenvolvimento de compiladores, desde a análise léxica até a geração de código, utilizando ferramentas modernas e boas práticas de engenharia de software.

---

## ✨ Funcionalidades Implementadas

- **Análise Léxica e Sintática:** Utilizando JFlex e CUP.
- **Declaração de Variáveis:** Suporte para inteiro e flutuante, com/sem inicialização.
- **Vetores (Arrays):** Unidimensionais com acesso por índice.
- **Comandos de I/O:**
    - `leia` → `scanf`
    - `escreva`/`escreval` → `printf` (com quebra de linha automática no segundo)
    - Suporte a strings literais e expressões.
- **Estruturas de Controle:**
    - `se`/`senao`/`fimse` → `if/else`
    - `enquanto`/`fimenquanto` → `while`
    - `para` → `for` (com passo positivo/negativo)
- **Funções:** Declaração de procedimentos pré-`main` com tradução para C.

---
## 📋 Exemplo Prático

**Código SIMPLES:**

```portugol
/* Programa de teste completo para a linguagem SIMPLES */

procedimento inteiro calcula_dobro()
inicio
    escreval "--- Dentro da funcao calcula_dobro ---";
    escreva "Esta funcao vai retornar 100";
    escreval ""; /* Apenas para pular linha */
    /* retorne 100; -- funcionalidade de retorno nao implementada */
fim

programa
inicio
    inteiro a;
    inteiro b <- 10;
    flutuante c;
    inteiro i;
    inteiro meu_vetor[5];
    
    escreval "Projeto Final de Compiladores!";
    escreval "==============================";
    
    escreva "Digite um valor inteiro para 'a': ";
    leia a;
    
    escreva "Digite um valor flutuante para 'c': ";
    leia c;
    
    escreval "--- Testando Atribuicoes e Vetores ---";
    meu_vetor[0] <- a;
    meu_vetor[1] <- b;
    meu_vetor[4] <- meu_vetor[0] + meu_vetor[1];
    
    escreva "Valor em meu_vetor[4] (a+b): ";
    escreval meu_vetor[4];
    
    escreval "--- Testando FOR com passo positivo ---";
    para i de 0 ate 4 passo 1 faca
        escreva "vetor[";
        escreva i;
        escreva "]: ";
        escreval meu_vetor[i];
    fimpara
    
    escreval "--- Testando FOR com passo negativo ---";
    para i de 4 ate 0 passo -1 faca
        escreval i;
    fimpara
    
    escreval "--- Testando IF/ELSE ---";
    se a > 10 entao
        escreval "A variavel 'a' e maior que 10.";
    senao
        escreval "A variavel 'a' nao e maior que 10.";
    fimse
    
    escreval "--- Testando WHILE ---";
    b <- 3;
    enquanto b > 0 faca
        escreval b;
        b <- b - 1;
    fimenquanto
    
    escreval "Fim do programa.";
fim
```

**Código C Gerado:**

```c
#include <stdio.h>
#include <stdlib.h>


int calcula_dobro()     {
        printf("--- Dentro da funcao calcula_dobro ---\n");
        printf("Esta funcao vai retornar 100");
        printf("\n");
    }
int main() {
    int a;
    int b = 10;
    float c;
    int i;
    int meu_vetor[5];
    printf("Projeto Final de Compiladores!\n");
    printf("==============================\n");
    printf("Digite um valor inteiro para 'a': ");
    scanf("%d", &a);
    printf("Digite um valor flutuante para 'c': ");
    scanf("%f", &c);
    printf("--- Testando Atribuicoes e Vetores ---\n");
    meu_vetor[0] = a;
    meu_vetor[1] = b;
    meu_vetor[4] = meu_vetor[0] + meu_vetor[1];
    printf("Valor em meu_vetor[4] (a+b): ");
    printf("%d\n", meu_vetor[4]);
    printf("--- Testando FOR com passo positivo ---\n");
    for(i = 0; i <= 4; i += 1)     {
        printf("vetor[");
        printf("%d", i);
        printf("]: ");
        printf("%d\n", meu_vetor[i]);
    }
    printf("--- Testando FOR com passo negativo ---\n");
    for(i = 4; i >= 0; i += -1)     {
        printf("%d\n", i);
    }
    printf("--- Testando IF/ELSE ---\n");
    if (a > 10)     {
        printf("A variavel 'a' e maior que 10.\n");
    } else     {
        printf("A variavel 'a' nao e maior que 10.\n");
    }
    printf("--- Testando WHILE ---\n");
    b = 3;
    while (b > 0)     {
        printf("%d\n", b);
        b = b - 1;
    }
    printf("Fim do programa.\n");
    return 0;
}

```

---

## 🛠️ Tecnologias Utilizadas

<div align="center">

![Java](https://img.shields.io/badge/Java-17-blue?logo=java&logoColor=white)
![JFlex](https://img.shields.io/badge/JFlex-1.7.0-blueviolet?logo=java&logoColor=white)
![CUP](https://img.shields.io/badge/CUP-Parser-orange?logo=java&logoColor=white)
![Apache Ant](https://img.shields.io/badge/Apache%20Ant-Build-red?logo=apache-ant&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker&logoColor=white)
![GCC](https://img.shields.io/badge/GCC-Compiler-00599C?logo=gnu&logoColor=white)

</div>

<table align="center">
    <tr>
        <th>Componente</th>
        <th>Tecnologia</th>
    </tr>
    <tr>
        <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" width="24" /> Linguagem</td>
        <td><b>Java 17</b></td>
    </tr>
    <tr>
        <td><img src="https://img.shields.io/badge/JFlex-1.7.0-blueviolet?logo=java&logoColor=white" width="80" /> + <img src="https://img.shields.io/badge/CUP-Parser-orange?logo=java&logoColor=white" width="80" /> Geradores</td>
        <td><b>JFlex + CUP</b></td>
    </tr>
    <tr>
        <td><img src="https://img.shields.io/badge/Apache%20Ant-Build-red?logo=apache-ant&logoColor=white" width="100" /> Build</td>
        <td><b>Apache Ant</b></td>
    </tr>
    <tr>
        <td><img src="https://img.shields.io/badge/Docker-Container-blue?logo=docker&logoColor=white" width="100" /> + <img src="https://img.shields.io/badge/GCC-Compiler-00599C?logo=gnu&logoColor=white" width="80" /> Ambiente</td>
        <td><b>Docker + GCC</b></td>
    </tr>
</table>

---

## 🚀 Como Executar

### Pré-requisitos

<p align="center">
    <a href="https://www.docker.com/">
        <img src="https://skillicons.dev/icons?i=docker" />
    </a>
    <a href="https://code.visualstudio.com/">
        <img src="https://skillicons.dev/icons?i=vscode" />
    </a>
    <a href="https://www.oracle.com/java/technologies/downloads/">
        <img src="https://skillicons.dev/icons?i=java" />
    </a>
    <a href="https://git-scm.com/">
        <img src="https://skillicons.dev/icons?i=git" />
    </a>
</p>
<p align="center">
    <a href="https://ant.apache.org/">
        <img src="https://img.shields.io/badge/Apache%20Ant-Build-red?logo=apache-ant&logoColor=white" height="32" />
    </a>
</p>

Antes de iniciar, certifique-se de ter os seguintes itens instalados/configurados em seu ambiente:

- [Docker](https://www.docker.com/) (para ambiente de compilação isolado)
- [Visual Studio Code (VSCode)](https://code.visualstudio.com/) ou outra IDE compatível com Java
- [Java JDK 17+](https://adoptium.net/pt/temurin/releases/?version=17) (para desenvolvimento e execução local)
- [Apache Ant](https://ant.apache.org/) (para automatizar o build do projeto)
- [Git](https://git-scm.com/) (para clonar o repositório)
- (Opcional) Extensões recomendadas para VSCode: Java Extension Pack, Docker, GitLens

#### Como este projeto foi criado

Este projeto foi desenvolvido como trabalho final da disciplina de Compiladores, utilizando as seguintes etapas e ferramentas:

1. **Configuração do ambiente Java**: Estruturação do projeto em Java 17.
2. **Definição da gramática**: Utilização do JFlex para análise léxica e CUP para análise sintática.
3. **Automação do build**: Criação de scripts com Apache Ant para facilitar a compilação.
4. **Containerização**: Uso do Docker para garantir portabilidade e reprodutibilidade do ambiente.
5. **Testes e exemplos**: Inclusão de arquivos de teste e exemplos práticos para validação do compilador.
6. **Documentação**: Elaboração deste README para orientar o uso e a contribuição.

### Passo a Passo
#### 1. Clone o Repositório

Clone o repositório e acesse a pasta do projeto:

```bash
git clone https://github.com/alessandro0augusto0/Compilador-SIMPLES.git
```

```bash
cd Compilador-SIMPLES
```

---

#### 2. Construa a Imagem Docker

Crie a imagem Docker com todas as dependências:

```bash
docker build -t compilador-ambiente .
```

---

#### 3. Inicie o Container e Entre Nele

Inicie o container e espelhe a pasta do projeto:

```bash
docker run -it --rm -v "$(pwd):/app" compilador-ambiente bash
```

---

#### 4. Execute o Processo de Compilação (Dentro do Container)

Dentro do container, execute os comandos abaixo, um por vez:

Navegue até a pasta do projeto:

```bash
cd /app
```

Compile o compilador (gera o .jar):

```bash
ant
```

Use o compilador para traduzir o código SIMPLES para C:

```bash
java -cp "build/jar/simples-compiler.jar:lib/java-cup-11b-runtime.jar" CompiladorSimples test.simples > test.c
```

Compile o código C gerado com o GCC:

```bash
gcc test.c -o programa_final
```

Execute o programa final:

```bash
./programa_final
```

---

## 📂 Estrutura do Projeto

```
C:.
│   .project
│   build.xml
│   Dockerfile
│   programa_final
│   test
│   test.c
│   test.simples
│
├───.vscode
│       c_cpp_properties.json
│       launch.json
│       settings.json
│
├───build
│   ├───classes
│   │       CompiladorSimples.class
│   │       parser$CUP$parser$actions.class
│   │       parser$TabelaSimbolo.class
│   │       parser.class
│   │       SimplesLexer.class
│   │       sym.class
│   │
│   └───jar
│           simples-compiler.jar
│
├───cups
│       simples.cup
│
├───flex
│       JFlex.jar
│       simples.flex
│       simples.flex.com_problema
│
├───lib
│       java-cup-11b-runtime.jar
│       java-cup-11b.jar
│       jflex-full-1.7.0.jar
│
└───src
    CompiladorSimples.java
    CompiladorSimples.old
    parser.java
    SimplesLexer.java
    SimplesLexer.java~
    sym.java
```

---

## 🤝 Como Contribuir

1. Faça um fork do projeto
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas alterações (`git commit -m 'Adiciona X'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

---

## 📄 Licença

Distribuído sob licença MIT. Veja [LICENSE](LICENSE) para detalhes.
