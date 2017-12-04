Feature:  As a Administrador
  I want to ver estatisticas agrupadas individualmente, por turma ou por escolas dos formulários respondidos
  So that eu possa segmentar a avaliação do desempenho dos alunos



  Scenario: Gerar estatisticas sobre o desempenho de uma escola ainda não cadastrada
    Given Eu estou na pagina de visualizacao de estatisticas para escolas
    Given A escola "IFPE" ainda nao cadastrada
    When Eu tentar ver estatisticas sobre a escola "IFPE" para o formulario "Sistema Nervoso"
    Then Eu vejo uma mensagem de erro
    Then Continuo na mesma pagina