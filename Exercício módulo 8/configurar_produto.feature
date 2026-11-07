#language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  Escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que eu estou na página do produto "Augusta Pullover Jacket"

  Cenário: Configuração válida do produto
    Quando seleciono características válidas de tamanho, cor e quantidade
    Então o produto deve ser adicionado ao carrinho com sucesso

  Cenário: Tentativa de compra sem preencher campos obrigatórios
    Quando tento adicionar o produto ao carrinho sem configurar cor, tamanho ou quantidade
    Então o sistema deve alertar que as seleções são obrigatórias

  Cenário: Limitar quantidade de produtos por venda
    Quando seleciono uma quantidade acima de 10 unidades
    Então o sistema deve impedir a ação informando o limite máximo permitido

  Cenário: Restaurar estado original da tela
    Quando limpo as configurações do produto
    Então todas as seleções de cor, tamanho e quantidade devem retornar ao estado original
