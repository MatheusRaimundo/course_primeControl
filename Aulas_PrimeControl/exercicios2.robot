*** Settings ***
Library     String

*** Variables ***
&{PESSOA}   nome=Matheus  sobrenome=Raimundo  idade=25  altura=1,81 mts  peso=95 kg  ocupacao=Migrando de área
@{frutas}   abacaxi  maca  laranja  pera  uva  melancia

*** Test Cases ***
Exibir os dados de uma pessoa no console
  exibir o dicionario no console

Exibir as frutas adicionadas a uma lista
  exibir cada uma das frutas

*** Keywords ***
exibir o dicionario no console
  Log To Console  Dados da pessoa:
  Log To Console  Nome: ${PESSOA.nome}
  Log To Console  Sobrenome: ${PESSOA.sobrenome}
  Log To Console  Idade: ${PESSOA.idade}
  Log To Console  Altura: ${PESSOA.altura}
  Log To Console  Peso: ${PESSOA.peso}
  Log To Console  Ocupacao: ${PESSOA.ocupacao}

exibir cada uma das frutas
  Log To Console  ${frutas[0]}  
  Log To Console  ${frutas[1]}  
  Log To Console  ${frutas[2]}  
  Log To Console  ${frutas[3]}  
  Log To Console  ${frutas[4]}  
  Log To Console  ${frutas[5]}  