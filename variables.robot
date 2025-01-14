*** Variables ***

${BROWSER}    chrome
${URL}        https://www.loteriasonline.caixa.gov.br/

${DIV_MEGA_VIRADA_LOCATOR}            (//a[@ng-if='!(jogo.modalidade.valor === 1502)'][contains(.,'Aposte Agora!')])[1]
${ELEMENT_YES_MORE_18}                id=botaosim
${ELEMENT_COMPLETE_GAME_LOCATOR}      //button[contains(.,'Complete o Jogo')]
${ELEMENT_ADD_TO_CART_LOCATOR}        id=colocarnocarrinho
