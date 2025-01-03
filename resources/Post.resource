*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections


*** Variables ***
${BASE_URL}    https://reqres.in

${POST_CREATE}     /api/users
${LOGIN_SUCCESSFUL}    /api/login    

*** Keywords ***
Criar novo Usuário
    [Arguments]    ${nome}    ${jog}
    &{headers}  Create Dictionary  Content-Type=application/json
    &{body}    Create Dictionary    nome=${nome}    job=${jog}   
    ${response}    POST    url=${BASE_URL}${POST_CREATE}    json=&{body}    headers=&{headers}
    Status Should Be    201    ${response}

Login com sucesso
    [Arguments]    ${email}    ${password}
    &{headers}  Create Dictionary  Content-Type=application/json
    &{body}    Create Dictionary    email=${email}    password=${password}   
    ${response}    POST    url=${BASE_URL}${LOGIN_SUCCESSFUL}    json=&{body}    headers=&{headers}
    Status Should Be    200    ${response}

  

    
