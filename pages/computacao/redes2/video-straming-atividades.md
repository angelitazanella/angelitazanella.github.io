---
title: "Atividades - Video Streaming"
keywords: dns
last_updated: 15 de abril de 2023 
tags: [video straming, atividade]
sidebar: home_sidebar
permalink: /video-streaming-atividades.html
---
[Voltar](/redes2.html)


**Questão 1.** Qual das seguintes etapas NÃO está envolvida no processo de entrega de vídeo por streaming?
- a) Captura de vídeo 
- b) Codificação de vídeo
- c) Segmentação de vídeo
- d) Produção de mídia física <!-- correta -->

 **Questão 2.**   Qual é a principal técnica utilizada pelos serviços de streaming para garantir a entrega de vídeo de alta qualidade aos usuários?
- a) Compressão de vídeo
- b) Armazenamento em cache
- c) Adaptação de bitrate <!-- correta -->
- d) Criptografia de dados
<!-- A adaptação de bitrate é uma técnica utilizada pelos serviços de streaming para ajustar a qualidade do vídeo com base na largura de banda disponível no dispositivo do usuário e garantir que o vídeo seja entregue sem interrupções ou buffering. Quando a conexão de internet do usuário é mais lenta, a qualidade do vídeo é reduzida para evitar interrupções e, quando a conexão é mais rápida, a qualidade do vídeo é aumentada para proporcionar uma experiência de visualização melhor. A compressão de vídeo, armazenamento em cache e criptografia de dados são técnicas importantes, mas não são a principal técnica utilizada para garantir a entrega de vídeo de alta qualidade aos usuários. -->

**Questão 3.** Qual é o principal desafio enfrentado pelos serviços de streaming na entrega de conteúdo de vídeo em tempo real?
- a) A latência da rede <!-- correta -->
- b) A disponibilidade de largura de banda suficiente
- c) A escassez de servidores de armazenamento em cache
- d) A compatibilidade de dispositivos
<!-- A latência da rede. A latência é o tempo de atraso entre a transmissão de um pacote de dados e a sua recepção, e é um dos principais desafios na entrega de conteúdo de vídeo em tempo real. Isso ocorre porque a transmissão de vídeo é sensível à latência e qualquer atraso pode resultar em interrupções ou buffering durante a reprodução do vídeo. Embora a disponibilidade de largura de banda seja importante, a latência é um fator crítico para a qualidade da experiência do usuário durante a reprodução de vídeo em tempo real. -->

**Questão 4.**  Qual é a principal diferença entre a entrega de vídeo por streaming e a reprodução de vídeo a partir de um arquivo local?
- a) A reprodução de arquivo local é mais rápida do que o streaming
- b) O streaming requer uma conexão de internet, enquanto a reprodução local não <!-- correta -->
- c) A qualidade de vídeo é melhor na reprodução local do que no streaming
- d) Não há diferença significativa entre os dois métodos de reprodução de vídeo
<!-- A principal diferença entre a entrega de vídeo por streaming e a reprodução de vídeo a partir de um arquivo local é que o streaming requer uma conexão de internet constante e estável para transmitir o conteúdo de vídeo em tempo real, enquanto a reprodução local não precisa de uma conexão à internet após o download do arquivo de vídeo. Além disso, o streaming é otimizado para adaptar o fluxo de dados de acordo com a largura de banda disponível, enquanto a reprodução local não precisa ajustar a qualidade do vídeo de acordo com a velocidade da conexão. -->

**Questão 5.** Em um sistema de entrega de vídeo por streaming, o servidor divide o vídeo em segmentos e os envia para o cliente em intervalos regulares. Considere um vídeo com uma taxa de bits de 6 Mbps e um tamanho de segmento de 2 segundos. O cliente deseja reproduzir o vídeo em uma taxa de quadros de 30 fps.
- a) Qual é o tamanho do segmento em bytes?
<!-- 6 Mbps * 2 s / 8 bits por byte = 1.5 MB -->
- b) Qual é a taxa de bits do segmento em bytes por segundo?
<!-- 1.5 MB / 2 s = 750 KB/s -->
- c) Qual é o número de quadros em cada segmento?
<!-- 30 fps * 2 s = 60 quadros-->
- d) Qual é o tamanho de cada quadro em bytes?
<!-- 1.5 MB / 60 quadros = 25 KB -->
- e) Qual é o tamanho total do segmento em bytes?
<!-- 1.5 MB -->
- f) Qual é a duração do segmento em milissegundos?
<!-- 2 s * 1000 ms/s = 2000 ms -->
- g) Qual é a taxa de transferência necessária do servidor para enviar o segmento em tempo real?
<!-- 1.5 MB / 2 s = 6 Mbps -->