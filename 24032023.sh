# Basics of Vim
# esc - sai do modo de inserção e entra no modo de comando (escape)
# i - entra no modo de inserção (insert)
# :q! - sai sem salvar (quit)
# :w - salva (write)
# :wq! - salva e sai (write quit)
# 
# ---
# 
history # mostra o histórico de comandos digitados no terminal (history 10 - mostra os últimos 10 comandos)
# 
# uptime # mostra o tempo que o sistema está ligado e a carga média do sistema 
# 
# load average: 0,00, 0,00, 0,00 - carga média do sistema nos últimos 1, 5 e 15 minutos
# 
# awk # comando para manipular arquivos de texto (ex: awk '{print $1}') - imprime a primeira coluna do arquivo, colunas são separadas por espaço 
# sed 's/x/y/g' - substitui x por y em todo o arquivo (substituir)
# 
# s - substituir
# x - o que
# y - pelo o que
# g - global (todos)
# 
# =$() - atribui o resultado do comando a uma variável 
# 
# ---
uptime | awk '{print $9}' # imprime a nona coluna do resultado do comando uptime (carga atual do sistema)
# retorna 0,00, -- queremos "limpar" o resultado para ficar sem as vírgulas
uptime | awk '{print $9}' | sed 's/,//g' # substitui a vírgula por nada globalmente (retorno: 000)
CARGA=$(uptime | awk '{print $9}' | sed 's/,//g') # atribui o resultado do comando a uma variável
echo $CARGA # imprime o valor da variável
[ $CARGA -gt 80 ] && echo "Carga muito alta. PROBLEMA" || echo "Carga normal" # verifica se a carga é maior que 80 e imprime uma mensagem de acordo com o resultado