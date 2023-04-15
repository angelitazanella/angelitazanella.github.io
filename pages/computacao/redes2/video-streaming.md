---
title: "Video Streaming"
keywords: video streaming
last_updated: 15 de abril de 2023 
tags: [streaming]
sidebar: home_sidebar
permalink: /video-streaming.html
---
[Voltar](/redes2.html)

## Introdução

O streaming de vídeo é uma tecnologia que permite aos usuários assistir a vídeos em tempo real pela Internet, sem precisar baixar todo o arquivo de vídeo antes de reproduzi-lo. Em vez disso, o vídeo é entregue em segmentos pequenos e contínuos, que são transmitidos e exibidos conforme são recebidos pelo dispositivo do usuário. O vídeo a seguir dá uma visão 

<iframe width="560" height="315" src="https://www.youtube.com/embed/QI7h-uen9U8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Essa tecnologia tornou-se popular nos últimos anos, com o aumento da capacidade da rede e do número de usuários que possuem acesso à Internet de alta velocidade. Os serviços de streaming de vídeo mais conhecidos incluem Netflix, YouTube, Amazon Prime Video, entre outros.

Para garantir a qualidade da experiência do usuário, é importante que a infraestrutura de rede seja capaz de lidar com a quantidade de tráfego de vídeo gerada pelo streaming. Além disso, a qualidade do vídeo transmitido também depende de uma série de fatores, como a largura de banda disponível, a resolução do vídeo, a taxa de quadros e a compressão do vídeo.

## Funcionamento

O funcionamento do vídeo streaming é um processo complexo que envolve várias etapas, desde a captura do vídeo até a sua transmissão e reprodução no dispositivo do usuário. Aqui está uma visão geral das etapas envolvidas no processo de streaming de vídeo:
- Captura do Vídeo: a captura do vídeo é a primeira etapa do processo de streaming de vídeo. O vídeo é gravado por meio de uma câmera ou gerado por um software de computador.
- Codificação do Vídeo: em seguida, o vídeo é codificado usando um codec de vídeo, que é responsável por comprimir o vídeo para que ele possa ser transmitido pela Internet. O codec mais comum usado para streaming de vídeo é o H.264, que é capaz de fornecer alta qualidade de vídeo com tamanhos de arquivo menores.
- Segmentação do Vídeo: o vídeo codificado é segmentado em pedaços menores, geralmente com duração entre 2 a 10 segundos. Esses segmentos são numerados sequencialmente e são transmitidos um após o outro.
- Armazenamento em Cache: antes da transmissão, os segmentos do vídeo são armazenados em cache em servidores de distribuição de conteúdo, que são posicionados geograficamente próximos aos usuários para reduzir o tempo de latência e melhorar a qualidade do serviço.
- Transmissão do Vídeo: quando o usuário inicia a reprodução do vídeo, o dispositivo solicita o primeiro segmento do vídeo para o servidor de distribuição de conteúdo. O servidor responde enviando o segmento solicitado ao dispositivo do usuário.
- Decodificação de vídeo: o vídeo é decodificado no dispositivo do usuário usando um codec de vídeo, geralmente compatível com o codec usado para codificar o vídeo original.
- Reprodução do Vídeo: à medida que o vídeo é transmitido, o dispositivo do usuário o reproduz em tempo real, exibindo os segmentos à medida que são recebidos e decodificados.
- Ajuste de Qualidade do Vídeo: a qualidade do vídeo pode ser ajustada dinamicamente com base na largura de banda disponível no dispositivo do usuário. Se a largura de banda for baixa, a qualidade do vídeo será reduzida para evitar interrupções e pausas na reprodução.

Essas etapas são repetidas continuamente enquanto o usuário assiste ao vídeo. O processo de streaming de vídeo é complexo e envolve várias tecnologias, incluindo codecs de vídeo, servidores de distribuição de conteúdo e algoritmos de controle de qualidade de serviço para garantir a melhor experiência do usuário possível.

### Captura de vídeo

A etapa de captura de vídeo é uma das primeiras etapas do processo de entrega de conteúdo em um serviço de streaming de vídeo. Essa etapa envolve a gravação do conteúdo de vídeo original usando uma câmera ou outra fonte de vídeo.

A qualidade do vídeo capturado é extremamente importante, pois determinará a qualidade da experiência de visualização do usuário final. É por isso que muitos serviços de streaming de vídeo investem em equipamentos de alta qualidade para a captura de vídeo, bem como em técnicas de iluminação e posicionamento de câmera para garantir que o conteúdo seja gravado da melhor maneira possível.

