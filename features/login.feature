#language:pt

Funcionalidade: Login
    Para que eu possa acessar o sistema e eventualmente realizar uma compra
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

@logout
Cenario: Usuário deve ser autorizado

        Dado que eu acesso a página principal
        Quando eu faço login com "viniciusavanci13@gmail.com" e "1234mais"
        Então devo ser autorizado com sucesso
        E devo ver a mensagem de "MY ACCOUNT"

    Cenario: Senha errada

        Dado que eu acesso a página principal
        Quando eu faço login com "viniciusavanci13@gmail.com" e "1234menos"
        Então devo ver a mensagem de "Authentication failed."

    Cenario: Usuário não existe

        Dado que eu acesso a página principal
        Quando eu faço login com "vinicius@gmail.com" e "1234menos"
        Então devo ver a mensagem de "Authentication failed."

    Cenario: Email incorreto

        Dado que eu acesso a página principal
        Quando eu faço login com "viniciusavancigmail.com" e "1234menos"
        Então devo ver a mensagem de "Invalid email address"

    

    