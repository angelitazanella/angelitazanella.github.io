---
title: "Laboratório Quebrando Senhas"
keywords: senhas
last_updated: 11 de março de 2023 
tags: [senhas labsenhas]
sidebar: home_sidebar
permalink: /lab_senhas1.html
summary: Laboratório quebra de senhas
---

[Voltar](/seguranca.html)


## Preparação
Realize este experimento dentro da máquina Kali Linux.

## Procedimentos
1. Baixe o arquivo [Senhas.zip](download/senhas.zip). Este arquivo foi compactado usando senha. Para descompactar você precisa descobrir qual é a senha. 
2. Abra o terminal e execute o seguinte comando:
```bash
$ zip2john senhas.zip > hash.txt
$ john hash.txt
```
3. Depois de obter a senha, descompacte o arquivo:
```bash
$ unzip senhas.zip
```
4. O arquivo senhas.txt guarda um conjunto de senhas armazenadas em hash MD5. Descubra quais são as senhas:
```bash
$ john --format=raw-md5 senhas.txt 
```
5. Agora teste você mesmo. Gere um conjunto de [hash](https://www.md5hashgenerator.com/) de senhas e guarde em um arquivo txt. Primeiro teste senhas curtas e fáceis.  Depois você pode repetir o experimento, adicionando senhas mais complexas.
6. Após guardar a senha em um arquivo texto, você pode executar o o comando `john` para tentar descobrir as senhas.

## Dicas
- Para criar um arquivo compactado com senha no Linux, use o comando:
```bash
$ zip -re [file.zip] file.txt
```
- Quando o `john` não mostrar a senha, use a opção `--show`


[Voltar](/seguranca.html)
