---
title: "Serviço de Nomes de Domínios - DNS"
keywords: dns
last_updated: 11 de março de 2023 
tags: [dns]
sidebar: home_sidebar
permalink: /dns.html
summary: Serviço de Nomes de Domínios - DNS
---
[Voltar](/redes2.html)

## Introdução
O DNS (Domain Name System) é um sistema fundamental para o funcionamento da Internet. Ele permite que permite a tradução de nomes de domínio, popularmente chamados endereços de Internet ou simplesmente domínios, em endereços IP. Em outras palavras, o DNS é responsável por associar os endereços que digitamos em nosso navegador (por exemplo, google.com) ao endereço IP correspondente (por exemplo, 172.217.7.206).

O DNS é uma das principais ferramentas de comunicação na Internet e é usado em quase todas as atividades *online*, desde a navegação na web até o envio de e-mails. Sem o DNS, seria necessário memorizar o endereço IP de todos os *sites* que deseja visitar, o que seria impraticável para a maioria das pessoas.


## Estrutura   

O DNS é estruturado como um grande banco de dados distribuído. Ele é organizado em uma hierarquia de servidores que se comunicam para resolver consultas de DNS. Esses servidores são organizados em zonas, onde cada zona representa uma parte do espaço de nomes de domínio. O DNS funciona por meio de consultas recursivas, onde um cliente envia uma consulta para um servidor de nome, que pode responder imediatamente ou encaminhar a consulta para outro servidor, até que a resposta seja encontrada.

Sua estrutura é equivalente a uma árvore invertida, ou seja, existe um servidor principal que aponta para um secundário que aponta para um terceiro e assim sucessivamente. O servidor DNS que está no topo da Internet é o servidor raiz.

![TLDs](/images/TLD.png)

O servidor raiz da Internet possui uma tabela que indica qual DNS será responsável pela resolução dos domínios para cada extensão de domínio (Top Level Domain) diferente.  A tabela em si é muito pequena, possui apenas uma entrada para cada TLD existente. Os Tops Level Domains são de dois tipos: gTLDs (Generic Top Level Domains – domínios genéricos usados no mundo todo) e ccTLDs (Country Code Top Level Domains – extensões de domínios administrados pelos países).

Por exemplo: todos os domínios terminados em .com serão respondidos pelos servidores da VeriSign; os domínios .br serão respondidos pelos servidores do Registro.br e assim sucessivamente. Cada gTLD ou ccTLD tem apenas uma entrada neste banco de dados. Por segurança, o servidor raiz foi replicado em 13 servidores raízes diferentes espalhados pelo mundo e duas vezes ao dia seu conteúdo é automaticamente replicado.

Foi convencionado que cada servidor raiz seria chamado por uma letra do alfabeto (Servidor A, Servidor B etc…). Mesmo um determinado servidor raiz, o servidor raiz A, por exemplo, pode ser replicado em várias regiões do mundo, para assegurar que o tempo para a resolução de um domínio seja rápido (baixa latência). Bem, então na verdade existem treze servidores raiz principais e dezenas de cópias espalhadas pelo mundo. 

Os grandes provedores de acesso e empresas de telecomunicações arquivam em seus caches (memória temporária) a tabela dos servidores raiz. Portanto, a cada e-mail enviado ou site visitado os servidores raiz não são obrigatoriamente consultados. Na verdade, o volume de consultas a estes servidores é muito pequeno, já que sua tabela é alterada apenas quando um novo top level domain é criado. Quem realmente processa o maior volume de queries para resolução de nomes são os servidores dos TLDs (Top Level Domains).

Por exemplo: um servidor raiz normalmente recebe 500 queries por dia e os servidores da VeriSign (responsável pela resolução dos domínios .com) recebem bilhões de queries diariamente.

## Estrutura da consulta

O sistema de DNS trabalha com uma estrutura fortemente hierárquica. Isso facilita que cada corporação ou entidade cuide de maneira autônoma de seu próprio DNS sem ter que recorrer a terceiros. Imagine se cada vez que você quisesse adicionar um host em sua zona DNS você tivesse que contatar o registro.br ou seu provedor. Embora muitas corporações ainda façam isso, talvez por desconhecerem o manuseio correto do DNS, sempre há atrasos e longas esperas para alterações tão simples. Aguardar 2 dias (sem receber emails) uma mudança de MX porque seu servidor atual deu problemas e você precisa colocar outro (emergencial) para receber os emails temporariamente porque o fulano do provedor ainda não concluiu seu chamado não é uma situação confortável para nenhum administrador de rede.

