---
title: "Projeto - Serviço Web"
keywords: dns
last_updated: 21 de março de 2023 
tags: [dns projeto]
sidebar: home_sidebar
permalink: /projeto_web.html
---
[Voltar](/projeto.html)

## Descrição

Precisamos configurar o servidor web do cliente dois da atividade anterior.

1. Em um contêiner `docker` ou em uma `máquina virtual`, você deverá subir um servidor web, usando o `nginx`.
    - A página deverá responder pelo domínio que você criou para a `página web` na atividade de DNS. 
    - Você precisa configurar o serviço HTTP e HTTPS.
    - Os arquivos com o código fonte da página devem estar armazenados em `/var/www``
    - Crie uma página simples para mostrar que você consegue alterar os arquivos
2. Crie um segundo servidor para responder pela página `intranet`. 
    - Configure um `virtual host` para ouvir na porta 8088 do servidor (contêiner). 
    - Configure o `nginx` para mapear todos os diretório `public_html` existentes nos diretórios `home` dos usuários. Assim, deve ser possível acessar as páginas contidas em `/home/usuario1/public_html` pelo endereço `intranet.meudominio/~usuario1`

<!-- ## Relatório

Monte um relatório para apresentar o que você fez nessa tarefa. Descreva a atividade e -->


---

[Voltar](/projeto.html)