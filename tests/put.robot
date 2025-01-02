*** Settings ***
Documentation    teste api / PUT

Resource         ../resources/Put.resource

*** Test Cases ***
TC01 - Atualizar usuarios
    Atualizar os dados do usuário    2    morpheus    zion resident 