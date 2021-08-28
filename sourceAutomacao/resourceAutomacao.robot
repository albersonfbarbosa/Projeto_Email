*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${URL1}       https://www.hotmail.com
${BROWSER}    chrome
${EMAIL}      alberson_slim@hotmail.com
${SENHA}      @lb3rs0n


*** Keywords ***
SeleniumLibrary.Get
    Text
#### Setup e Teardown
Abrir navegador
    Open BROWSER                     about:blank                   ${BROWSER}

Fechar navegador
    Close BROWSER


#### Execução dos testes
########################### Caso de Teste: Acessar conta de Email

Acessar site de email
    Go to                            ${URL1}
Realizar login
    Click Link                       Entrar
Inserir email
    Wait Until Element Is Visible    //input[@name="loginfmt"]
    Input Text                       //input[@name="loginfmt"]     ${EMAIL}
    Click Element                    //input[@id="idSIButton9"]

Inserir senha
    Wait Until Element Is Visible    //input[@name="passwd"]
    Input Text                       //input[@name="passwd"]       $
    Click Element                    //input[@id="idSIButton9"]


