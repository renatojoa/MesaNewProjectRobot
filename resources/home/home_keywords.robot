***Settings***
Resource        ../../resources/base.robot

***Variables***
${IMG_HOME_LOGO}                      id=com.eihror.mesatestigor:id/image_view_logo
${LBL_HOME_NEWS}                      id=com.eihror.mesatestigor:id/text_view_news
${BTN_HOME_FACEBOOK}                  id=com.eihror.mesatestigor:id/button_facebook
${BTN_HOME_EMAIL}                     Entrar com e-mail
${BTN_HOME_CREATEACCOUNT}             id=com.eihror.mesatestigor:id/text_view_sign_up


***Keywords***
Dado que estou na tela principal               
    Element Should Be Visible                   ${IMG_HOME_LOGO} 

Quando clicar em Entrar com e-mail
    Click Text                                  ${BTN_HOME_EMAIL}                                                       

Quando clicar em Entrar com Facebook
    Click Element                               ${BTN_HOME_FACEBOOK}                      

Quando clicar em criar uma conta
    Click Element                               ${BTN_HOME_CREATEACCOUNT}                      


