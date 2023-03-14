---
title: "Autenticação"
keywords: seguranca autenticação
last_updated: 14 de março de 2023 
tags: [segurança autenticação de acesso]
sidebar: home_sidebar
permalink: autenticacao.html
summary: 
---

[Voltar](/seguranca.html)



## Introdução

Autenticação é o processo de verificação da identidade de um usuário ou sistema, ou seja, a validação de que ele é realmente quem alega ser. É uma das principais medidas de segurança utilizadas em sistemas de tecnologia da informação para controlar o acesso a informações e recursos.

A identificação é a primeira etapa, em que o usuário fornece um nome de usuário ou ID para acessar o sistema. A segunda etapa é a autenticação, em que o usuário fornece credenciais para provar que é quem diz ser. Essas credenciais podem incluir senhas, chaves de acesso, certificados digitais ou outros tipos de tokens. A última etapa é a autorização, em que o sistema verifica se o usuário autenticado tem permissão para acessar o recurso ou a informação solicitada.

Existem diversas formas de autenticação, desde as mais simples, como senhas e PINs, até as mais avançadas, como autenticação biométrica e autenticação de dois fatores. A escolha do método de autenticação adequado depende das necessidades de segurança e dos recursos disponíveis no sistema.

Além da autenticação em si, é importante considerar também a gestão de credenciais, ou seja, a forma como as informações de autenticação são armazenadas e gerenciadas pelo sistema. É fundamental adotar boas práticas de segurança para evitar que essas informações sejam comprometidas e utilizadas por usuários mal-intencionados.

### Identificação
O processo de identificação é o primeiro passo do processo de autenticação e tem como objetivo identificar quem está solicitando acesso ao sistema ou recurso. Esse processo pode ser realizado por meio de um nome de usuário, endereço de e-mail, número de identificação ou qualquer outro tipo de identificador único.

O processo de identificação pode ser feito de forma explícita ou implícita. Na identificação explícita, o usuário fornece suas credenciais diretamente ao sistema, enquanto na identificação implícita, o sistema utiliza informações coletadas do ambiente do usuário para identificá-lo, como seu endereço IP ou dispositivo utilizado para acessar o sistema.

É importante destacar que o processo de identificação não garante a autenticidade do usuário, apenas identifica quem está solicitando acesso. A autenticidade do usuário só é garantida após a validação das credenciais de acesso fornecidas durante o processo de autenticação.

### Autenticação
O segundo passo do processo de autenticação é a validação das credenciais do usuário. Essas credenciais geralmente consistem em uma combinação de nome de usuário e senha, mas também podem incluir biometria, como impressões digitais ou reconhecimento facial, ou tokens de autenticação.

A validação das credenciais geralmente é realizada por meio de um sistema de autenticação, que compara as credenciais fornecidas pelo usuário com as credenciais armazenadas no sistema. Se as credenciais correspondem, o usuário é autenticado e recebe acesso ao sistema ou recurso solicitado. Caso contrário, o acesso é negado.

Além da validação das credenciais, o processo de autenticação também pode incluir a verificação de outras informações, como a data e hora da solicitação de acesso, a localização do usuário e a validade da sessão de autenticação.

É importante ressaltar que a autenticação é uma medida de segurança crítica para garantir a proteção de sistemas e dados sensíveis. Por isso, é recomendável utilizar práticas de autenticação seguras, como o uso de senhas fortes, o armazenamento seguro de credenciais e a implementação de mecanismos de autenticação de múltiplos fatores.

### Autorização
A autorização é o terceiro passo do processo de controle de acesso, após identificação e autenticação. Após verificar a identidade do usuário e confirmar que ele é quem diz ser através da autenticação, é necessário determinar se ele possui permissão para acessar determinado recurso ou executar determinada ação.

A autorização envolve a criação de regras de acesso baseadas em políticas e permissões definidas previamente, que determinam quais usuários ou grupos de usuários podem acessar determinados recursos e executar determinadas ações. Essas políticas podem ser baseadas em papéis, níveis de privilégio, grupos ou outras condições específicas.

A autorização pode ser realizada de diversas formas, como através de listas de controle de acesso (ACLs), sistemas de gerenciamento de permissões, políticas de grupo ou frameworks de controle de acesso baseados em papéis (RBAC). O objetivo é garantir que os usuários só tenham acesso aos recursos necessários para realizar suas tarefas e que as informações e sistemas da organização estejam protegidos contra acessos não autorizados.

## Meios de Autenticação
Existem diversos meios de autenticação disponíveis e utilizados atualmente, e os mais comuns utilizam fatores de autenticação que podem ser classificados em quatro categorias:

