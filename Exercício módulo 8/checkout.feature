#language: pt

Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero fazer e concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que eu estou na tela de checkout para preenchimento dos detalhes de faturamento

  Cenário: Cadastro concluído com sucesso
    Quando preencho todas as informações obrigatórias
    E preencho tudo corretamente
    Então o meu cadastro deve ser concluído permitindo finalizar a compra

  Esquema do Cenário: Validação de campos vazios e e-mail inválido
    Quando preencho o cadastro com <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
    Então o sistema deve validar a ação exibindo a <mensagem> de erro correspondente

    Exemplos:

      | nome   | sobrenome | pais          | endereço        | cidade    | cep        | telefone      | email            | mensagem                                       |
      | ""     | "Silva"   | "Reino Unido" | "Rua Principal" | "Londres" | "12345-67" | "11999999999" | "joao@ebac.com"  | "Favor preencher todos os campos obrigatórios" |
      | "João" | "Silva"   | "Reino Unido" | "Rua Principal" | "Londres" | "12345-67" | "11999999999" | "email_invalido" | "Formato de e-mail inválido"                  |
      | "João" | ""        | "Reino Unido" | "Rua Principal" | "Londres" | "12345-67" | "11999999999" | "joao@ebac.com"  | "Favor preencher todos os campos obrigatórios" |
      | "João" | "Silva"   | "Reino Unido" | ""              | "Londres" | "12345-67" | ""            | "joao@ebac.com"  | "Favor preencher todos os campos obrigatórios" |
