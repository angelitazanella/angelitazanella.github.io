---
title: "Laboratório DNS"
keywords: dns
last_updated: 11 de março de 2023 
tags: [dns labdns]
sidebar: home_sidebar
permalink: /lab_dns1.html
summary: Atividade de aula - compreendendo o funcionamento do DNS
---

[Voltar](/redes2.html)


## Preparação
Neste laboratório você irá utilizar o contêiner wireshark:

1. Acesse a o contêiner que contém o wireshark
```bash
$ docker exec -it wireshark /bin/bash
```
2. No browser da máquina hospedeira, acesse a interface do wireshark pelo endereço `http://localhost:3000/`

## Procedimentos

3. Filtre os pacotes DNS. 
4. No shell do contêiner, pingue para um domínio qualquer
```bash
$ ping google.com
```
5. Tente responder as seguintes perguntas:
- Quantas queries o cliente DNS fez?
- O que o cliente DNS perguntou?
- Para qual endereço foi encaminhada a requisição?
- Quais foram as respostas retornadas pelo servidor?

## Relatório
Monte um relatório descrevendo o seu experimento. Seu relatório deverá seguir o [modelo](download/ModeloRelatorio.zip).


[Modelo de Relatório](download/ModeloRelatorio.zip)

---

[Voltar](/redes2.html)