- **Algo que o indivíduo conhece ou sabe**, como senhas, frases secretas, códigos PIN, entre outros. Esse fator é o mais comum e tradicional de todos, sendo amplamente utilizado em diversos sistemas.
- **Algo que o indivíduo possui**, como cartões de acesso, smart cards, tokens, entre outros. Esse fator utiliza um objeto físico para autenticar o usuário.
- **Algo que o indivíduo é**, como reconhecimento facial, de voz, íris, impressão digital, entre outros. Esse fator utiliza características físicas do usuário para autenticar sua identidade.
- **Algo que o indivíduo faz**, como reconhecimento de padrões de digitação, movimentos, ou gestos. Esse fator utiliza o comportamento do usuário para autenticar sua identidade.

É comum utilizar mais de um fator de autenticação em conjunto para aumentar a segurança do sistema ou recurso. Por exemplo, um sistema pode utilizar uma senha e um token para autenticar o usuário.

### Algo que o indivíduo conhece ou sabe
Esta é a forma de autenticação mais comum e amplamente utilizada em sistemas de segurança. Nesse método, o usuário fornece uma senha, frase secreta ou PIN para autenticar sua identidade. A vantagem desse método é que ele é fácil de ser usado, tanto pelo usuário quanto pelo sistema, além de ser amplamente suportado por diferentes plataformas e tecnologias. Por exemplo, senhas são usadas para acessar computadores, smartphones, e-mails e contas bancárias online.

No entanto, esse método também apresenta desvantagens. As senhas são vulneráveis a ataques de força bruta, que tentam adivinhar a senha por meio de tentativas repetidas. Além disso, muitos usuários utilizam senhas fracas, que são fáceis de serem descobertas por meio de técnicas de engenharia social ou phishing. Outra vulnerabilidade é o fato de que as senhas podem ser facilmente compartilhadas ou roubadas.

Para melhorar a segurança desse método, é recomendável utilizar senhas fortes e únicas, além de atualizá-las regularmente. A autenticação de dois fatores, que combina o uso de senha com outra forma de autenticação, como um token de segurança ou um aplicativo de autenticação no smartphone, também é uma opção mais segura.

Outra alternativa é utilizar sistemas de autenticação baseados em biometria, como reconhecimento facial, de íris ou de impressão digital, que são mais difíceis de serem falsificados. No entanto, esses sistemas podem ser caros e requerem dispositivos especiais para capturar as informações biométricas.

#### Senhas seguras
Senhas seguras são essenciais para proteger contas de usuários contra ataques cibernéticos. Algumas dicas para criar senhas seguras incluem:
- Tamanho: senhas mais longas são mais difíceis de serem adivinhadas. Recomenda-se uma senha com no mínimo 12 caracteres.
- Diversidade: utilize uma combinação de letras (maiúsculas e minúsculas), números e símbolos.
- Evite informações pessoais: não utilize informações pessoais, como datas de aniversário, nomes de familiares ou outras informações facilmente encontradas sobre você.
- Não reutilize senhas: utilize senhas diferentes para cada conta ou serviço que utilizar.
- Utilize gerenciadores de senha: utilizar um gerenciador de senha é uma maneira segura e conveniente de criar e armazenar senhas complexas para diferentes contas.

Além disso, é importante lembrar de trocar as senhas periodicamente e evitar compartilhá-las com outras pessoas.

#### Múltiplos fatores de autenticação
O 2FA (autenticação de dois fatores) e o MFA (autenticação de múltiplos fatores) são métodos de autenticação que utilizam mais de um fator para verificar a identidade do usuário. Enquanto o 2FA utiliza apenas dois fatores, o MFA utiliza três ou mais fatores.

Os fatores utilizados nesses métodos podem incluir algo que o usuário sabe (como uma senha), algo que o usuário possui (como um dispositivo móvel ou um token físico) e algo que o usuário é (como uma impressão digital ou reconhecimento facial).

Esses métodos são mais seguros do que a autenticação tradicional de senha única, pois um invasor teria que obter acesso não apenas à senha, mas também a um segundo ou terceiro fator de autenticação. Além disso, o uso de múltiplos fatores torna o processo de autenticação mais difícil de ser forjado por meio de engenharia social ou outras técnicas de phishing.

No entanto, ainda existem vulnerabilidades em potencial com esses métodos de autenticação. Por exemplo, se o dispositivo móvel de um usuário for roubado ou perdido, um invasor pode obter acesso ao segundo fator de autenticação. Além disso, se a verificação de autenticação for mal implementada, um invasor ainda pode ser capaz de contornar os controles de segurança.

No geral, o uso de 2FA e MFA é altamente recomendado para aumentar a segurança da autenticação e proteger dados sensíveis ou críticos.

### Algo que o indivíduo possui
O segundo fator de autenticação, algo que o indivíduo possui, é baseado em algo que o usuário tem em sua posse, como um token físico, smartcard ou telefone celular. Esses dispositivos são usados para gerar um código único de autenticação que é usado em conjunto com a senha do usuário para acesso seguro.

O token físico é um dispositivo pequeno e portátil que gera um código único de autenticação que muda a cada poucos segundos. Quando o usuário fornece sua senha e o código gerado pelo token, o sistema verifica se a combinação é válida e autoriza o acesso. Os smartcards funcionam de maneira semelhante, mas em vez de gerar códigos, eles armazenam informações criptografadas do usuário e são inseridos em um leitor para autenticação.

