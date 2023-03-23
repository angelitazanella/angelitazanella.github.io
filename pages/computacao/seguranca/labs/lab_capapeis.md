---
title: "Laboratório - Controle de Acesso Baseado em Papéis"
keywords: seguranca controle_de_acesso
last_updated: 21 de março de 2023 
tags: [segurança controle_de_acesso]
sidebar: home_sidebar
permalink: lab_capapeis.html
---

## Pré-requisitos:

- Docker instalado na máquina do aluno
- Conhecimento básico de Docker e Linux

## Procedimentos

1. Crie um contêiner Docker Ubuntu executando o seguinte comando:
```bash
$ docker run -it --name selinux-ubuntu ubuntu
```
1. Instale os pacotes `selinux-utils` e `policycoreutils` no contêiner Ubuntu:
```bash
$ apt-get update
$ apt-get install -y selinux-utils policycoreutils
```
1. Verifique se o SELinux está habilitado:
```bash
$ sestatus
```
1. Se o status do SELinux for `disabled`, edite o arquivo de configuração `/etc/selinux/config` para definir a opção `SELINUX` como `enforcing`. Mude a linha `SELINUX=permissive` para `SELINUX=enforcing`.


1. Crie uma estrutura de diretórios para armazenar as definições de papéis:
```bash
$ mkdir -p /etc/rbac/roles
```
1. Crie um arquivo de definição de papel, por exemplo, `admin.yml`, com as seguintes informações:
```yaml
---
version: 1
name: admin
rules:
  - apiGroups: ["*"]
    resources: ["*"]
    verbs: ["*"]
```
Esse arquivo de definição de papel permite que o usuário com o papel de `admin` possa executar qualquer ação em qualquer recurso da API.
1. Crie um arquivo de definição de papel para um usuário com acesso restrito, por exemplo, `guest.yml`, com as seguintes informações:
```yaml
---
version: 1
name: guest
rules:
  - apiGroups: ["apps"]
    resources: ["deployments", "pods"]
    verbs: ["get", "list"]
```
1. Esse arquivo de definição de papel permite que o usuário com o papel de `guest` possa apenas visualizar informações sobre deployments e pods.
1. Crie um arquivo de definição de usuário, por exemplo, `users.yml`, com as seguintes informações:
```yaml
---
version: 1
users:
  - name: john
    roles: ["admin"]
  - name: jane
    roles: ["guest"]
```
Esse arquivo de definição de usuário atribui os papéis de `admin` para o usuário John e `guest` para o usuário Jane.
1. Carregue os arquivos de definição de papel e usuário usando o comando rbac:
```bash
$ rbac load /etc/rbac/roles/admin.yml /etc/rbac/roles/guest.yml /etc/rbac/users/users.yml
```
Isso carregará as definições de papel e usuário no sistema.
1. Teste a política de acesso criada com o usuário John:
```bash
$ su - john
$ kubectl get pods
$ kubectl get deployments
$ kubectl create deployment nginx --image=nginx
```
O usuário John poderá executar qualquer ação em qualquer recurso da API, portanto, o comando kubectl create deployment deve funcionar.
1. Teste a política de acesso criada com o usuário Jane:
```bash
$ su - jane
$ kubectl get pods
$ kubectl get deployments
$ kubectl create deployment nginx --image=nginx
```
O usuário Jane pode apenas visualizar informações sobre deployments e pods, portanto, o comando kubectl create deployment deve falhar.