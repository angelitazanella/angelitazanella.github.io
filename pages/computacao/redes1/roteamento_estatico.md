---
title: "Roteamento Estático"
keywords: redes1
last_updated: 22 de novembro de 2023 
tags: [redes1]
sidebar: home_sidebar
permalink: pratica_roteamento_estatico.html
summary: Prática sobre roteamento estático
---



**Atividade de Ensino: Roteamento Estático com 3 Roteadores no Cisco Packet Tracer**

**Objetivo:**
Ensinar os alunos os conceitos e procedimentos básicos de roteamento estático usando o Cisco Packet Tracer.

**Equipamentos Necessários:**
- 3 Roteadores (por exemplo, modelos Cisco 2911)
- 3 Switches (opcional, para conexão de hosts)
- Hosts (para testar a conectividade)
- Cabos de conexão

**Passo a Passo:**

**1. Configuração Inicial:**
   - Abra o Cisco Packet Tracer e adicione três roteadores ao cenário.
   - Adicione switches, se desejar, para conectar hosts para testar a conectividade.

**2. Configuração Básica:**
   - Configure as interfaces dos roteadores com IPs e ative as interfaces.
   - Exemplo para Roteador 1:
     ```
     R1(config)# interface GigabitEthernet0/0
     R1(config-if)# ip address 192.168.1.1 255.255.255.0
     R1(config-if)# no shutdown
     ```

**3. Configuração das Rotas Estáticas:**
   - Configurar rotas estáticas em cada roteador para alcançar as sub-redes conectadas aos outros roteadores.
   - Exemplo para Roteador 1:
     ```
     R1(config)# ip route 192.168.2.0 255.255.255.0 192.168.1.2
     R1(config)# ip route 192.168.3.0 255.255.255.0 192.168.1.3
     ```

**4. Verificação:**
   - Use comandos como `show ip route` nos roteadores para verificar as tabelas de roteamento.
   - Teste a conectividade entre hosts em diferentes sub-redes.

**5. Adicional (Opcional):**
   - Introduza um cenário de falha (desconectando um cabo) e observe como o roteamento estático responde.

