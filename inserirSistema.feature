Feature: Inserir sistema corpo humano na aplicação 
	As an Administrador da aplicação
	I want to inserir na aplicação sistemas  que correspondem aos sistemas do corpo humano.
	So that eu possa organizar a distribuição do conteúdo de cada sistema.
	
Scenario: Inserindo sistemas que previamente não foram inseridos, GUI

Given  “Fátima” logou como administrador
And ela está na página “Inserção de Sistema do Corpo Humano”
And não existe um sistema chamado com “Título” de “Sistema Neurológico”
When “Fátima” preencher o “Titulo” com “Sistema Neurológico”
And preencher a “Breve descrição” com “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut” 
And “Fátima” fazer a inserção 
Then uma mensagem de sucesso aparecerá na tela.

Scenario: Inserindo sistemas que previamente não foram inseridos, Controlador

Given O sistema não possui um tópico com “Título” de “Sistema Neurológico”
When o sistema receber um tópico com “Título” de “Sistema Neurológico” e “Breve descrição” com “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut” 
Then o sistema guarda os dados no banco de tópicos.





	









