#!/bin/bash

exibeStatus(){
 echo
 echo "Checagem: $1"
 echo "Status: $2"
 echo "Detalhe: $3"
 echo "Data: $4"
 echo
}

# +-------------------------------------------------------------------------------------------+
# |                    Funcao para gestao da carga pelo comando uptime                        |
# +-------------------------------------------------------------------------------------------+
checaCarga(){
 CARGA=$(uptime | awk '{print $9}' | sed 's/,//g')

 if [ $CARGA -gt 80 ] ;then
  exibeStatus "Carga" "Problema" "Carga eh de $CARGA%" "$(date +"%d/%m/%Y %H:%M")"
 else
  exibeStatus "Carga" "Ok" "Carga eh de $CARGA%" "$(date +"%d/%m/%Y %H:%M")"
 fi
}

# +-------------------------------------------------------------------------------------------+
# |               Funcao para gestao da memoria RAM pelo comando free -m                      |
# +-------------------------------------------------------------------------------------------+
checaMemoria(){
 echo "checando memoria..."
}

# +-------------------------------------------------------------------------------------------+
# |               Funcao para gestao de espaco em disco pelo comando df -h                    |
# +-------------------------------------------------------------------------------------------+
checaDisco(){
 echo "checando disco..."
}


# +-------------------------------------------------------------------------------------------+
# |                      Switch-case para execucao do script                                  |
# +-------------------------------------------------------------------------------------------+
case $1 in
 "carga") checaCarga ;;
 "disco") checaDisco ;;
 "memoria") checaMemoria ;;
 "tudo") checaCarga ; checaMemoria ; checaDisco ;;
 *) echo "Forma de usar: $0 <carga|disco|memoria|tudo>"
esac

# Scripts VIM

# .sh - extensão do script 

# chmod +x - torna o script executável (Adiciona permissão de execução)

# Para executar o script: ./nome_do_script.sh, impotante que no script na primeira linha tenha o caminho do interpretador de comandos

# which - mostra o caminho do comando, ex: which ls

#!/bin/bash - indica o interpretador de comandos que será utilizado para executar o script

# subshell - =$() - atribui o resultado do comando a uma variável

# if - [ ] - Condição if

# if then else fi - lógica if termina com fi (if ao contrário)

# Passagem por paramentro $1 ........ $2 - $1 é o primeiro parâmetro passado ao script e $2 é o segundo parâmetro passado ao script

# case - switch-case