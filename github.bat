@echo off
cls
echo ================================
echo CONFIGURAR GIT PARA O ALUNO
echo ================================
echo.

:: Solicita nome e email do aluno
set /p nome=Digite seu nome no GitHub: 
set /p email=Digite seu email do GitHub: 

:: Solicita caminho da chave SSH
set /p sshkey=Caminho da chave SSH privada (ex: C:\Users\%USERNAME%\.ssh\id_rsa): 

:: Aplica a configuracao ao repositório atual (sem usar --global)
git config user.name "%nome%"
git config user.email "%email%"

:: Define a chave SSH
echo Configurando chave SSH...
set GIT_SSH_COMMAND=ssh -i "%sshkey%"

:: Testa a conexão com o GitHub via SSH
echo.
echo Testando conexao com GitHub via SSH...
ssh -T git@github.com

echo.
echo ================================
echo CONFIGURAÇÃO FINALIZADA
echo Conta configurada:
git config user.name
git config user.email
echo ================================
pause

