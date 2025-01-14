Funcionalidade: Seleção de produtos

  Cenário: Validação das seleções de (<cor>, <tamanho> e <quantidade>).
    Dado que o usuário acessa a página de seleção de produtos
    Quando o usuário tenta finalizar a compra sem selecionar cor, tamanho e quantidade
    Então o sistema deve exibir uma mensagem de erro indicando que as seleções são obrigatórias

  Cenário: Limite de produtos por venda
    Dado que o usuário selecionou 10 produtos
    Quando o usuário tenta adicionar mais um produto ao carrinho
    Então o sistema deve exibir uma mensagem de erro indicando que o limite de 10 produtos foi atingido

  Esquema de Cenário: Limpar seleções
    Dado que o usuário selecionou a "<cor>" "<tamanho>" e "<quantidade>"
    Quando clica no botão "limpar"
    Então as opções devem voltar ao estado original

    Exemplos:
    | cor        | tamanho   | quantidade |
    | vermelho   | M         | 1          |
    | azul       | G         | 5          |
    | verde      | P         | 10         |
    | amarelo    | M         | 0          |  # Espera-se que falhe
    | laranja    | XG        | 3          |

    
