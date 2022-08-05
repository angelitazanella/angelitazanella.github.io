# Funções do Host

Se você quiser fazer parte de uma comunidade on-line global, seu computador, tablet ou smartphone deve primeiro estar conectado a uma rede. Essa rede deve estar conectada à Internet. Este tópico discute as partes de uma rede. Veja se você reconhece esses componentes em sua própria rede doméstica ou escolar!

Todos os computadores que estão conectados a uma rede e participam diretamente da comunicação em rede são classificados como hosts. Os hosts podem ser chamados de dispositivos finais. Alguns hosts também são chamados de clientes. No entanto, o termo hosts refere-se especificamente a dispositivos na rede que recebem um número para fins de comunicação. Este número identifica o host dentro de uma rede específica. Este número é chamado de endereço IP (Internet Protocol). Um endereço IP identifica o host e a rede à qual o host está conectado.

Servidores são computadores com software que lhes permite fornecer informações, como e-mail ou páginas da Web, para outros dispositivos finais na rede. Cada serviço exige um software de servidor separado. Por exemplo, um computador exige um software de servidor Web, para que possa prover serviços web à rede. Um computador com software de servidor pode fornecer serviços simultaneamente a muitos clientes diferentes.

Como mencionado anteriormente, os clientes são um tipo de host. Os clientes têm software para solicitar e exibir as informações obtidas do servidor, conforme mostrado na figura.

![PC cliente e um servidor conectado através de uma nuvem simbolizando a Internet](/docs/redes1/images/hosts.png)

Um exemplo de software cliente é um navegador, como Chrome ou FireFox. Um único computador pode também executar vários tipos de software cliente. Por exemplo, um usuário pode verificar o e-mail e visualizar uma página da Web enquanto troca mensagens instantâneas e ouve um fluxo de áudio. A tabela lista três tipos comuns de software de servidor.

| Tipo | Descrição |
|----------| ------------------|
| E-mail | O servidor de executa o software do servidor de e-mail. Clientes usam cliente de e-mail software, como o Microsoft Outlook, para acessar o e-mail no servidor. |
| Web	| O servidor web executa o software do servidor web. Os clientes usam software de navegador, como o Windows Internet Explorer, para acessar páginas da web no servidor. |
| Arquivo |O servidor de arquivos armazena arquivos corporativos e de usuário em um local central. Os dispositivos clientes acessam esses arquivos com software cliente, como o Explorador de arquivos do Windows. |

# Ponto a ponto

O software cliente e o servidor geralmente são executados em computadores separados, mas também é possível que um computador seja usado para ambas as funções ao mesmo tempo. Em pequenas empresas e em casas, muitos computadores funcionam como servidores e clientes na rede. Esse tipo de rede é chamado de rede ponto a ponto.

![Rede ponto-a-ponto](/docs/redes1/images/p2p.png)

As vantagens da rede peer-to-peer:

- Fácil de configurar;
- Menos complexo;
- Menor custo porque os dispositivos de rede e os servidores dedicados podem não ser necessários;
- Pode ser usada para tarefas simples como transferir arquivos e compartilhar impressoras.

As desvantagens da rede peer-to-peer:

- Nenhuma administração centralizada;
- Não é tão segura;
- Não é escalável;
- Todos os dispositivos podem atuar como clientes e servidores, podendo deixar seu desempenho lento.

# Dispositivos Finais

Os dispositivos de rede com os quais as pessoas estão mais familiarizadas são dispositivos finais. Para distinguir um dispositivo final de outro, cada dispositivo final em uma rede tem um endereço. Quando um dispositivo final inicia a comunicação, ele usa o endereço do dispositivo final de destino para especificar onde entregar a mensagem.

Um dispositivo final é a origem ou o destino de uma mensagem transmitida pela rede.

![Dispositivos finais](/docs/redes1/images/dispfinal.png)

Os dados se originam em um dispositivo final, fluem pela rede e chegam a outro dispositivo final.

# Dispositivos Intermediários

Dispositivos intermediários conectam os dispositivos finais individuais à rede. Eles podem conectar várias redes individuais para formar uma internetwork. Eles oferecem conectividade e asseguram que os dados fluam pela rede.

Esses dispositivos intermediários usam o endereço do dispositivo final de destino, em conjunto com as informações sobre as interconexões de rede, para determinar o caminho que as mensagens devem percorrer na rede. Exemplos dos dispositivos intermediários mais comuns e uma lista de funções são mostrados na figura.

![Dispositivos intermediários](/docs/redes1/images/dispinter.png)

Os dispositivos de rede intermediários executam algumas destas funções:

- Regenerar e retransmitir sinais de comunicação;
- Manter informação sobre quais caminhos existem pela rede e pela rede interconectada;
- Notificar outros dispositivos sobre erros e falhas de comunicação;
- Direcionar dados por caminhos alternativos quando houver falha em um link;
- Classificar e direcionar mensagens de acordo com as prioridades;
- Permitir ou negar o fluxo de dados, com base em configurações de segurança.

**Observação:** Não mostrado é um hub Ethernet herdado. Um hub Ethernet também é conhecido como repetidor multiporta. Os repetidores regeneram e retransmitem sinais de comunicação. Observe que todos os dispositivos intermediários executam a função de um repetidor.


# Meios físicos de conexão

A comunicação transmite através de uma rede na mídia. A mídia fornece o canal pelo qual a mensagem viaja da origem ao destino.

As redes modernas usam principalmente três tipos de mídia para interconectar dispositivos, como mostrado na figura:

- **Fios de cobre** - Os dados são codificados em impulsos elétricos.
- **Fibras de vidro ou plástico (cabo de fibra óptica)** - Os dados são codificados em pulsos de luz.
- **Transmissão sem fio** - Os dados são codificados através da modulação de frequências específicas de ondas eletromagnéticas.

Critérios a serem considerados ao escolher a mídia de rede:

- Qual é a distância máxima pela qual o meio físico consegue carregar um sinal com êxito?
- Qual é o ambiente em que a mídia será instalada?
- Qual é a quantidade de dados e a que velocidade deve ser transmitida?
- Qual é o custo do meio físico e da instalação?

Diferentes tipos de meios de rede possuem diferentes características e benefícios. Nem todos os meios de rede têm as mesmas características, nem são apropriados para a mesma finalidade.