Já o uso do telefone celular é conhecido como autenticação de dois fatores baseada em aplicativo. Nesse método, um aplicativo é baixado para o telefone celular do usuário e é usado para gerar um código de autenticação que é inserido junto com a senha para acessar a conta.

As principais vantagens desses métodos são a melhoria da segurança em comparação com a autenticação baseada apenas em senha, já que é improvável que um atacante possua o token físico ou o telefone do usuário. Além disso, esses métodos são fáceis de usar e não exigem nenhum conhecimento técnico especial.

No entanto, as principais vulnerabilidades desses métodos são a possibilidade de roubo ou perda do token físico ou do telefone celular, permitindo que um invasor acesse a conta do usuário. Além disso, o token físico pode ser clonado, o que pode levar a comprometimento de segurança. Portanto, é importante proteger o token físico ou o telefone celular e notificar o provedor de serviços imediatamente em caso de perda ou roubo.

#### Recomenações para proteção de tokens físicos
- Mantenha os tokens seguros: Armazene os tokens em um local seguro, como um cofre ou gaveta trancada, para evitar o acesso não autorizado.
- Evite compartilhar: Não compartilhe o seu token com ninguém, pois isso pode comprometer a segurança do seu sistema.
- Monitore o token: Monitore regularmente o seu token para detectar qualquer sinal de comprometimento ou dano.
- Proteja as senhas: As senhas que são usadas para acessar o token devem ser fortes e protegidas. Não as compartilhe com ninguém e mude-as regularmente.
- Atualize o firmware: Certifique-se de manter o firmware do seu token atualizado para corrigir quaisquer vulnerabilidades conhecidas.
- Descarte de forma segura: Ao descartar um token, certifique-se de destruí-lo completamente para evitar que qualquer informação seja recuperada.


### Algo que o indivíduo é
O terceiro item do processo de autenticação é algo que o indivíduo é. Esse tipo de autenticação é baseado nas características físicas ou comportamentais únicas do indivíduo, como impressões digitais, reconhecimento facial, voz, retina ou íris do olho.

Esses métodos são considerados muito seguros, uma vez que são difíceis de serem forjados ou falsificados. Além disso, é menos provável que sejam perdidos ou esquecidos, como acontece com senhas ou dispositivos de autenticação.

No entanto, esses métodos de autenticação podem ser mais caros e exigem equipamentos especiais de hardware ou software. Além disso, a precisão desses métodos pode ser afetada por fatores externos, como iluminação inadequada ou lesões nas características físicas.

Esses métodos de autenticação são frequentemente utilizados em locais com alto nível de segurança, como instituições financeiras, instalações militares e governamentais, ou em sistemas de controle de acesso físico.

Os sistemas biométricos de autenticação têm sido amplamente adotados em smartphones e outros dispositivos móveis, tornando a autenticação mais fácil e segura para usuários finais. No entanto, é importante lembrar que mesmo esses métodos podem ser vulneráveis a ataques de hackers ou a falhas de segurança. Portanto, é importante implementar medidas adicionais de segurança para proteger esses sistemas.

### Algo que o indivíduo faz
O fator "algo que o indivíduo faz" refere-se a comportamentos únicos e específicos que um usuário realiza. Isso pode incluir a forma como ele digita, a maneira como move o mouse ou o padrão de voz ao falar. Esses comportamentos podem ser medidos e comparados com padrões conhecidos para autenticar a identidade do usuário.

Esse método de autenticação é chamado de autenticação comportamental ou dinâmica e é frequentemente usado em combinação com outros métodos de autenticação, como senhas ou tokens. A principal vantagem da autenticação comportamental é que ela é baseada em características únicas do indivíduo, tornando-a mais difícil de ser falsificada ou imitada.

No entanto, a autenticação comportamental também tem suas desvantagens. Por exemplo, pode ser difícil medir comportamentos com precisão suficiente para autenticar um usuário de forma confiável. Além disso, as características comportamentais também podem mudar com o tempo, como no caso de lesões físicas ou mudanças de voz, o que pode dificultar a autenticação.

A autenticação baseada em comportamento é utilizada atualmente em diversas áreas, principalmente em sistemas de detecção de fraudes e em plataformas de segurança da informação. Por exemplo, alguns bancos utilizam o comportamento do usuário para identificar possíveis fraudes em transações financeiras, analisando o padrão de comportamento do usuário em relação a suas transações anteriores. Além disso, plataformas de segurança da informação também podem utilizar a análise de comportamento para identificar possíveis ameaças, como ataques de phishing, que podem se manifestar de maneiras diferentes dos padrões de comportamento do usuário.

No geral, a autenticação comportamental ainda é um método relativamente novo e em desenvolvimento, mas tem potencial para fornecer uma camada adicional de segurança em sistemas de autenticação de múltiplos fatores.

---

[Voltar](/seguranca.html)