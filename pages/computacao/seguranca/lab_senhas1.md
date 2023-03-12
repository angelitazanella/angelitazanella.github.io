---
title: "Laboratório Quebrando Senhas"
keywords: senhas
last_updated: 11 de março de 2023 
tags: [senhas labsenhas]
sidebar: home_sidebar
permalink: /lab_senhas1.html
summary: Laboratório quebra de senhas
---

## Preparação
Realize este experimento dentro da máquina Kali Linux.

## Procedimentos
1. Baixe o arquivo [Senhas.zip](download/senhas.zip). Este arquivo foi compactado usando senha. Para descompactar você precisa descobrir qual é a senha. 
2. Abra o terminal e execute o seguinte comando:
```bash
$ zip2john senhas.zip > hash.txt
$ john hash.txt
```
3. Depois de obter a senha descompacte o arquivo
```bash
$ unzip senhas.zip
```
4. O arquivo senhas.txt guarda um conjunto de senhas armazenadas em hash MD5. Descubra quais são as senhas:
```bash
$ john --format=raw-md5 senhas.txt 
```

## Tarefa de programação
5. Crie um script para gerar senhas usando salt. Escolha um algoritmo seguro.

## Portfolio
6. Adicione ao seu portfolio o conteúdo sobre autenticação. Seu conteúdo deve conter:
- Uma definição sobre autenticação e sua importância;
- Informações sobre os requisitos básicos: identificação e autenticação
- Informação sobre requisitos derivados.

*Obs: Use como referência o livro: Segurança de Computadores - princípios e práticas* 
