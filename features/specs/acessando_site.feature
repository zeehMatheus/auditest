#language: pt

@acessando_site
Funcionalidade: Acessar site
@print
Cenario: print contato.
Quando acessar a url informada
E clico em contato
Então devo ser direcionado para pagina de contato.

@cadastro
Cenario: Realizar novo cadastro
Dado que é necessario realizar um novo cadastro de usuario
Quando estiver na home clicar em 'Acesse'
E clicar em 'Faça seu cadastro'
Então preencha os campos do formulario 
E clique em 'Enviar'