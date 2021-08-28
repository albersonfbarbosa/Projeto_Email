########################################################################################################
# QA: Alberson Ferreira Barbosa
# (92) 98116-4571
# https://www.linkedin.com/in/albersonfbarbosa/
# https://github.com/albersonfbarbosa/
########################################################################################################
*** Settings ***
Resource         ./sourceAutomacao/resourceAutomacao.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Case ***
Caso de Teste: Acessar conta de Email
    [Setup]                  Abrir navegador
    Acessar site de email
    Realizar login
    Inserir email
    Inserir senha
    [Teardown]               Fechar navegador
