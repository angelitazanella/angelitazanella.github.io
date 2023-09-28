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
$ docker run -d --name bind9-container -v ${PWD}:/home -e TZ=UTC -p 30053:53 ubuntu/bind9

$ docker exec -it bind9-container /bin/bash
```

## Configuração do DNS
Os arquivos de configuração deste serviço ficam no diretório `/etc/bind`. Entre na pasta e liste os arquivos:

```bash
$ cd /etc/bind
$ ls
```
Observe que existem vários arquivos. A partir daqui você deverá pesquisar como configurar o Bind  para responder pelo domínio `angelita.corp`. Configure entradas para serviço de e-mail, um servidor `ns` secundário e outros 5 subdomínios. Você deve considerar que todos os servidores irão responder por um endereço IPv4 e um endereço IPv6. Adicione pelo menos duas entradas canônicas. A configuração de dns reverso pode resultar em ponto extra nesta atividade.

## Arquivos do contêiner
Arquivos do contêiner: [Arquivos](download/bind.tar.gz)

Para construir o contêiner com as suas configurações, utilize o seguinte comando:

```bash
$ docker build . -t meudns
```


## Referências
Aqui estão algumas referências que te ajudarão na execução dessa tarefa:

[Bind](https://www.isc.org/bind/)

[RNP Bind9](https://memoria.rnp.br/newsgen/0105/bind9.html)

<!-- ## Relatório
No seu relatório adicione todos os procedimentos seguidos para executar a configuração e informe os conteúdos completos dos arquivos configurados. Você deverá explicar o significado das configurações adicionadas ou alteradas nos arquivos. -->

<!-- ### Documentos -->
<!-- [Modelo de Relatório](download/ModeloRelatorio.zip) -->

---

[Voltar](/redes2.html)