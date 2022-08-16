***Settings***
Resource        ../../resources/base.robot

***Variables***
${BTN_LOGINMAIL_TITLE}                id=com.eihror.mesatestigor:id/text_view_toolbar_title
${LBL_LOGINMAIL_EMAIL}                E-mail
${LBL_LOGINMAIL_PASSWORD}             Senha
${TXT_LOGINMAIL_EMAIL}                xpath=//android.view.ViewGroup[1]/*/android.widget.EditText
${TXT_LOGINMAIL_PASSWORD}             xpath=//android.view.ViewGroup[2]/*/android.widget.EditText
${BTN_LOGINMAIL_LOGIN}                id=com.eihror.mesatestigor:id/button_login


***Keywords***
Então estou na tela de Entrar com email
    Wait Until Element Is Visible                    ${BTN_LOGINMAIL_TITLE}

E valido que os campos a serem preenchidos estão disponiveis
    Element Should Be Visible                       ${TXT_LOGINMAIL_EMAIL} 
    Element Should Be Visible                       ${TXT_LOGINMAIL_PASSWORD}  

E valido que o botão de login está desativado
    Element Should Be Disabled                       ${BTN_LOGINMAIL_LOGIN}

Quando preencho todos os campos validos
    Input Text                                      ${TXT_LOGINMAIL_EMAIL}              igor.melo@mesainc.com.br
    Input Text                                      ${TXT_LOGINMAIL_PASSWORD}           qwerqwer

Quando preencho os campos invalidos
    Input Text                                      ${TXT_LOGINMAIL_EMAIL}              renatojoa@gmail.com
    Input Text                                      ${TXT_LOGINMAIL_PASSWORD}           oipopopo

Então realizo o login
    Element Should Be Enabled                       ${BTN_LOGINMAIL_LOGIN}
    Click Element                                   ${BTN_LOGINMAIL_LOGIN}
    Sleep                                           8

