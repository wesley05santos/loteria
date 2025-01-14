# Automação Web para Mega da Virada

Esta automação teve por finalidade, facilitar o lançamento dos números no bolão da mega sena da virada no fim do ano.

Fizemos o tão famoso bolão de empresa da mega da virada, porém arrecadamos um valor interessante e isto gerou uma questão.

Quem iria fazer todos estes jogos? Afinal tinha dado em torno de 250 jogos.

Pensando em agilizar isto, criei esta automação feita em Robot Framework, para fazer os lançamentos dos jogos.

Saímos de um processo que demoraria muito tempo, para algo que em torno de 3 minutos, tivemos 250 jogos lançados, no site oficial das loterias.

Com isso resolvemos um problema real, da vida real, usando automação.

Da forma como a automação foi construída, ela fica escalável para utilizar quantos jogos necessários.

Basta criar uma lista na função "Select numbers" e depois inserir a nova lista de números na lista "@{LIST_NUMBERS}".

Após o termino de todo o preenchimento, o site ficará aberto apenas aguardando login e finalização do pagamento.
