---
title: "Projeto - Serviço DNS"
keywords: dns
last_updated: 21 de março de 2023 
tags: [dns projeto]
sidebar: home_sidebar
permalink: /projeto_dns.html
---
[Voltar](/projeto.html)

## Preparação

Dentro do seu diretório de trabalho deverá existir um diretório que irá armazenar os arquivos de configuração que você criará a seguir. Aqui consideramos que esse diretório se chama `dns`.

### Criando arquivos de configuração iniciais
1. Comece criando o arquivo de configuração `named.conf.options`
2. Configure esse aquivo para utilizar os servidores DNS do google como forwarders. Obs: na defesa do seu trabalho você deverá explicar qual a função desse arquivo e quais configurações você adicionou. Veja o exemplo:
```
options {
    directory "/var/cache/bind";

    recursion yes;
    listen-on { any; };

    forwarders {
            8.8.8.8;
            4.4.4.4;
    };
};
```

1. Depois, você deve definir a `zona` chamada `angelita.corp` (o nosso domínio) no arquivo de zonas (`named.conf.local`). Pesquise qual é a forma correta de realizar essa configuração. Exemplo:
```
zone "[nome_da_zona]" {
    type master;
    file "/etc/bind/zones/nome_arquivo_configuracao";
};
```
1. Crie um arquivo com o nome que você informou no arquivo de zonas e adicione a configuração correta. Exemplo:

```
$TTL    [tempo_ttl] ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     ns1.domain. root.domain. (
                  serial_number      ; Serial
                  refres_time     ; Refresh
                  retry_time     ; Retry
                  expire_time     ; Expire
                  negative_ttl_time )   ; Negative Cache TTL

; name servers - NS records
     IN      NS      ns1.domain.

; name servers - A records
ns1.domain.             IN      A      IPADDR

service1.domain.        IN      A      IPADDR
service2                IN      A      IPADDR
```

A configuração do exemplo considera apenas o servidor de nomes (`NS`) e endereços IPv4. Você deverá incluir pelo menos um servidor de email, endereços IPv6 e entradas canônicas.

Na defesa do projeto você deverá ser capaz de explicar o que é cada linha de configuração e como ela funciona ou para que serve. Configurações adicionais, como PTR e dns reverso melhoram a sua nota.

### Criando um Dockerfile

Crie um arquivo chamado `Dockerfile` com a seguinte configuração:

```dockerfile
FROM internetsystemsconsortium/bind9:9.19

RUN apt update \
  && apt install -y \
  bind9-doc \
  dnsutils \
  geoip-bin \
  mariadb-server \
  net-tools

# Copy configuration files
COPY dns/named.conf.options /etc/bind/
COPY dns/named.conf.local /etc/bind/
COPY dns/db.angelita.corp /etc/bind/zones/

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp

# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
```
Esse arquivo irá orientar a construção do contêiner e irá copiar os arquivos de configuração para os diretórios corretos.

5. Agora você deve construir a imagem que será utilizada pelo contêiner. Para isso, use o seguinte comando:
```bash
$ docker build -t dns-projetoredes .
```
Esse comando cria um contêiner chamado `dns-projetoredes` utilizando como base o arquivo `Dockerfile` contido no diretório corrente.
6. O próximo passo é iniciar o contêiner. Vamos mapear o diretório local para que seja acessível dentro do contêiner. Isso facilita a configuração e permite que você mantenha as cópias dos arquivos que você alterar. Execute o seguinte comando para criar o contêiner e colocá-lo em execução:
```bash
$ docker run -d --rm --name=dns-master --net=projetoredes --ip=172.29.0.2 -v ${PWD}:/home dns-projetoredes
```

Fique atento para os parâmetros passados para o docker:
- `--name`: nome do contêiner que estamos criando
- `--net`: nome da rede utilizada pelo contêiner
- `--ip`: endereço IP do contêiner (ajuste para o IP que você está utilizando no seu projeto)
- `-v`: diretório que estamos mapeando. O que está antes dos `:` é o diretório dentro do hospedeiro (no nosso caso é  `${PWD}` - o diretorio local) e o que está após os `:` é o diretório dentro do contêiner, no nosso caso o `/home`.
- o último parâmetro é o nome da imagem que construiu no passo anterior.

Os arquivos que você criar no diretório local estão acessíveis dentro do contêiner, então você pode alterar as configurações externamente.

1. Para acessar o contêiner, execute o seguinte comando:
```bash
$ docker exec -it dns-master /bin/bash
```
1. Para acessar o diretório `/home` use o comando `cd /home`. 


Os arquivos de configuração do DNS estão no diretório `/etc/bind`.

## Configuração DNS do ISP
1. Configure o seu DNS para responder pelo domínio `angelita.corp`. Configure corretamente a `zona` e a(s) entrada(s) `ns`.
2. Adicione um endereço para ser utilizado pela página web `www.angelita.corp` que usaremos na próxima aula.
3. Adicione entradas para outros serviços acessíveis externamente.
4. Utilize os comandos `named-checkconf` e `named-checkzone nome_do_dominio arquivo_de_configuracao` para verificar se as configurações que você criou estão corretas.


<!-- ## Configuração DNS dos clientes
1. Crie configurações de DNS para dois clientes fictícios de sua escolha.
2. O cliente um deverá possuir uma entrada para uma `página web`, para o `samba` e `servidor1`.
3. O cliente dois deverá possuir entradas para uma `página web`, `intranet` e `fpt`. -->


---

[Voltar](/projeto.html)