---
title: "Laboratório Controle de Acesso"
keywords: senhas
last_updated: 14 de março de 2023 
tags: [senhas labsenhas]
sidebar: home_sidebar
permalink: /lab_controle_acesso1.html
summary: Laboratório para restrições de acesso
---

[Voltar](/seguranca.html)

## Descrição
### Atividade
Restrição de acesso em um diretório no Ubuntu Linux

### Objetivo
Configurar permissões de acesso em um diretório para restringir o acesso a um grupo de usuários específico.

### Materiais
Contêiner com sistema operacional Ubuntu Linux instalado.

## Preparação
1. No terminal do Linux, faça o pull do contêiner:
```bash
$ docker pull ubuntu
```
2. Execute o contêiner em modo interativo e peça um bash para inserção dos comandos
```bash
$ docker run -it ubuntu /bin/bash
```

## Procedimentos
### Passo 1: Verifique as permissões de acesso existentes
3. Navegue até o diretório que deseja verificar as permissões de acesso usando o comando `cd`. 
```bash
$ cd [nome_do_diretorio]´
```
4. Use o comando `ls -l` para listar as permissões de acesso do diretório e dos arquivos dentro dele. As permissões de acesso incluem as informações sobre o proprietário, grupo e permissões de leitura, gravação e execução.

### Passo 2: Crie um grupo de usuários e dois usuarios
6. Use o comando `adduser [nome_do_usuario]` para criar **três** novos usuários. 
```bash
$  useradd -m usuario1
```
5. Use o comando `addgroup [nome_do_grupo]` para criar um novo grupo de usuários. 
```bash
$  addgroup restrito
```


### Passo 3: Adicione usuários ao grupo restrito
6. Use o comando `adduser [nome_do_usuário] [nome_do_grupo]` para adicionar **dois** usuários ao grupo restrito que você criou anteriormente. 
```bash
$  adduser usuario1 restrito
```

### Passo 4: Defina as permissões de acesso do diretório
1. Use o comando `mkdir [nome_do_diretorio]` para criar um novo diretório.
```bash
$ mkdir /home/diretorio_restrito
```
2. Use o comando `chgrp [nome_do_grupo] [nome_do_diretorio]` para alterar o grupo do diretório.
```bash
$ chgrp restrito diretorio_restrito/
```
7. Use o comando `chown [nome do proprietário] [nome do diretório]` para alterar o proprietário do diretório. 
```bash
$  chown usuario1 /home/diretorio_restrito
```
8. Use o comando `chmod 770 [nome do diretório]` para definir as permissões de acesso do diretório. O número `770` significa que o proprietário e o grupo têm permissões de leitura, gravação e execução, enquanto outros usuários não têm nenhuma permissão. 
```bash
$  chmod 770 /home/diretorio_restrito
```´

### Passo 5: Verifique as novas permissões de acesso
9.  Use o comando `ls -l` novamente para verificar as novas permissões de acesso do diretório.
10. Verifique se o proprietário do diretório foi alterado usando o comando `ls -ld [nome do diretório]`.

### Passo 6: Teste as novas permissões de acesso
11. Faça o login com um usuário que não pertence ao grupo restrito e tente acessar o diretório restrito. Você deve receber uma mensagem de erro informando que não tem permissão para acessar o diretório.
12. Faça o login com um usuário que pertence ao grupo restrito e tente acessar o diretório restrito. Você deve ter permissão para acessar o diretório e fazer alterações nele.
13. Altere novamente as permissões de acesso e teste as novas permissões

**Observação:** Lembre-se de que a restrição de acesso em um sistema operacional é uma medida de segurança importante para proteger seus arquivos e dados. É fundamental garantir que apenas usuários autorizados tenham acesso aos arquivos confidenciais e importantes.

### Dicas
- Use o comando `su [nome_do_usuario]` para alterar seu usuário.
- Use o comando `whoami` para saber qual é o seu usuário.
- Use o comando `pwd` para saber em qual diretório você está.
- Use o comando `touch [nome_do_arquivo]` para criar novos arquivos.


----

[Voltar](/seguranca.html)
