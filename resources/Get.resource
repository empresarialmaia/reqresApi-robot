*** Settings ***

Library    RequestsLibrary

*** Variables ***
${HOST}    https://reqres.in/
#Rotas
${GET_LIST_USERS}    api/users?page  
${GET_SINGLE_USER}   api/users

*** Keywords ***
Listar todos os usuarios
    [Arguments]    ${pag}
    &{headers}  Create Dictionary  Content-type=application/json
    ${response}    GET    url=${HOST}${GET_LIST_USERS}=${pag}    headers=&{headers}
    Status Should Be    200    ${response}   
    

Listar único usuário 
...    [Arguments]    ${id} 
    &{headers}    Create Dictionary    content-type=application/json     

    ${response}   GET    url=${HOST}${GET_SINGLE_USER}/${id}    headers=&{headers}
    Status Should Be    200    ${response}   
    

       
    
    
    