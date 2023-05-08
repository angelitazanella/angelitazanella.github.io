---
title: "Programação socket"
keywords: redes2 socket
last_updated: 06 de maio de 2023
tags: [redes2 projeto]
sidebar: home_sidebar
permalink: /socket_example.html
---
[Voltar](/redes2.html)

Código para o servidor:
```c
// Programa C/C++ do lado do servidor para demonstrar a programação de sockets
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#define PORT 8080
int main(int argc, char const* argv[])
{
	int server_fd, new_socket, valread;
	struct sockaddr_in address;
	int opt = 1;
	int addrlen = sizeof(address);
	char buffer[1024] = { 0 };
	char* hello = "Conectado ao servidor";

	// Criação de descritor de arquivo de socket
	if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
		perror("ERRO: A criação do socket falhou");
		exit(EXIT_FAILURE);
	}else{
        printf("SUCESSO: Socket criado com sucesso\n");
    }

	
	if (setsockopt(server_fd, SOL_SOCKET,
				SO_REUSEADDR | SO_REUSEPORT, &opt,
				sizeof(opt))) {
		perror("ERRO: setsockopt falhou");
		exit(EXIT_FAILURE);
	}else{
        printf("SUCESSO: setsockopt realizado com sucesso\n");
    }

	address.sin_family = AF_INET; // endereço do tipo IPV4
	address.sin_addr.s_addr = INADDR_ANY; //Endereço do tipo IP
	address.sin_port = htons(PORT); // porta de conexão

	// Anexa o socket à porta 8080
	if (bind(server_fd, (struct sockaddr*)&address,
			sizeof(address))
		< 0) {
		perror("ERRO: bind falhou");
		exit(EXIT_FAILURE);
	}else{
        printf("SUCESSO: bind realizado com sucesso");
    }

    // Coloca o servidor em modo passivo (aguardando conexões)
	if (listen(server_fd, 3) < 0) {
		perror("ERRO: listen fakhou");
		exit(EXIT_FAILURE);
	}else{
        printf("SUCESSO: listen realizado com sucesso\n");
    }

    //Aceita a conexão que está sendo solicitada pelo cliente
	if ((new_socket
		= accept(server_fd, (struct sockaddr*)&address,
				(socklen_t*)&addrlen))
		< 0) {
		perror("ERRO: accept falhou");
		exit(EXIT_FAILURE);
	}else{
		char* client_ip = inet_ntoa(address.sin_addr);
        printf("SUCESSO: nova conexão estabelecida com o cliente %s\n", client_ip);
    }
    
	valread = read(new_socket, buffer, 1024);
	printf("\nCLIENTE: %s\n", buffer);
	send(new_socket, hello, strlen(hello), 0);
	printf("\nSERVIDOR: Enviando mensagem: Mensagem Hello enviada\n");

	// Fechando a conexão com o socket
	close(new_socket);
	// Finalização do socket
	shutdown(server_fd, SHUT_RDWR);
	return 0;
}
```

Código para o cliente:
```c 
// Programa C/C++ do lado do cliente para demonstrar a programação de sockets
#include <arpa/inet.h>
#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#define PORT 8080

int main(int argc, char const* argv[])
{
	int status, valread, client_fd;
	struct sockaddr_in serv_addr;
	char* hello = "Conectado ao cliente";
	char buffer[1024] = { 0 };
	if ((client_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
		printf("ERRO: criação do socket falhou \n");
		return -1;
	}else{
		printf("SUCESSO: socket criado com sucesso\n");
	}

	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(PORT);

	// Converte endereços IPv4 e IPv6 de texto para formato binário
	if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr)
		<= 0) {
		printf(
			"\nERRO: Endereço inválido/não suportado \n");
		return -1;
	}

	if ((status
		= connect(client_fd, (struct sockaddr*)&serv_addr,
				sizeof(serv_addr)))
		< 0) {
		printf("\nERRO: Falha ao estabelece conexão\n");
		return -1;
	}else{
		printf("SUCESSO: conexão estabelecida com o servidor\n\n");	
	}
	send(client_fd, hello, strlen(hello), 0);
	printf("CLIENTE: Mensagem hello enviada para o servidor\n");
	valread = read(client_fd, buffer, 1024);
	printf("SERVIDOR: %s\n", buffer);

	// Finaliza o socket
	close(client_fd);
	return 0;
}
```

Compilando:
```bash
$ gcc client.c -o client
$ gcc server.c -o server
```