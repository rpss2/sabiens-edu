Feature: Cadastro de usuários (Gabriel + Nunes)
As a administrador
I want to cadastrar professores, monitores e escolas
So that turmas possam ser formadas

Scenario: Cadastro de professor
Given estou logado como administrador
And o sistema não possui um usuário cadastrado com email "fatima@"
And o sistema não possui um professor cadastrado com nome “Fátima”
When forneço o email "fatima@"
And forneço o nome “Fátima”
And forneço a senha “123”
And tento cadastrar um professor
Then o sistema armazena um professor com nome “Fátima”, email "fatima@" e senha “123”

Scenario: Cadastro de monitor
Given estou logado como administrador
And o sistema não possui um usuário cadastrado com email "bernardo@"
And o sistema não possui um monitor com nome “Bernardo”
When forneço o CPF “1111111112”
And forneço o nome “Bernardo”
And forneço a senha “321”
And tento cadastrar um monitor
Then o sistema armazena um professor com nome “Bernardo”, email "bernardo@" e senha “321”

Scenario: Cadastro de escola
Given estou logado como administrador
And o sistema não possui a escola “Colégio Salesiano”
When forneço a escola “Colégio Salesiano”
And tento cadastrar uma escola
Then o sistema armazena a escola com nome “Colégio Salesiano”
