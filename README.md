# Projeto de Automação de Testes de API com Robot Framework - API Reqres

Este projeto foi desenvolvido para automatizar testes de uma API utilizando o **Robot Framework** com a **Requests Library**. O objetivo é validar as funcionalidades da API por meio de testes automatizados, garantindo que os endpoints retornem os dados e comportamentos esperados durante o desenvolvimento.

## Objetivo

Automatizar os testes de funcionalidade da API no serviço da [Reqres](https://reqres.in/), garantindo que os endpoints da API se comportem conforme o esperado, validando os códigos de status, os corpos das respostas e outros parâmetros relevantes.

## Requisitos

**Python** (versão 3.12.5 ou superior): [Instalar Python] https://www.python.org/downloads/

- **Robot Framework:**  

        pip install robotframework

        pip install robotframework-requests

## Clonar o repositório:

**git clone https://github.com/empresarialmaia/reqresApi-robot.git**

## Executar os testes:
Use o comando abaixo para executar os testes:
 
        robot tests

Use o comando abaixo para executar um teste especifico: 

        robot tests/nome_do_teste.robot