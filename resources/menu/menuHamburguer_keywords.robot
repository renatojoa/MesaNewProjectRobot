***Settings***

Resource        ../../resources/base.robot

***Variables***
${BTN_CLOSE}                            accessibility_id=button.Fechar
${LBL_OLA}                              xpath=//android.widget.TextView[contains(@text, 'Olá')]
${LBL_AJUDA}                            Precisa de ajuda?
${LBL_CONFIRA}                          accessibility_id=Confira as dúvidas mais frequentes e saiba como entrar em contato conosco.
${BTN_AJUDA}                            class=android.widget.Button
${BTN_CART}                             accessibility_id=button.Meus pedidos, vouchers e cupons
${BTN_MY_CARDS}                         accessibility_id=Meus cartões                   #xpath=//android.widget.Button[@content-desc="Meus cartões"]
${BTN_CONHE}                            accessibility_id=Conheça a Dotz
${BTN_BENEF}                            accessibility_id=button.Benefícios
${BTN_CONFIG}                           accessibility_id=button.Configurar conta digital
${BTN_SENHA}                            accessibility_id=button.Trocar senha do App
${BTN_AVALIE}                           accessibility_id=button.Avalie a Dotz
${BTN_INFORME}                          accessibility_id=button.Informe de rendimentos
${BTN_EXIT}                             accessibility_id=Sair do App
${BTN_VOLTAR}                           xpath=//android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView

***Keywords***
##############Código sem refatoração##############
Entao o usuario visualiza a tela do menu
    Wait Until Page Contains                ${LBL_AJUDA}

Quando ele clica no botão de fechar menu
    Click Element                            ${BTN_CLOSE}
    
Quando ele clica no botão de quero ajuda
    Click Element                            ${BTN_AJUDA}
    
Quando ele clica no botão de cartões
    Click Element                            ${BTN_CART}

Quando clico em meus cartões
    Wait Until Element Is Visible           ${BTN_MY_CARDS}
    Click Element                           ${BTN_MY_CARDS}

Quando ele clica no botão de conheça dotz
    Click Element                            ${BTN_CONHE}

Quando ele clica no botão de beneficios
    Click Element                            ${BTN_BENEF}

Quando ele clica no botão de configurações da conta
    Click Element                            ${BTN_CONFIG}

Quando ele clica no botão de alterar senha
    Click Element                            ${BTN_SENHA}

Quando ele clica no botão de informe de rendimentos
    ${check_element}=  Run Keyword and Return Status    Page Should Contain Element    ${BTN_INFORME}    10s
    Run Keyword If      '${check_element}' == 'False'       Swipe By Percent                            0      60      0      0      500
    Click Element                            ${BTN_INFORME}
    
Quando ele clica no botão de avaliar o app
    Click Element                            ${BTN_AVALIE}

Quando ele clica no botão de logout
    Click Text                              ${BTN_EXIT}

Quando ele clica no botão de voltar
    Wait Until Element Is Visible           ${BTN_VOLTAR}    
    Click Text                              ${BTN_VOLTAR}
    Sleep                                   4

Entao valido dados na tela de menu               
    Page Should Contain Element              ${BTN_CLOSE}
    Page Should Contain Text                 ${LBL_AJUDA}               Precisa de ajuda?
    Page Should Contain Text                 ${LBL_CONFIRA}             Confira as dúvidas mais frequentes e saiba como entrar em contato conosco.
    Page Should Contain Element              ${BTN_AJUDA} 
    Page Should Contain Element              ${BTN_CART}              
    Page Should Contain Element              ${BTN_CONHE}
    IsVisibleBySwipe                         ${BTN_BENEF}
    Page Should Contain Element              ${BTN_BENEF} 
    Page Should Contain Element              ${BTN_CONFIG}   
    Page Should Contain Element              ${BTN_SENHA}
    #Page Should Contain Element              ${BTN_INFORME} 
    Page Should Contain Element              ${BTN_AVALIE} 
    Page Should Contain Text                 ${BTN_EXIT}  