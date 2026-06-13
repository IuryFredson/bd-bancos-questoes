# Contexto para imprimir bancos de questões no Windows

Objetivo: imprimir os bancos de questões de Banco de Dados em uma impressora Epson no Windows, usando frente e verso.

## Pasta dos arquivos

Os PDFs estão na pasta:

```text
BD/
```

Se estiver acessando pelo Windows via WSL/Ubuntu, procurar a pasta equivalente a:

```text
/home/iury/Downloads/BD
```

## PDFs principais para imprimir

Imprimir estes arquivos:

```text
aula09_banco_questoes_objetivas.pdf
aula10_banco_questoes_objetivas.pdf
aula11_banco_questoes_objetivas.pdf
aula12_banco_questoes_objetivas.pdf
aula13_banco_questoes_objetivas.pdf
```

Opcional, se quiser também questões discursivas/comentadas da Aula 09:

```text
aula09_banco_questoes.pdf
```

## Configuração desejada

A intenção é usar **1 página do PDF na frente da folha e 1 página do PDF no verso**. Ou seja: 2 páginas do PDF por folha física, mas usando duplex, sem reduzir duas páginas no mesmo lado.

Configurações recomendadas no diálogo de impressão:

```text
Impressora: Epson
Intervalo: Todas as páginas
Escala: Ajustar à área imprimível ou Tamanho real
Páginas por folha: 1
Imprimir frente e verso: Ativado
Virar na borda longa: Ativado
Orientação: Automática ou Retrato
Agrupar/Collate: Ativado
```

Atenção: não escolher "2 páginas por folha" se a ideia for uma página na frente e outra atrás. Essa opção coloca duas páginas no mesmo lado da folha e, com frente e verso, pode virar 4 páginas por folha física.

## Ordem sugerida de impressão/estudo

```text
1. Aula 09 - Normalização
2. Aula 10 - SQL
3. Aula 12 - Transações
4. Aula 13 - Controle de Concorrência
5. Aula 11 - Programação SQL
```

## Conferência atual dos PDFs

```text
Aula 09 objetiva: até Q52
Aula 10 objetiva: até Q85
Aula 11 objetiva: até Q111
Aula 12 objetiva: até Q107
Aula 13 objetiva: até Q79
```
