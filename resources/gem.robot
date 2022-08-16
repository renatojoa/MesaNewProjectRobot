***Settings***
Library     AppiumLibrary
Library     String
Library     Process
Library     DateTime
Resource        ../resources/base.robot

***Variables***
${LBL_UNVALIABLE_TITLE}               id=com.eihror.mesatestigor:id/alertTitle
${LBL_UNVALIABLE_MESSAGE}             id=android:id/message
${BTN_UNVALIABLE_OK}                  id=android:id/button1
${LBL_ERROR_TITLE}                    id=android:id/alertTitle
${APP_FILES}                            accessibility_id=Files
${LBL_DOWNFILES}                        id=android:id/title


***Keywords***
Dado que sou direcionado a tela de indisponibilidade 
    Wait Until Element Is Visible                ${LBL_UNVALIABLE_TITLE}      

E valido dados de indisponibilidade 
    Element Text Should Be                       ${LBL_UNVALIABLE_TITLE}            Atenção!
    Element Text Should Be                       ${LBL_UNVALIABLE_MESSAGE}          Função indisponível no momento    

E valido dados de erro 
    Element Text Should Be                       ${LBL_ERROR_TITLE}                 Um erro aconteceu
    Element Text Should Be                       ${LBL_UNVALIABLE_MESSAGE}          Invalid credentials                                          

Então aceito informativo do alert
    Click Element                               ${BTN_UNVALIABLE_OK}                      


IsVisibleBySwipe
    [Arguments]    ${locator}=.
    ${check_element}=  Run Keyword and Return Status    Page Should Contain Element     ${locator}       10s
    Run Keyword If      '${check_element}' == 'False'       Swipe By Percent                            0      50      0      0      800        
    Run Keyword If      '${check_element}' == 'False'       IsVisibleBySwipe            ${locator}

OpenApplicationsOnDevice
    Sleep                           4 
    Press Keycode      187
    Sleep                           2
    Swipe    533    1677    607    503      300
    Sleep                           2
    Swipe    533    1677    607    503      300

OpenDownloadFiles
    Wait Until Element Is Visible               ${APP_FILES}
    Click Element                               ${APP_FILES}
    Wait Until Element Is Visible               ${LBL_DOWNFILES}


CheckFileinFiles
    [Arguments]    ${MEUANOSSS}=.
    ${text}=    Get Text                        ${LBL_DOWNFILES}
    Should Contain    ${text}                   nomedoarquivo.pdf

CheckImageinFiles
    ${text}=    Get Text                        ${LBL_DOWNFILES}
    Should Contain    ${text}                   nomedoarquivo.png

CheckContentInFile
    Click Element                               ${LBL_DOWNFILES}
    Wait Until Page Contains                    nomedoarquivo 

TypeOnKeyboard
    [Arguments]    ${number}=.
    Run Keyword If   ${number}=="HOME"     Press Keycode      82
    Is Keyboard Shown
    Run Keyword If   ${number}==0     Press Keycode       7
    Run Keyword If   ${number}==1     Press Keycode       8
    Run Keyword If   ${number}==2     Press Keycode       9
    Run Keyword If   ${number}==3     Press Keycode       10
    Run Keyword If   ${number}==4     Press Keycode       11
    Run Keyword If   ${number}==5     Press Keycode       12
    Run Keyword If   ${number}==6     Press Keycode       13
    Run Keyword If   ${number}==7     Press Keycode       14
    Run Keyword If   ${number}==8     Press Keycode       15
    Run Keyword If   ${number}==9     Press Keycode       16
    

TypeOnKeyboardByString
    [Arguments]    ${myString}=.
    @{myStringArray}=    Split String To Characters     ${myString}
    FOR    ${myChar}    IN    @{myStringArray}         
        TypeOnKeyboard                  ${myChar}
    END

GetStringCount
    [Arguments]         ${myText}=.
    @{myString}=        Split String To Characters              ${myText}       
    ${count}=           Get length                              @{myString}
    [return]            ${count}

ReturnMonth
    [Arguments]         ${Month}=.
    ${Month} =	        Remove String	        ${Month}	        0
    Return From Keyword If      ${Month}==1        janeiro
    Return From Keyword If      ${Month}==2        fevereiro
    Return From Keyword If      ${Month}==3        março
    Return From Keyword If      ${Month}==4        abril
    Return From Keyword If      ${Month}==5        maio
    Return From Keyword If      ${Month}==6        junho
    Return From Keyword If      ${Month}==7        julho
    Return From Keyword If      ${Month}==8        agosto
    Return From Keyword If      ${Month}==9        setembro
    Return From Keyword If      ${Month}==10       outubro
    Return From Keyword If      ${Month}==11       novembro
    Return From Keyword If      ${Month}==12       dezembro

ReturnDayFormat
    ${date1}=          Get Current Date  result_format=%d
    ${date2}=          Get Current Date  result_format=%m
    ${mmmm}=           ReturnMonth         ${date2}
    ${date3}=          Get Current Date  result_format=%Y
    [return]           ${date1} de ${mmmm}         