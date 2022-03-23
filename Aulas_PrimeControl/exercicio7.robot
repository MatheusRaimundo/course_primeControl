*** Settings ***
Suite Setup  Avisar que comecou uma nova suite
Suite Teardown  Avisar que conclui a nova suite
Test Setup  Avisar que comecou um novo teste
Test Teardown  Avisar que concluiu a nova suite

*** Test Cases ***
Cenario 1 - Logar no console o numero do cenario
  Logar no Console  1

Cenario 2 - Logar no console o numero do cenario
  Logar no Console  2

*** Keywords ***
Logar no console 
   [Arguments]  ${NUMBER}
   Log To Console    ${NUMBER}

Avisar que comecou uma nova suite
  Log To Console    Comecou a executar suite de teste

  
Avisar que concluiu a nova suite
  Log To Console    Concluiu a execucao da suite de testes

Avisar que comecou um novo teste
  Log To Console    Comecou a executar um novo teste
  
Avisar que conclui a nova suite
  Log To Console    Concluiu a execucao a nova suite
