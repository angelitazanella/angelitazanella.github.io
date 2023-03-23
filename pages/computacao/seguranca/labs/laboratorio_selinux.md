---
title: "Laboratório - Controle de Acesso"
keywords: seguranca controle_de_acesso
last_updated: 21 de março de 2023 
tags: [segurança controle_de_acesso]
sidebar: home_sidebar
permalink: lab_selinux.html
---


Estrutura de diretórios
```kotlin
docker
├── Dockerfile
├── app
│   └── firefox.sh
└── data
    ├── dir1
    │   ├── file1.txt
    │   └── file2.txt
    ├── dir2
    │   ├── file1.txt
    │   └── file2.txt
    └── dir3
        ├── file1.txt
        └── file2.txt
```

## Procedimentos
1. Crie um arquivo chamado `Dockerfile` na pasta docker com o seguinte conteúdo:

```javascript
FROM fedora:latest
RUN dnf -y install selinux-policy selinux-policy-devel selinux-policy-targeted
RUN echo 'SELINUX=enforcing' > /etc/selinux/config
```

1. Crie uma pasta chamada app na pasta `docker` e crie um arquivo chamado `firefox.sh` dentro dela com o seguinte conteúdo:

```bash
#!/bin/bash
firefox
```
1. Crie uma pasta chamada `data` na pasta `docker` e crie três pastas dentro dela: `dir1`, `dir2` e `dir3`. Crie dois arquivos de texto em cada pasta.
1. Construa a imagem do conteiner executando o comando `docker build -t lab-selinux . ` na pasta docker.
1. Execute o conteiner com o comando `docker run -it --security-opt=label=type:lab-selinux lab-selinux`.
1. No conteiner, crie quatro usuários com as seguintes permissões:
    - O usuário `user1` deve ter permissão para acessar apenas o diretório `dir1`.
    - O usuário `user2` deve ter permissão para acessar apenas o diretório `dir2`.
    - O usuário `user3` deve ter permissão para acessar apenas o diretório `dir3` e executar o aplicativo `firefox.sh`.
    - O usuário `user4` deve ter permissão para acessar todos os diretórios e executar o aplicativo `firefox.sh`.
1. Para criar os usuários, execute os seguintes comandos:
```bash
$ useradd -Z user1_u user1
$ useradd -Z user2_u user2
$ useradd -Z user3_u user3
$ useradd -Z user4_u user4
```
1. Atribua as permissões adequadas para cada usuário usando o comando chcon:
```bash

$ chcon -R -t user1_t /data/dir1
$ chcon -R -t user2_t /data/dir2
$ chcon -R -t user3_t /data/dir3
$ chcon -R -t user4_t /data
```
1. Teste as permissões criando arquivos e pastas em diferentes diretórios e executando o aplicativo `firefox.sh` como cada usuário. Verifique se as permissões estão sendo respeitadas corretamente.