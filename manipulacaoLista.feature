Feature: Manipulação da lista de tarefas/permissão de alteração conteúdos e formulários 
	As an Administrador da aplicação
	I want to manipular a lista de monitores com tarefas de criação de determinado conteúdo ou formulário, com descrição da tarefa e data de entrega.
	So that eu possa gerenciar quem está encarregado por tais criações e quem pode ter acesso a edições.

Scenario: Administrador adiciona um monitor a lista de monitores tarefas

Given  “Fátima” logou como administrador
And ela está na página “Inserção de Sistema do Corpo Humano”
When “Fátima” tenta adicionar o “monitor” chamado “Rômulo” para lista de tarefa de  criação do conteúdo “Resumo de Sistema Neurológico” com “data de entrega” para “12/10/2017” e com “descrição” de “finalizar ajustes”
Then “Rômulo” será adicionada na lista tarefas para ter capacidade alterar o conteúdo do tópico com data de entrega para  “12/10/2017”

Scenario: Monitora sem tarefa para um formulário tenta alterá-lo.

Given  Monitora “Joanna” logue na aplicação
And ela não faz parte da lista de pessoas com permissão/tarefas para alterar formulário “Resumo de Sistema Neurológico”
When  “Joanna” tentar editar o formulário de “Questões de Sistema Neurológico”
Then  Ela será impedida de entrar no modo de edição 
And uma mensagem deve aparecer mostrando que ela não tem permissão.

Scenario  : Monitor com permissão, não finaliza a tarefa o conteúdo no dia de entrega. GUI

Given  O servidor tem na lista de  tarefa de criação relacionada ao conteúdo de “Resumo de Sistema Neurológico” a “monitora” chamada “Joana”  com “Data de entrega” para “12/11/17”
When  A “data de entrega” for chegada
And não houver finalização da tarefa
Then Deve se registrar um atraso atrelado a “Joana” e ao conteúdo de “Resumo de Sistema Neurológico”.

Scenario  : Monitor com permissão, não finaliza a tarefa o conteúdo no dia de entrega. Controlador

Given  o sistema possui uma lista de permissão/tarefas para o “Conteúdo do Sistema Neurológico” dentro do tópico de “Sistema Neurológico”.
And essa lista está contida do “aluno” “Rômulo” e com “data de entrega” de “12/01/17” e com “descrição” de “finalizar os ajustes”.
When o sistema fizer a checagem da “data de entrega” e comparar com “data de hoje”
And a “data de hoje” ser após a “data de entrega”
Then o sistema guarda um boolean mostrando que o aluno atrasou a entrega.