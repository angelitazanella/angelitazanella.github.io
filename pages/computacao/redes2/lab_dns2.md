---
title: "Laboratório DNS"
keywords: dns
last_updated: 11 de março de 2023 
tags: [dns labdns]
sidebar: home_sidebar
permalink: /lab_dns2.html
summary: script para execução de um laboratório DNS
---
[Voltar](/redes2.html)

## Preparação

1. Para este laboratório você irá urilizar um contêiner com o `Bind9` instalado. 

```bash
$ docker run -d --name bind9-container -e TZ=UTC -p 30053:53 ubuntu/bind9:9.18-22.04_beta

$ docker exec -it bind9-container /bin/bash
```
2. Você precisará instalar um editor para manipular os arquivos. Dentro do contêiner, execute os seguintes comandos para instalar o editor `nano`:

```bash
$ apt update
$ apt install nano
```


## Configuração do DNS
Os arquivos de configuração deste serviço ficam no diretório `/etc/bind`. Entre na pasta e liste os arquivos:

```bash
$ cd /etc/bind
$ ls
```
Observe que existem vários arquivos. A partir daqui você deverá pesquisar como configurar o Bind  para responder pelo domínio `angelita.co`. Nós iremos adicionar novas configurações para esse domínio futuramente, mas você já deve prever a existência de um servidor de email e um servidor web, respondendo pelo endereço IP público. Configure entradas de nomes para os servidores acessíveis internamente. 

## Relatório
No seu relatório adicione todos os procedimentos seguidos para executar a configuração e informe os conteúdos completos dos arquivos configurados. Você deverá explicar o significado das configurações adicionadas ou alteradas nos arquivos.

### Documentos
[Modelo de Relatório](download/ModeloRelatorio.zip)

---

[Voltar](/redes2.html)