Além da qualidade do vídeo, a etapa de captura de vídeo também pode envolver a captura de áudio, legendas e outros metadados associados ao vídeo. Esses dados adicionais ajudam a fornecer uma experiência de visualização mais rica e personalizada para o usuário final.

Dependendo do tipo de conteúdo sendo entregue, a etapa de captura de vídeo pode ser bastante complexa. Por exemplo, em transmissões ao vivo, a captura de vídeo envolve a transmissão do sinal de vídeo em tempo real para o serviço de streaming, que então o codifica e o segmenta para transmissão aos usuários finais. Em conteúdo pré-gravado, o vídeo é geralmente editado e processado antes de ser enviado para a etapa de codificação de vídeo.

Em resumo, a etapa de captura de vídeo é crítica para garantir que o conteúdo entregue por um serviço de streaming de vídeo seja de alta qualidade e ofereça uma experiência de visualização envolvente e satisfatória para o usuário final.

### Codificação do Vídeo
A codificação de vídeo é a etapa seguinte ao processo de captura de vídeo em um serviço de streaming de vídeo. Essa etapa envolve a transformação do vídeo capturado em um formato digital comprimido, que é mais fácil de ser transmitido pela internet.

O processo de codificação de vídeo utiliza codecs (Codificador-decodificador) de vídeo, que são algoritmos de software ou hardware que comprimem o tamanho do vídeo, reduzindo a quantidade de dados necessários para transmitir o vídeo pela internet. Um codec é usado para comprimir o vídeo em um formato que possa ser transmitido pela internet com menos perda de qualidade.

Existem vários codecs de vídeo disponíveis, como H.264, H.265, VP9, AV1, entre outros. Cada codec tem suas próprias vantagens e desvantagens, como a qualidade de imagem, o tamanho do arquivo, a largura de banda necessária, a compatibilidade do dispositivo e a eficiência da codificação.

Após a codificação, o vídeo é então dividido em pequenos segmentos para torná-lo mais fácil de ser transmitido pela internet e para permitir uma melhor adaptação às diferentes condições da rede. O tamanho do segmento pode variar, mas é comum que cada segmento tenha uma duração de 2 a 10 segundos.

O objetivo final da codificação de vídeo é obter um equilíbrio entre a qualidade de imagem, a eficiência da codificação e o tamanho do arquivo. Isso permitirá que o serviço de streaming entregue o vídeo de forma rápida e eficiente, ao mesmo tempo em que fornece uma experiência de visualização de alta qualidade e com poucas interrupções para o usuário final.

### Segmentação do Vídeo
Nessa etapa, o vídeo é dividido em segmentos menores para permitir a transmissão contínua do conteúdo. Os segmentos são geralmente de curta duração, variando de 2 a 10 segundos, e são criados a partir do fluxo de vídeo original. A segmentação pode ser feita no lado do servidor, por meio de software especializado, ou no lado do cliente, por meio de um reprodutor de mídia.

A segmentação do vídeo é importante por vários motivos. Em primeiro lugar, ela permite que o conteúdo seja transmitido de forma mais eficiente pela rede, já que os segmentos menores podem ser transmitidos separadamente e em paralelo, sem a necessidade de transmitir o vídeo inteiro de uma só vez. Isso também significa que o tempo de buffering é reduzido e o vídeo pode começar a ser reproduzido mais rapidamente.

Além disso, a segmentação permite que os servidores de streaming controlem a qualidade do vídeo que é enviado para o cliente. Se a conexão do cliente não for rápida o suficiente para transmitir o vídeo em alta qualidade, o servidor pode enviar uma versão com qualidade mais baixa.

Por fim, a segmentação também é importante para permitir que o usuário pule ou avance rapidamente para uma parte específica do vídeo sem precisar carregar todo o conteúdo desde o início.

### Armazenamento em Cache
A etapa de armazenamento em cache é uma das etapas mais importantes no processo de entrega de conteúdo de vídeo por streaming, pois permite reduzir a latência e melhorar a qualidade do serviço.

Quando um usuário solicita um vídeo para visualização, o servidor de streaming precisa enviar o conteúdo do vídeo pela Internet até o dispositivo do usuário. Dependendo da localização do usuário e do servidor, a latência pode ser significativa e pode afetar a qualidade do serviço. Para reduzir a latência e melhorar a qualidade do serviço, é comum que os provedores de streaming usem armazenamento em cache.

O armazenamento em cache funciona da seguinte maneira: o conteúdo do vídeo é armazenado temporariamente em um servidor intermediário localizado próximo ao usuário. Dessa forma, quando o usuário solicita o vídeo, ele é transmitido a partir do servidor intermediário em vez de ser enviado diretamente do servidor de streaming original. Isso pode reduzir significativamente a latência e melhorar a qualidade do serviço.

