*** Settings ***
Resource    ./libraries.robot
Resource    ./variables.robot

*** Keywords ***
Access site
    # Colocado options para que não fechasse automático o browser,
    # visto que após a adição dos jogos ao carrinho era necessário realizar login para efetivar os jogos.
    Open Browser    browser=${BROWSER}    url=${URL}    options=add_experimental_option("detach",True)
    Maximize Browser Window

Confirm more 18
    Wait Until Element Is Visible    locator=${ELEMENT_YES_MORE_18}
    Click Element                    locator=${ELEMENT_YES_MORE_18}

Select "Mega da Virada" option
    Wait Until Element Is Visible    locator=${DIV_MEGA_SENA_LOCATOR}
    Click Element                    locator=${DIV_MEGA_SENA_LOCATOR}

Select numbers
    Wait Until Element Is Visible    locator=${ELEMENT_COMPLETE_GAME_LOCATOR}
    @{LIST_1}    Create List  01  02  03  07  19  42
    @{LIST_2}    Create List  01  02  07  15  23  39
    @{LIST_3}    Create List  01  02  26  38  42  48
    @{LIST_4}    Create List  01  02  32  45  48  57
    @{LIST_5}    Create List  01  04  05  25  36  57
    @{LIST_6}    Create List  01  04  15  22  41  53
    @{LIST_7}    Create List  01  04  33  40  44  56
    @{LIST_8}    Create List  01  05  06  10  30  32
    @{LIST_9}    Create List  01  05  24  31  51  58
    @{LIST_10}   Create List  01  07  16  27  29  52
    @{LIST_11}   Create List  01  08  18  20  28  51
    @{LIST_12}   Create List  01  08  27  29  30  37
    @{LIST_13}   Create List  01  09  11  24  36  53
    @{LIST_14}   Create List  01  09  19  27  36  52
    @{LIST_15}   Create List  01  09  21  37  42  48
    @{LIST_16}   Create List  01  09  24  33  48  52
    @{LIST_17}   Create List  01  10  11  34  41  58
    @{LIST_18}   Create List  01  10  18  50  56  58
    @{LIST_19}   Create List  01  10  21  22  39  48
    @{LIST_20}   Create List  01  10  25  40  54  60
    @{LIST_21}   Create List  01  11  12  27  38  56
    @{LIST_22}   Create List  01  12  13  34  42  49
    @{LIST_23}   Create List  01  12  16  27  29  37
    @{LIST_24}   Create List  01  12  17  23  27  43
    @{LIST_25}   Create List  01  13  22  24  25  26

    @{LIST_NUMBERS}=    Create List
    ...        ${LIST_1}
    ...        ${LIST_2}
    ...        ${LIST_3}
    ...        ${LIST_4}
    ...        ${LIST_5}
    ...        ${LIST_6}
    ...        ${LIST_7}
    ...        ${LIST_8}
    ...        ${LIST_9}
    ...        ${LIST_10}
    ...        ${LIST_11}
    ...        ${LIST_12}
    ...        ${LIST_13}
    ...        ${LIST_14}
    ...        ${LIST_15}
    ...        ${LIST_16}
    ...        ${LIST_17}
    ...        ${LIST_18}
    ...        ${LIST_19}
    ...        ${LIST_20}
    ...        ${LIST_21}
    ...        ${LIST_22}
    ...        ${LIST_23}
    ...        ${LIST_24}
    ...        ${LIST_25}

    FOR  ${NUMBERS}    IN    @{LIST_NUMBERS}
        FOR  ${NUMBER}    IN    @{NUMBERS}
            Click Element    locator=id=n${NUMBER}
        END
        Add to cart
    END

Add to cart
    Click Element    locator=${ELEMENT_ADD_TO_CART_LOCATOR}
