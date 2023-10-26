---
title: "Redes de Computadores II"
keywords: redes2
last_updated: 31 de janeiro de 2023 
tags: [redes2]
sidebar: home_sidebar
permalink: redes2.html
summary: Página da disciplina Redes de Computadores II
---

- Serviços: DHCP
- [Laboratório DHCP](lab_dhcp.html)

- DNS 
    - [Introdução a DNS](dns.html)
    - [Laboratório 1 - DNS](lab_dns1.html)
    - [Laboratório 2 - DNS](lab_dns2.html)
    - [Projeto DNS](projeto_dns.html)

- Web
    - [Projeto](projeto_web.html)

- FTP
  
  Baixe os arquivos:
    - [FTP](download/ftp.sh)
    - [SFTP](download/sftp.sh)
    ```
    Com um cliente FTP acesse os servidores.
    Host: localhost
    Usuário: aluno
    Senha: jujuba123

    FTP: não precisa informar a porta.
    SFTP: porta 22 (porta segura)
    ```
    - [SSH](download/ssh.sh)
    ```bash
    docker exec -it server bash
    echo "Um texto de arquivo" > arquivo
    scp arquivo aluno@172.17.0.2:
    ```
Senha do aluno: jujuba123

