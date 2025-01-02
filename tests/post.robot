*** Settings ***
Documentation    teste api / POST
Resource         ../resources/Post.resource

*** Test Cases ***
TC01 - Criar usuarios
    Criar novo Usuário    morpheus    leader 

TC02 - Efetuar login com sucesso
    Login com sucesso    eve.holt@reqres.in    cityslicka   
