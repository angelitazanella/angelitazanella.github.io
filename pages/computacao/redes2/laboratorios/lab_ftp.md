---
title: "Laboratório FTP e SSH"
keywords: dns
last_updated: 28 de março de 2023 
tags: [ftp laboratorio]
sidebar: home_sidebar
permalink: /lab_ftp.html
---

## Pré-requisitos
- Docker instalado na máquina
- Conhecimentos básicos de linux
- Conêiner [wireshark](download/wireshark.sh) para filtragem de pacotes

## Preparação
1. Baixe o contêiner ftp para utilizar no laboratório
```bash 
$ docker pull gelirettore/ftp
```
2. Inicie o contêiner
```bash
$ docker run -d --rm -p 20-21:20-21 -p 60000-60100:60000-60100 --name ftp gelirettore/ftp:padrao
```
3. Inicie o contêiner contendo o wireshark. Para isso basta executar o wireshark.sh:
```bash
$ ./wireshark.sh
```
4. Acesse a interface do wireshark pelo browser acessando a url: `http://localhost:3000/`
5. capture os pacotes do `Loopback`. 
6. Configure o filtro de pacotes para mostrar todos os pacotes `ftp`

## Procedimentos
O Ubuntu (utilizado nos laboratórios) já possui um `cliente ftp` e um `cliente ssh` instalados. Os clientes podem ser acessados via `terminal`. Neste laboratório, vamos usar o linux, executando os comandos pelo terminal.

1. No terminal do linux, acesse o ftp. Você deve informar o usuário que possui `aluno` e a *senha* `jujuba123`. O servidor ftp está acessível pelo `localhost`.
```bash
$ ftp aluno@localhost
```
2. Observe os pacotes filtrados pelo wireshark. Quais pacotes ele capturou? O que você consegue descobrir analisando as informações do wireshark?
3. Verifique quais comandos estão disponíveis no ftp usando o comando `help`
```bash
$ help
```
4. Observe os comandos e pesquise sobre eles.
5. Teste os comandos, criando diretórios e arquivos, enviando arquivos do seu computador para o servidor ftp e puxando arquivos do ftp para o seu computador.

### SSH
1. Agora vamos testar o ssh. Baixe o contêiner `gelirettore/ssh` preparado para essa aula.
```bash 
$ docker pull gelirettore/ssh
```
2. Rode o contêiner, mapeando a porta 22 do host local para a porta 22 do contêiner. 
```bash
$ docker run --rm -d -p 22:22 --name ssh gelirettore/ssh
```
3. Altere o filtro do wireshark para filtrar os pacotes `ssh`. Acompanhe os pacotes capturados durante a execução dos próximos comandos.
3. No terminal, tente acessar o servidor. Utilize o usuário ``aluno` e a senha `jujuba123`
```bash
$ ssh aluno@localhost
```
4. Utilizando o comando acima, você obtém acesso ao `home` do usuário no servidor. Você pode criar arquivos pelo terminal, criar diretórios, excluir e renomear.
5. Vamos copiar arquivos do host local para o servidor. Abra um novo terminal
6. Crie um arquivo de texto qualquer
7. Utilize o comando `scp` para copiar os arquivos.
```bash
$ scp [nome_do_arquivo] aluno@localhost:
```
8. Verifique se o arquivo está no servidor 
9. Crie um arquivo no servidor
```bash
$ echo "bla" > [nome_do_arquivo]
```
10. Copie o arquivo do servidor para seu host.
```bash
$ scp aluno@localhost:[nome_do_arquivo] . 
```
11. O que você consegue descobrir analisando o wireshark? Qual a diferença para o ftp?