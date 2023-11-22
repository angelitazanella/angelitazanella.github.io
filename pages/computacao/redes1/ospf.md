---
title: "Roteamento OSPF"
keywords: redes1
last_updated: 22 de novembro de 2023 
tags: [redes1]
sidebar: home_sidebar
permalink: pratica_roteamento_ospf.html
summary: Prática sobre roteamento OSPF
---

**Atividade de Ensino: Protocolo OSPF (Open Shortest Path First) no Cisco Packet Tracer**

**Objetivo:**
Introduzir e demonstrar os conceitos e a configuração prática do OSPF (Open Shortest Path First) em uma rede simulada usando o Cisco Packet Tracer.

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

**3. Ativação do OSPF:**
   - Ative o OSPF nas interfaces relevantes dos roteadores.
   - Exemplo para Roteador 1:
     ```
     R1(config)# router ospf 1
     R1(config-router)# network 192.168.1.0 0.0.0.255 area 0
     ```

**4. Verificação:**
   - Utilize comandos como `show ip ospf neighbor` e `show ip route ospf` nos roteadores para visualizar informações de vizinhança e tabelas de roteamento OSPF.
   - Teste a conectividade entre hosts em diferentes sub-redes.

**5. Adicional (Opcional):**
   - Introduza alterações na topologia, como adição ou remoção de enlaces, e observe como o OSPF se adapta automaticamente.

**6. Discussão:**
   - Conduza uma discussão sobre os princípios do OSPF, como áreas, adjacências, e o algoritmo SPF (Shortest Path First).
   - Compare o OSPF com outros protocolos de roteamento.

**Conclusão:**
   - Recapitule os principais conceitos do OSPF e destaque suas vantagens em relação a outros protocolos.
   - Incentive os alunos a explorar configurações adicionais do OSPF no Packet Tracer.

Essa atividade prática permitirá que os alunos ganhem experiência prática na configuração e compreensão do OSPF em um ambiente simulado. Se tiver mais alguma coisa em mente ou precisar de esclarecimentos adicionais, estou à disposição!