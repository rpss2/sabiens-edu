Feature: Manipulação de conteúdos 
	As an Administrador da aplicação
	I want to manipular os conteúdos em cada tópico que correspondem aos sistemas do corpo humano.
	So that eu possa disponibilizar o conteúdo na aplicação.



Scenario: Inserindo conteúdo, que previamente não foi inserido, sem êxito.

Given A administradora “Fátima” está na página “Sistema Respiratorio”
And não existe um conteúdo com o título “Resumo rápido do Sistema Respiratorio”
When “Fátima” preencher o Título com “Conteúdo do Sistema Neurológico”
And preencher a “Introdução” com “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut” 
And preencher a “Órgãos e explicações” com “Nome do órgão - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut” 
And Ela inserir
Then uma mensagem de erro será exibida, pelo fato de ela não preencher o campo de “Conclusão e comentários”

Scenario: Inserindo conteúdo que já foi inserido anteriormente

Given A administradora “Fátima” está na página “Sistema Respiratorio”
And existe um conteúdo com o título “Resumo rápido do Sistema Respiratorio”
When Ela tentar inserir um conteúdo com o título “Resumo rápido do Sistema Respiratorio”
Then O conteúdo não é armazenado duas vezes.
