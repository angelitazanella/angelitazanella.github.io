---
title: "Roteamento RIP"
keywords: redes1
last_updated: 22 de novembro de 2023 
tags: [redes1]
sidebar: home_sidebar
permalink: pratica_roteamento_rip.html
summary: Prática sobre roteamento RIP
---


**Atividade de Ensino: Protocolo RIP (Routing Information Protocol) no Cisco Packet Tracer**

**Objetivo:**
Familiarizar os alunos com os conceitos e a configuração prática do RIP (Routing Information Protocol) em uma rede simulada usando o Cisco Packet Tracer.

**Equipamentos Necessários:**
- 3 Roteadores (por exemplo, modelos Cisco 2911)
- 3 Switches
- Hosts (para testar a conectividade)
- Cabos de conexão

**Passo a Passo:**

**1. Configuração Inicial:**
   - Abra o Cisco Packet Tracer e adicione três roteadores e três switches ao cenário.
   - Conecte os dispositivos conforme necessário.

**2. Configuração Básica:**
   - Configure as interfaces dos roteadores com IPs e ative as interfaces.
   - Exemplo para Roteador 1:
     ```
     R1(config)# interface GigabitEthernet0/0
     R1(config-if)# ip address 192.168.1.1 255.255.255.0
     R1(config-if)# no shutdown
     ```

**3. Ativação do RIP:**
   - Ative o RIP nas interfaces relevantes dos roteadores.
   - Exemplo para Roteador 1:
     ```
     R1(config)# router rip
     R1(config-router)# version 2
     R1(config-router)# network 192.168.1.0
     ```

**4. Verificação:**
   - Utilize comandos como `show ip route` nos roteadores para visualizar as tabelas de roteamento.
   - Teste a conectividade entre hosts em diferentes sub-redes.

**5. Adicional (Opcional):**
   - Introduza alterações na topologia, como adição ou remoção de enlaces, e observe como o RIP se adapta automaticamente.

**6. Discussão:**
   - Conduza uma discussão sobre os princípios do RIP, como atualizações periódicas, contagem de saltos e prevenção contra loops.
   - Compare o RIP com outros protocolos de roteamento.

**Conclusão:**
   - Recapitule os principais conceitos do RIP e destaque suas vantagens e limitações.
   - Incentive os alunos a explorar configurações adicionais do RIP no Packet Tracer.

Essa atividade prática permitirá que os alunos ganhem experiência prática na configuração e compreensão do RIP em um ambiente simulado. Se tiver mais alguma coisa em mente ou precisar de esclarecimentos adicionais, estou à disposição!