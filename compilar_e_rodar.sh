#!/bin/bash

# Limpa a tela para uma visualização mais limpa
clear

# 1. Verifica se o usuário forneceu um nome de arquivo como argumento
if [ -z "$1" ]; then
    echo "Erro: Por favor, forneça o nome do arquivo .simples que você quer compilar."
    echo "Exemplo de uso: ./compilar_e_rodar.sh test.simples"
    exit 1
fi

# Define os nomes dos arquivos com base no argumento de entrada
INPUT_FILE=$1
BASE_NAME=$(basename ${INPUT_FILE} .simples) # Extrai o nome base (ex: "test")
C_FILE="${BASE_NAME}.c"
EXECUTABLE="${BASE_NAME}"

echo "--- [PASSO 1 de 4] Compilando o compilador (ant)... ---"
ant -quiet # O -quiet deixa a saída do ant mais limpa

# Verifica se o .jar foi criado
if [ ! -f "build/jar/simples-compiler.jar" ]; then
    echo "Erro: Falha ao construir o compilador com 'ant'."
    exit 1
fi
echo "Compilador construído com sucesso!"

echo -e "\n--- [PASSO 2 de 4] Traduzindo ${INPUT_FILE} para ${C_FILE}... ---"
java -cp "build/jar/simples-compiler.jar:lib/java-cup-11b-runtime.jar" CompiladorSimples ${INPUT_FILE} > ${C_FILE}

# Verifica se o arquivo .c não está vazio, indicando uma compilação bem-sucedida
if [ ! -s "${C_FILE}" ]; then
    echo "Falha na tradução. O arquivo ${C_FILE} está vazio. Verifique os erros acima."
    exit 1
fi
echo "Código C gerado com sucesso!"

echo -e "\n--- [PASSO 3 de 4] Compilando o código C (${C_FILE}) com gcc... ---"
gcc ${C_FILE} -o ${EXECUTABLE}

if [ ! -f "${EXECUTABLE}" ]; then
    echo "Erro: Falha ao compilar o código C com gcc."
    exit 1
fi
echo "Programa final '${EXECUTABLE}' criado com sucesso!"

echo -e "\n--- [PASSO 4 de 4] Executando o programa final... ---"
echo "----------------------------------------------------"
./${EXECUTABLE}
echo "----------------------------------------------------"
echo -e "\nProcesso concluído!"