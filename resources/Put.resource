*** Settings ***
Library    RequestsLibrary
Library    String

*** Variables ***
${HOST}            https://reqres.in
${PUT_CREATE}     /api/users

*** Keywords ***
Atualizar os dados do usuário
    [Arguments]    ${id_atualizar}    ${nome}    ${jog}
    &{headers}  Create Dictionary  Content-Type=application/json
    &{body}    Create Dictionary    nome=${nome}    job=${jog}   
    ${response}    PUT    url=${HOST}${PUT_CREATE}/${id_atualizar}    json=&{body}    headers=&{headers}
    Status Should Be    200    ${response}
    