Os servidores de cache também podem ser usados para distribuir conteúdo em áreas com altos volumes de tráfego, como eventos ao vivo ou lançamentos de novos vídeos. Em vez de enviar o conteúdo do vídeo para cada usuário individualmente, o servidor de cache pode transmitir o vídeo para vários usuários simultaneamente, reduzindo a carga no servidor de streaming principal.

A utilização de cache pode ser feita em diferentes níveis, como em servidores de borda (edge servers) ou em dispositivos de rede especializados (como caches transparentes), dependendo da estrutura da rede de entrega de conteúdo. É importante destacar que o armazenamento em cache pode trazer diversos benefícios para o serviço de streaming, como redução de custos de banda larga, melhorias na qualidade do serviço e menor latência para o usuário final.

### Transmissão do Vídeo
Depois que o vídeo é segmentado e codificado em diferentes resoluções, é hora de transmiti-lo para o dispositivo do usuário final. A transmissão é feita através da Internet, utilizando diferentes protocolos de transporte, como o HTTP (Hypertext Transfer Protocol) e o RTMP (Real-Time Messaging Protocol). O protocolo HTTP é o mais comum para a transmissão de vídeo, pois é amplamente utilizado e suportado por navegadores e dispositivos móveis.

Durante a transmissão, o servidor envia os segmentos de vídeo para o dispositivo do usuário final em tempo real. Para garantir a qualidade do serviço, a transmissão pode ser ajustada de acordo com a largura de banda disponível no dispositivo do usuário final. Isso significa que, se a conexão de internet do usuário não suporta uma resolução de vídeo alta, o servidor pode enviar uma resolução mais baixa para garantir que o vídeo seja reproduzido sem interrupções.

A transmissão também pode ser otimizada usando diferentes técnicas, como a compactação de dados, que reduz o tamanho dos segmentos de vídeo antes de serem transmitidos pela Internet, e o uso de CDNs (Content Delivery Networks), que distribuem o conteúdo em diferentes servidores próximos à rede de distribuição, melhorando a qualidade do serviço e reduzindo a latência.

### Decodificação do vídeo

A etapa de decodificação de vídeo é responsável por transformar os segmentos de vídeo recebidos pelo dispositivo do usuário em imagens e sons que possam ser exibidos na tela ou alto-falantes do dispositivo. Para isso, é necessário decodificar os dados de vídeo que foram previamente codificados no servidor de streaming.

O processo de decodificação de vídeo envolve a utilização de um codec de vídeo que é capaz de decodificar o formato de vídeo usado pelo servidor de streaming. O codec mais comum é o H.264, que é suportado por grande parte dos dispositivos de reprodução de vídeo, mas outros codecs como o H.265 e o VP9 também são utilizados em alguns serviços de streaming.

O processo de decodificação começa com a recuperação dos segmentos de vídeo armazenados em buffer pelo dispositivo do usuário. Em seguida, os segmentos de vídeo são descompactados e descriptografados, caso necessário, e decodificados em imagens e sons que são exibidos na tela e alto-falantes do dispositivo.

Durante a decodificação, o dispositivo do usuário deve ter capacidade de processamento suficiente para suportar a resolução e a taxa de quadros do vídeo. Dispositivos com capacidade de processamento limitada podem ter dificuldades para decodificar vídeos em alta resolução ou com alta taxa de quadros, resultando em problemas de reprodução, como atrasos e engasgos.

Por isso, a etapa de decodificação é crucial para garantir uma experiência de vídeo streaming de qualidade para o usuário final. Além disso, os fabricantes de dispositivos de reprodução de vídeo estão sempre buscando melhorias em suas capacidades de processamento e suporte a diferentes codecs para oferecer uma melhor experiência de vídeo streaming para seus usuários.

### Reprodução do vídeo

A etapa de reprodução do vídeo é a última fase do processo de vídeo streaming e consiste na exibição do vídeo decodificado na tela do dispositivo do usuário.

Durante a reprodução, o dispositivo do usuário utiliza um player de vídeo para exibir o conteúdo decodificado. O player de vídeo é um software que controla a exibição do vídeo na tela do dispositivo, permitindo ao usuário controlar a reprodução, ajustar o volume, alternar entre diferentes faixas de áudio e legendas, entre outras funções.

