---
title: "Laboratório DHCP"
keywords: dns
last_updated: 14 de março de 2023 
tags: [dhcp labdhcp]
sidebar: home_sidebar
permalink: /lab_dhcp.html
summary: Atividade de aula - compreendendo o funcionamento do DHCP
---
{% include code_header.html %}
[Voltar](/redes2.html)


## Preparação
1. Baixe o arquivo [wireshark](download/wireshark.sh)
2. No Linux:
- Crie o seu diretório com o comando:
```bash
$ mkdir [nome_do_diretorio]
```
- Acesse o diretório com o comando:
```bash
$ cd [nome_do_diretorio]
```
- Adicione ao arquivo permissão para execução:
```bash
$ chmod +x wireshark.sh
```
- Execute o script:
```bash
$ ./wireshark.sh
```
- Pelo browser, acesse a url: http://localhost:3000

## Procedimentos
3. Selecione sua interface de rede 
4. Filtre os pacotes `bootp`
5. No terminal, acesse o contêiner:
```bash
$ docker exec -it wireshark /bin/bash
```
6. Utilize o comando `udhcpc` para fazer as requisições dhcp
```bash
root@hostname:/# udhcpc -i [interface]
udhcpc: started, v1.35.0
udhcpc: broadcasting discover
udhcpc: broadcasting select for 172.30.1.213, server 172.30.0.1
udhcpc: lease of 172.30.1.213 obtained from 172.30.0.1, lease time 3600
mv: cannot move '/etc/resolv.conf.370' to '/etc/resolv.conf': Resource busy
```

No browser, o resultado deve ser parecido com o seguinte:
![DHCP](/images/wireshark1.png)

## Relatório
Monte um relatório descrevendo o seu experimento. Seu relatório deverá seguir o [modelo](download/ModeloRelatorio.zip).

### Documentos
[Modelo de Relatório](download/ModeloRelatorio.zip)

---

[Voltar](/redes2.html)