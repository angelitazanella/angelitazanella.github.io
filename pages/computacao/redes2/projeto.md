---
title: "Projeto de Redes de Computadores II"
keywords: redes2 projeto
last_updated: 01 de fevereiro de 2023 
tags: [redes2 projeto]
sidebar: home_sidebar
permalink: /projeto.html
summary: Projeto da disciplina Redes de Computadores II 
---
[Voltar](/redes2.html)

### Descrição
#### Atividade 1
Criar a estrutura interna do provedor de serviços (ISP). 
Ele deverá possuir servidores, roteadores e switches. 
Sua rede interna possui os seguintes colaboradores: 
- 3 desenvolvedores
- 3 security officer
- 3 analistas de infraestrutura
- 3 analistas de serviços
- 2 suportes
- 1 secretária
- 1 CEO
- 1 CTO 
- 2 financeiros. 

Faça uma representação gráfica da empresa.

[Voltar](/redes2.html)

#### Atividade 2
Adicione ao seu projeto os equipamentos e meios físicos adequados para conectar os dispositivos finais à rede

[Voltar](/redes2.html)

#### Atividade 3
**Determinando os endereços IP das redes internas.**

O seu provedor é proprietário do range de IPs 200.100.0.0/16. 
Crie subredes, reservando 20 IPs para a sua rede interna e 10 IPs para cada cliente. 

Defina os IPs privados utilizados em cada cliente e no seu ISP. 

No ISP,  você deverá criar redes privadas distintas para os desenvolvedores, DATACENTER, administrativo (CIO, CEO e financeiros), atendimento (suporte e secretária), security officer, infraestrutura e serviços de rede.


### Parte Prática - Serviços
**Serviço DNS**

O ISP possui um servidor DNS que provê as configurações para os domínios e subdomínios do próprio ISP e dos seus clientes.
Para executar a parte prática do projeto, você deverá utilizar máquinas virtuais ou contêineres, todos trabalhando na mesma rede.
As descrições consideram que você irá trabalhar com contêineres `docker`, mas você é libre para escolher o ambiente em que irá trabalhar.

O primeiro passo é criar a rede em que você irá trabalhar.

#### Criando a rede no docker

Para criar sua rede no docker utilize o seguinte comando:

```bash
$ docker network create --subnet=172.29.0.0/24 nome_da_rede
```

O endereço o comando `--subnet=172.29.0.0/24`  informa o IP e o prefixo da rede em que você irá trabalhar. Ajuste esse endereço para trabalhar na rede que você pré-configurou no seu projeto. O `nome_da_rede` que aparece no final do comando contém o nome que você atribuiu para a rede. A partir daqui, os exemplos irão considerar que a rede se chama `projetoredes` .

Você pode verificar as informações da rede pelo seguinte comando:
```bash
$ docker inspect nome_da_rede
```

#### Criando o serviço DNS
Agora você deverá configurar o nosso servidor DNS. Comece criando um diretório onde você irá armazenar os arquivos de configuração na máquina hospedeira. Eu vou criar o diretório `dns` na minha máquina `linux`.
```bash
$ mdkir dns
```

Agora siga os passos do roteiro [Projeto - Serviço DNS](/projeto_dns.html) para criar o serviço DNS.


#### Criando o serviço web

[Projeto - Serviço web](/projeto_web.html) 

#### Atualização do DNS para inclusão de entrada MX

Para que o email da sua instituição possa trabalhar adequadamente com o email, é preciso configurar entradas MX no email.
Nosso ISP possui 3 servidores de email, utilizados de forma síncrona para balanceamento de carga. Confiure as seguintes entrdas MX:

| Registro MX        | Prioridade |
|--------------------|:------------:|
| mx.angelita.co     |     10     |
| mx2.angelita.co    |     20     |
| mx3.angelita.co    |     30     |




[Voltar](/redes2.html)
