Feature:  As a Administrador
  I want to ver estatisticas agrupadas individualmente, por turma ou por escolas dos formulários respondidos
  So that eu possa segmentar a avaliação do desempenho dos alunos

Scenario: Visualizar estatísticas sobre o desempenho de uma turma em um questionário, quando nenhum aluno daquela turma respondeu
  Given Eu estou na pagina de visualizacao de estatisticas para turmas
  Given Nenhum aluno da turma "Terceirao" que pertence a escola "CAp" respondeu o formulario sobre "Sistema Nervoso"
  When Eu tentar ver estatisticas sobre a turma "Terceirao"
  Then Eu vejo uma mensagem de erro
  Then Continuo na mesma pagina