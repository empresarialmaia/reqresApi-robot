*** Settings ***

Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://reqres.in

${DELETE_SINGLE_USER}   /api/users

*** Keywords ***
Deletar usuário 
...    [Arguments]    ${id} 
    &{headers}    Create Dictionary    content-type=application/json     

    ${response}   DELETE    url=${BASE_URL}${DELETE_SINGLE_USER}/${id}    headers=&{headers}
    Status Should Be    204    ${response} 