A reprodução do vídeo pode ser afetada por diferentes fatores, como a qualidade da conexão de internet do usuário, a capacidade de processamento do dispositivo e a qualidade do vídeo fornecido pelo serviço de streaming. Se a conexão de internet do usuário for lenta ou instável, pode haver atrasos ou engasgos na reprodução do vídeo, o que pode comprometer a experiência do usuário. Além disso, se o dispositivo do usuário não tiver capacidade de processamento suficiente ou se o vídeo fornecido pelo serviço de streaming for de baixa qualidade, a reprodução do vídeo pode ficar comprometida.

Por isso, é importante que os serviços de streaming monitorem constantemente a qualidade da reprodução do vídeo e utilizem algoritmos de adaptação de bitrate para ajustar automaticamente a qualidade do vídeo fornecido ao usuário de acordo com a qualidade da conexão de internet do usuário e a capacidade de processamento do dispositivo.

Em resumo, a etapa de reprodução do vídeo é crucial para garantir que o usuário final tenha uma experiência de vídeo streaming satisfatória, sem atrasos ou interrupções, e que possa desfrutar do conteúdo de vídeo de maneira fluida e sem interrupções.

### Ajuste de qualidade do vídeo

O ajuste de qualidade do vídeo é uma etapa importante que ocorre durante a reprodução do vídeo e pode ser controlado pelo serviço de streaming. Como mencionado anteriormente, os serviços de streaming utilizam algoritmos de adaptação de bitrate para ajustar automaticamente a qualidade do vídeo fornecido ao usuário de acordo com a qualidade da conexão de internet do usuário e a capacidade de processamento do dispositivo.

Esses algoritmos de adaptação de bitrate são responsáveis por monitorar constantemente a qualidade da conexão de internet do usuário e a capacidade de processamento do dispositivo, e, com base nesses dados, escolher a melhor resolução e taxa de bits para fornecer o vídeo ao usuário. Se a conexão de internet do usuário for lenta, por exemplo, o algoritmo pode reduzir a qualidade do vídeo fornecido para evitar atrasos na reprodução do vídeo. Se a conexão de internet do usuário for rápida e o dispositivo do usuário tiver uma capacidade de processamento alta, o algoritmo pode aumentar a qualidade do vídeo fornecido para garantir a melhor experiência de visualização possível.

O ajuste de qualidade do vídeo é uma técnica essencial para garantir a entrega de vídeo de alta qualidade aos usuários, mesmo em condições de conexão de internet variáveis e em dispositivos com diferentes capacidades de processamento. Com a adoção desses algoritmos, os serviços de streaming podem oferecer aos usuários uma experiência de visualização consistente e de alta qualidade, independentemente das condições de conexão de internet e dos dispositivos utilizados para acessar o serviço.

## O Caso da Netflix

O serviço de entrega de conteúdo da Netflix é baseado em uma arquitetura cliente-servidor, com uma rede global de servidores de distribuição de conteúdo chamada Open Connect.

Quando um usuário solicita um vídeo na plataforma Netflix, o sistema verifica a localização do usuário e a disponibilidade de cópias do conteúdo nos servidores mais próximos. O sistema também avalia a capacidade de banda larga do usuário para determinar a melhor qualidade de vídeo que pode ser entregue de forma contínua.

Uma vez que o sistema seleciona o servidor mais próximo, o vídeo é transmitido para o dispositivo do usuário em tempo real. Durante a transmissão, o serviço de streaming de vídeo da Netflix monitora constantemente a qualidade da conexão e ajusta a qualidade de vídeo para garantir a melhor experiência do usuário possível.

O Netflix utiliza algoritmos de compressão de vídeo avançados, como o VP9 e o H.265, para reduzir o tamanho do arquivo e melhorar a eficiência da transmissão de conteúdo. Esses algoritmos permitem que a Netflix forneça conteúdo em diferentes resoluções, desde SD (definição padrão) até 4K Ultra HD, dependendo da capacidade de banda larga do usuário e da qualidade do dispositivo.

Além disso, a Netflix implementou técnicas de cache inteligente em seus servidores, armazenando cópias de conteúdo popular em cache para reduzir o tempo de carregamento e melhorar a velocidade de reprodução do vídeo. Esses caches são atualizados com frequência para garantir que o conteúdo mais recente esteja sempre disponível.

Em resumo, o funcionamento do serviço de entrega de conteúdo da Netflix é baseado em uma arquitetura cliente-servidor, com uma rede global de servidores de distribuição de conteúdo que armazena cópias do conteúdo em servidores espalhados geograficamente próximos aos usuários finais. O serviço utiliza algoritmos de compressão de vídeo avançados, técnicas de cache inteligente e monitora constantemente a qualidade da conexão para fornecer a melhor experiência do usuário possível.

## Atividades
Acesse as atividades aqui: [Atividades](/video-streaming-atividades.html)