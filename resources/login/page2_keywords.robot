***Settings***
Resource        ../../resources/base.robot

***Variables***
${BTN_LOGIN_LOGO2}                      id=id do elemento2
${LBL_LOGIN_NEWS2}                      xpath=xpath do elemento2
${TXT_LOGIN_FACEBOOK2}                  class=classe do elemento2
${CMG_LOGIN_EMAIL2}                     texto da tela2
${IMG_LOGIN_CREATEACCOUNT2}             id=imagem da tela2


***Keywords***
Dado vou fazer alguma coisa2
    #Keyword abaixo valida se o elemento da tela está visivel               
    Element Should Be Visible                   ${BTN_HOME_LOGO2} 

Quando faço o que que fiz acima e printo no console ok novamente
    Dado vou fazer alguma coisa2
    Log To Console                                ok                                                      

