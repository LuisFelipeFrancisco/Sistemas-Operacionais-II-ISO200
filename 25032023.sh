# Prática do editor "vim"
# Instruções
# Atividade de fixação para edição de texto em linha de comando
# Crie um arquivo "nomes.csv" (comando touch) e depois o edite (comando vim nomes.csv) de forma a adicionar a seguinte estrutura:
# nome completo,idade,cidade,estado
# Um arquivo csv separa os valores por vírgulas. Ele será útil daqui a algumas aulas quando iremos processar linhas e colunas em lotes.
# Adicione no arquivo pelo menos 10 nomes. Exemplo de como ficariam as primeiras linhas considerando que a primeira não é conteúdo, mas apenas o título das colunas:
# nome completo,idade,cidade,estado
# Thiago Jose Lucas,32,Ourinhos,SP
# Fulano de Tal,18,Curitiba,PR
# Ciclano de Tal,22,Belo Horizonte,MG
# (continuar para que o arquivo tenha 10 nomes)
# Obs.: não se esqueça que para salvar no vim você deve usar a tecla <ESC> e digitar :wq!

touch nomes.csv #para criar o arquivo
vim nomes.csv #para editar o arquivo
i #para entrar no modo de inserção
#nome completo,idade,cidade,estado
#Thiago Jose Lucas,32,Ourinhos,SP
#Fulano de Tal,18,Curitiba,PR
#Ciclano de Tal,22,Belo Horizonte,MG
#Luis Felipe,29,Santa Cruz do Rio Pardo,SP
#Maria da Silva,25,São Paulo,SP
#Jose Antonio,30,Salvador,BA
#Mariana de Souza,28,Porto Alegre,RS
#Pablo Henrique,27,Brasilia,DF
#Joao Pedro,26,Recife,PE
#Ana Carolina,25,Manaus,AM
<esc>:wq! #para sair do modo de inserção e salvar o arquivo
cat nomes.csv #para visualizar o arquivo
