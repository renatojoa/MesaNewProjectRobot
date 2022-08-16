login
***Settings***

Resource        ../resources/base.robot

Test Setup      Start with login
Test Teardown   Close Session

***Test Cases***
Realizar teste com email
    [tags]              loginEmail       Critical

    Dado que estou na tela principal
    Quando clicar em Entrar com e-mail
    Então estou na tela de Entrar com email
    E valido que os campos a serem preenchidos estão disponiveis
    E valido que o botão de login está desativado
    Quando preencho todos os campos validos
    Então realizo o login

Realizar criação de conta indisponivel
    [tags]              unvaliable       Critical

    Dado que estou na tela principal
    Quando clicar em criar uma conta
    Dado que sou direcionado a tela de indisponibilidade 
    E valido dados de indisponibilidade 
    Então aceito informativo do alert

Realizar login invalido
    [tags]              loginMailFail       Medium

    Dado que estou na tela principal
    Quando clicar em Entrar com e-mail
    Então estou na tela de Entrar com email
    E valido que os campos a serem preenchidos estão disponiveis
    E valido que o botão de login está desativado
    Quando preencho os campos invalidos
    Então realizo o login
    E valido dados de erro 
    Então aceito informativo do alert