Por enquanto vamos imaginar os servidores DNS como uma grande rede de serviços que colaboram entre si. Quando um servidor não possui uma informação solicitada, ele consulta outro	e assim sucessivamente até que a informação seja encontrada. Isso forma uma hierarquia ou sequência de consultas. 

No ambiente real da Internet, os primeiros servidores a serem consultados são os Root Servers. Eles contêm a zona DNS do “.” da Internet, que diz pra onde vão todas as consultas DNS das zonas “filhas” do “.”. Para delegarmos um subdomínio, basta colocarmos uma linha NS com o nome desejado. Por exemplo, para delegarmos toda a sub-árvore sp.empresa.com.br para o respectivo DNS da filial em São Paulo, colocaríamos na zona empresa.com.br:

```
 sp    IN  NS ns1-sp.empresa.com.br.
```

Os Root Servers contém uma zona chamada “.” que diz mais ou menos o seguinte a respeito das outras zonas:

```bash
$ dig –t ns br .
(...)
;; ANSWER SECTION:
br.			66970	IN	NS	d.dns.br.
br.			66970	IN	NS	a.dns.br.
br.			66970	IN	NS	f.dns.br.
br.			66970	IN	NS	b.dns.br.
br.			66970	IN	NS	c.dns.br.
br.			66970	IN	NS	e.dns.br.

;; ADDITIONAL SECTION:
a.dns.br.		67082	IN	A	200.219.148.10
b.dns.br.		66970	IN	A	200.189.41.10
c.dns.br.		66970	IN	A	200.192.233.10
d.dns.br.		66970	IN	A	200.219.154.10
e.dns.br.		66970	IN	A	200.229.248.10
f.dns.br.		169092	IN	A	200.219.159.10
a.dns.br.		64790	IN	AAAA	2001:12f8:6::10
b.dns.br.		66970	IN	AAAA	2001:12f8:8::10
c.dns.br.		66970	IN	AAAA	2001:12f8:a::10
d.dns.br.		66970	IN	AAAA	2001:12f8:4::10
e.dns.br.		66970	IN	AAAA	2001:12f8:2::10
f.dns.br.		66970	IN	AAAA	2001:12f8:c::10

  (...)
```

Esses servidores também contém informações sobre como chegar até os referidos DNS indicados.

```bash
$ dig a.dns.br @c.root-servers
(...)

;; AUTHORITY SECTION:
br.			172800	IN	NS	e.dns.br.
br.			172800	IN	NS	c.dns.br.
br.			172800	IN	NS	b.dns.br.
br.			172800	IN	NS	a.dns.br.
br.			172800	IN	NS	d.dns.br.
br.			172800	IN	NS	f.dns.br.

;; ADDITIONAL SECTION:
a.dns.br.		172800	IN	A	200.219.148.10
f.dns.br.		172800	IN	A	200.219.159.10
e.dns.br.		172800	IN	A	200.229.248.10
d.dns.br.		172800	IN	A	200.219.154.10
c.dns.br.		172800	IN	A	200.192.233.10
b.dns.br.		172800	IN	A	200.189.41.10
a.dns.br.		172800	IN	AAAA	2001:12f8:6::10
f.dns.br.		172800	IN	AAAA	2001:12f8:c::10
e.dns.br.		172800	IN	AAAA	2001:12f8:2::10
d.dns.br.		172800	IN	AAAA	2001:12f8:4::10
c.dns.br.		172800	IN	AAAA	2001:12f8:a::10
b.dns.br.		172800	IN	AAAA	2001:12f8:8::10
(...)
```

Esses registros, que não fazem parte da zona que estamos consultando diretamente, são chamados de Glue Records, ou registros de “cola”. Eles fazem com que a informação e o caminho de pesquisa fiquem coesos no DNS. Imagine que eles não tivessem essa informação. Como descobriríamos quem é o a.dns.br?


## Curiosidades

Veja a história dos domínios: [https://www.historyofdomains.com/tld/](https://www.historyofdomains.com/tld/)

[Voltar](/redes2.html)