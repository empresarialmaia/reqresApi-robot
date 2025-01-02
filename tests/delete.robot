*** Settings ***

Documentation    teste api / DELETE

Resource    ../resources/Delete.resource

*** Test Cases ***
TC01 - Deletar usuarios 
    Deletar usuário    2