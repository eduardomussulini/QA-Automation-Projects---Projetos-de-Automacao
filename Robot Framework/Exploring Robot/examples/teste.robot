*** Settings ***

Documentation    Aprendendo a usar o Process Library
Library          Process

*** Test Cases ***
01 Pingar o Google.com
    Executando Prompt de Comando 



*** Keywords ***

# Abrir um Arquivo
#     ${PROCESSO}     Start Process    C:\\Users\\Dú\\AppData\\Local\\Programs\\Anki\\anki.exe
#     Sleep  10s
#     Terminate Process    ${PROCESSO}    kill=True

# Verificar sucesso na execução do Anki
#     [Arguments]        ${ANKI}

#     Run Keyword And Continue On Failure    Should Be Equal As Integers    ${ANKI.rc}    0
#     ...  msg=ANKI NAO ABRIU
#     Run Keyword If    ${ANKI.rc}!=0  Log  FALHOU!: "${ANKI.stderr}"

Executando Prompt de Comando 
    Run Process    cmd    /c    ping google.com -l 1000 -t  timeout=10