*** Settings ***

Documentation    teste api / GET

Resource    ../resources/Get.resource

*** Test Cases ***
TC01 - Realizar busca de todos os usuarios
    Listar todos os usuarios    2

TC02 - Realizar busca de um usuário por id
    Listar único usuário    2

