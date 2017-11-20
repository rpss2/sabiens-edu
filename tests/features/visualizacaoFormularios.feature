Feature: Visualização de formulários (Gabriel)
	As a aluno cadastrado
	I want to visualizar os formulários disponíveis
	So that possa exercitar sobre o assunto.

Scenario: Escolhendo formulário de uma lista
Given estou na página “formulários associados ao sistema digestório”
And vejo a lista de formulários associados ao sistema digestório
And vejo o formulário “X” na lista de formulários associados ao sistema digestório
When seleciono o formulário “X” da lista de formulários associados ao sistema digestório
Then vejo o conteúdo do formulário “X”

Scenario: Escolhendo lista de formulários de outro sistema
Given estou na página “formulários associados ao sistema digestório”
And vejo a lista de formulários associados ao sistema digestório
And vejo a lista de sistemas com formulários disponíveis
And vejo que a lista de sistemas com formulários disponíveis tem o sistema digestório
And vejo que a lista de sistemas com formulários disponíveis tem o sistema respiratório
When seleciono o sistema respiratório da lista de sistemas com formulários disponíveis
Then vejo a página “formulários associados ao sistema respiratório”

Scenario: Parando de visualizar formulário
Given estou visualizando o conteúdo do formulário “X” do sistema digestório
When escolho deixar de visualizar o conteúdo do formulário “X”
Then vejo a página “formulários associados ao sistema digestório”
