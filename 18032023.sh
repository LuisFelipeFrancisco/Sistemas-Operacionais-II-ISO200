# Redirecionamento, concatenação e busca com grep
# Instruções
# Atividade de fixação referente a última aula presencial
# 
# 1 - Crie um arquivo "nomes.txt"
# 2 - Adicione 5 nomes de colegas ao arquivo
# 3 - Faça um teste lógico que exiba OK caso exista pelo menos uma linha que termine com a letra A e NOK caso não exista

touch nomes.txt # cria o arquivo nomes.txt
echo "LUIS" >> nomes.txt # escreve no arquivo nomes.txt o conteúdo LUIS
echo "FELIPE" >> nomes.txt # escreve no arquivo nomes.txt o conteúdo FELIPE
echo "MARIA" >> nomes.txt # escreve no arquivo nomes.txt o conteúdo MARIA
echo "JOSE" >> nomes.txt # escreve no arquivo nomes.txt o conteúdo JOSE
echo "JULIA" >> nomes.txt # escreve no arquivo nomes.txt o conteúdo JULIA
cat nomes.txt # mostra o conteúdo do arquivo nomes.txt
grep A$ nomes.txt >> /dev/null # procura no arquivo nomes.txt as linhas que terminam com a letra A e redireciona o resultado para o dispositivo de entrada/saída /dev/null
[ $? -eq 0 ] && echo OK || echo NOK 
# OK
grep B$ nomes.txt >> /dev/null # procura no arquivo nomes.txt as linhas que terminam com a letra B e redireciona o resultado para o dispositivo de entrada/saída /dev/null
[ $? -eq 0 ] && echo OK || echo NOK
# NOK