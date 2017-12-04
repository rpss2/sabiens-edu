Feature:  As a Administrador
  I want to ver estatisticas agrupadas individualmente, por turma ou por escolas dos formulários respondidos
  So that eu possa segmentar a avaliação do desempenho dos alunos



  Scenario: Ver estatísticas sobre o desempenho de um aluno em um questionário

    Given Eu estou na pagina de visualizacao de estatisticas para alunos
    Given O aluno "Ramom Pereira" respondeu o formulario sobre "Sistema Nervoso"
    Given Ele acertou a questao "1" marcando "A"
    Given Ele errou a questao "2" marcando "C"
    When Eu tentar ver estatisticas sobre o aluno "Ramom Pereira"
    Then Eu vejo que ele acertou "50%" das questoes