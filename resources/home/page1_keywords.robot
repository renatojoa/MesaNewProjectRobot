***Settings***
Resource        ../../resources/base.robot

***Variables***
${BTN_HOME_LOGO}                      id=id do elemento
${LBL_HOME_NEWS}                      xpath=xpath do elemento
${TXT_HOME_FACEBOOK}                  class=classe do elemento
${CMG_HOME_EMAIL}                     texto da tela
${IMG_HOME_CREATEACCOUNT}             id=imagem da tela


***Keywords***
Dado vou fazer alguma coisa
    #Keyword abaixo valida se o elemento da tela está visivel               
    Element Should Be Visible                   ${BTN_HOME_LOGO} 

Quando faço o que que fiz acima e printo no console ok
    Dado vou fazer alguma coisa
    Log To Console                                ok                                                      

