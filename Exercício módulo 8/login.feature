#language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que eu acesso a página de autenticação da EBAC-SHOP

  Cenário: Autenticação com sucesso
    Quando informo credenciais de acesso válidas
    Então sou direcionado para a tela de checkout

  Esquema do Cenário: Tentativa de login com dados inválidos
    Quando tento me autenticar com o <usuario> 
    E a <senha>
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:

            | usuario                   | senha          |
            | "usuario_invalido"        | "senha123"     |
            | "cliente_valido@ebac.com" | "senha_errada" |
            | "errado@ebac.com"         | "invalida99"   |
