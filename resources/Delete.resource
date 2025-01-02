*** Settings ***

Library    RequestsLibrary

*** Variables ***
${HOST}    https://reqres.in/
#Rotas

${DELETE_SINGLE_USER}   api/users

*** Keywords ***
Deletar usuário 
...    [Arguments]    ${id} 
    &{headers}    Create Dictionary    content-type=application/json     

    ${response}   DELETE    url=${HOST}${DELETE_SINGLE_USER}/${id}    headers=&{headers}
    Status Should Be    204    ${response} 