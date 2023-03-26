echo Hello World
echo FATEC >  faculdades.txt # escreve no arquivo faculdades.txt o conteúdo FATEC
# > -- redireciona o conteúdo do arquivo, sobrescrevendo o conteúdo anterior (overwrite)
# cat -- mostra o conteúdo do arquivo
# >> -- redireciona o conteúdo do arquivo, adicionando o conteúdo ao final do arquivo (append)

echo FATEC > faculdades.txt
echo UNESP >> faculdades.txt
echo ESTACIO >> faculdades.txt
echo UNIFIO >> faculdades.txt
echo UNIP >> faculdades.txt
cat faculdades.txt

grep # mostra as linhas que contém o conteúdo informado (grep = global regular expression print)
grep A faculdades.txt # mostra as linhas que contém a letra A
grep funciona com expressões regulares
grep ^F faculdades.txt # mostra as linhas que começam com a letra F~
grep O$ faculdades.txt # mostra as linhas que terminam com a letra O

# && -- executa o comando seguinte somente se o comando anterior for executado com sucesso
# || -- executa o comando seguinte somente se o comando anterior não for executado com sucesso
# ; -- executa os dois comandos, independente do sucesso ou falha do primeiro comando

# Variaves de Retorno (exit status)
# /dev/null -- dev/null é um dispositivo de entrada/saída que descarta qualquer informação que é enviada para ele

# $? -- mostra o valor da variável de retorno do último comando executado 0 = sucesso
[ $? -eq 0 ] && echo Sucesso || echo Falha # mostra a mensagem de sucesso ou falha, dependendo do valor da variável de retorno do último comando executado
