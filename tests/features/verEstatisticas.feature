Feature:  As a Administrador
  I want to ver estatisticas agrupadas individualmente, por turma ou por escolas dos formulários respondidos
  So that eu possa segmentar a avaliação do desempenho dos alunos

Scenario: Visualizar estatísticas sobre o desempenho de uma turma em um questionário, quando nenhum aluno daquela turma respondeu
  Given Eu estou na pagina de visualizacao de estatisticas para turmas
  Given Nenhum aluno da turma "Terceirao" que pertence a escola "CAp" respondeu o formulario sobre "Sistema Nervoso"
  When Eu tentar ver estatisticas sobre a turma "Terceirao"
  Then Eu vejo uma mensagem de erro
  Then Continuo na mesma pagina

Scenario: Ver estatisticas sobre o desempenho de uma escola para um questionario ainda não cadastrado
  Given Eu estou na pagina de visualizacao de estatisticas para escolas
  Given Eu quero gerar estatisticas sobre a escola "CAp"
  Given Nenhum questionario sobre "Sistema Cardiovascular" foi cadastrado
  When Eu tentar ver estatisticas sobre a escola "CAp"
  Then Eu vejo uma mensagem de erro
  Then Continuo na mesma pagina