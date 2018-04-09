# Show me the code
 
### # DESAFIO:
 
1. Em uma tela terá um formulário dinâmico com alguns campos predefinidos, conforme o arquivo JSON disponível no link (https://floating-mountain-50292.herokuapp.com/cells.json) que deverá ser consumido. Este formulário terá de ser desenhado e exibir uma tela de sucesso quando as informações preenchidas estiverem corretas.
 
2. Na segunda tela terá o detalhe de um ativo financeiro. As informações devem ser consumidas através do link (https://floating-mountain-50292.herokuapp.com/fund.json).
  
O visual do aplicativo está em anexo no arquivo teste.pdf e em um arquivo do sketch (30 dias grátis, caso não tenha a licença).
 
![Image](https://floating-mountain-50292.herokuapp.com/telas.png)
 
### # Avaliação
Você será avaliado pela usabilidade, por respeitar o design e pela arquitetura do app. É esperado que você consiga explicar as decisões que tomou durante o desenvolvimento através de commits.
 
- Swift 3.0 ou superior
 
- Autolayout
 
- O app deve funcionar no iOS 9
 
- Testes unitários (De preferência XCTest). Mas pode usar o que você tem mais experiência, só nos explique o que ele tem de bom.
 
- Arquitetura a ser utilizada: Swift Clean (https://clean-swift.com/handbook/ https://github.com/Clean-Swift/CleanStore).
 
- Uso do git.
 
# Dicas para o layout
- O formulário deve respeitar o conteúdo do cells.json (https://floating-mountain-50292.herokuapp.com/cells.json) .
 
- Se o texto estiver muito grande, quebre em linhas e exiba por completo.
 
- O sketch está na proporção do iPhone 6, para iPhones menores/maiores é indicado que os espaçamentos se adaptem proporcionalmente.
 
- Na tela Fundos, o botão baixar irá abrir um SafariViewController no google.com.
 
# Como interpretar o cells.json:
 
```Swift
Enum Type {
    case field = 1,
    case text = 2,
    case image = 3,
    case checkbox = 4,
    case send = 5
}
```
 
```Swift
Enum TypeField {
    case text = 1,
    case telNumber = 2,
    case email = 3
}
```
 
`“type”:` tipo da célula;
 
`“message":` mensagem que vai aparecer na label para type = text ou placeholder para field;
 
`“typeField":` tipo do field a ser exibido, para exibir corretamente a validação daquele campo.
 
`“hidden":` indica se o campo está visível;
 
`“topSpacing":` espaçamento entre o topo da célula e o topo da label/field/ checkbox, imagem; Vide exemplo no arquivo "topSpacing checkbox = 112.png"
 
`“show":` indica o campo que será exibido quando este campo for selecionado. No caso é o id do campo a ser exibido.
 
`“type":` “send” esse botão irá validar todas informações que foram preenchidas e ir para a tela de sucesso quando tudo tiver ok;
 
`“risk":` pode ser um int de 1 a 5
 
O tipo `“text”` a validação é digitou alguma coisa, já ficou válido.
Para “telNumber" o campo deve ser formatado `(##) ####-#### || (##) #####-####` e validado de acordo.
Para “email" o email deve ser válido.
 
# Observações gerais
 
Adicione um arquivo README.md com os procedimentos para executar o projeto.
Pedimos que trabalhe sozinho e não divulgue o resultado na internet.
 
O resultado deverá ser enviado para um fork deste repositório no GitHub do candidato.

# BOA SORTE!