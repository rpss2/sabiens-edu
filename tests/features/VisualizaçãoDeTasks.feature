Feature: Um monitor pode visualizar as tasks atribuídas a ele, com seus respectivos deadlines, e informar ao administrador que as concluiu.
  As a Monitor
	I want to ver e gerenciar as tasks a mim atribuídas
	So that eu possa melhor organizar minhas tarefas, e comunicar suas conclusões mais rapidamente ao Administrador.

Scenario: Monitor declara que terminou uma task .
	Given  Estou logado como a monitora “Julyanne Correia”.
  And Estou na página “Minhas Tasks”
	And Existe a Task “Finalizar questionário sobre a Hipófise” atribuída a mim.
	When Eu declaro que completei a task “Finalizar questionário sobre a Hipófise”
	Then A task “Finalizar questionário sobre a Hipófise” some da lista de tasks pendentes.
	And O Administrador que criou a task é notificado de sua conclusão.