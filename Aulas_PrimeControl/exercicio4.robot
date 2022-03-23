*** Test Cases ***

Teste email
  ${EMAIL}  Criar email  matheus  silva  25
  Log to console  ${email}

*** Keywords ***
Criar email
  [Arguments]  ${NOME}  ${SOBRENOME}  ${IDADE} 
  ${MAIL}  Set Variable  ${NOME}_${SOBRENOME}_${IDADE}@robot.com
  [Return]  ${MAIL}