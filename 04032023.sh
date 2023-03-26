# Introdução ao Shell Script
# 
# identificacao do shell 
# root@debian:~# - # identifica o usuario root, que é o administrador do sistema
# root@debian:~# - @ identifica o nome do computador
# root@debian:~# - :~# identifica o diretorio atual
# root@debian:~$ - $ identifica o usuario comum
# 
# ---
# 
# identificacao dos itens
# inicia com:
# d = diretorio
# f = arquivo
# l = link simbolico
# - = arquivo normal
# 
# ---
# 
# permissao de arquivos e diretorios
# r - leitura
# w - escrita
# x - execucao
# sempre de 3 em 3 caracteres, excluindo o primeiro que é o tipo do arquivo/diretorio
# 
# ex:
# -rw-r--r-- = arquivo normal com permissao de leitura e escrita para o dono e leitura para o grupo e outros
# 
# 3 primeiros seriam do dono/criador
# 3 seguintes do grupo
# 3 ultimos de outros
# 
# drwx------ = diretorio com permissao de leitura, escrita e execucao para o dono e nenhuma permissao para o grupo e outros
# 
# Comandos chmod
# |r|w|x|
# |0|0|0| - nenhuma permissao - 0
# |0|0|1| - execucao - 1
# |0|1|0| - escrita - 2
# |0|1|1| - escrita e execucao - 3
# |1|0|0| - leitura - 4
# |1|0|1| - leitura e execucao - 5
# |1|1|0| - leitura e escrita - 6
# |1|1|1| - leitura, escrita e execucao - 7
# 
# Conjunto 777 permissão total.
# Conjunto 000 nenhuma permissão.
# 
# ---
# 
# Comandos simples para navegação no terminal linux
# cd - altera o diretorio atual (change directory)
# ls - listagem de arquivos e diretorios (list)
# ls -l - listagem detalhada de arquivos e diretorios (list long)
# ls -a - listagem de arquivos e diretorios incluindo os ocultos (list all)
# ls --color - listagem de arquivos e diretorios com cores (list color)
# pwd - mostra o diretorio atual (present working directory)
# mkdir - cria um diretorio (make directory)
# touch - cria um arquivo vazio (touch)
# rm - remove um arquivo (remove)
# 
# # 04/03/23
# 
# Instruções
# Atividade de fixação da última aula presencial
# 
# Para atender os requisitos de permissionamento de um cliente aleatório, especificar a relação de comandos que soluciona o problema abaixo:
# 
# 1 - Criar um diretório /var/arquivos (usar o comando mkdir para isso e depois o cd para acessar o diretório criado)
cd /var # navegar até o diretório /var
mkdir arquivos # criar o diretório arquivos
cd arquivos # acessar o diretório arquivos
# 
# 2 - Dentro desse diretório, criar os seguintes arquivos (usar o comando touch para criar e depois o chmod para mudar as permissões):
# a) texto.txt, com permissão rw para o dono, r para o grupo e x para os outros;
touch texto.txt # criar o arquivo texto.txt
chmod 641 texto.txt # mudar as permissões do arquivo texto.txt
ls -l texto.txt # listar o arquivo e seus identificadores.
# -rw-r----x 
# b) tcc.doc, com permissão rx para o dono, w para o grupo e wx para os outros;
touch tcc.doc # criar o arquivo tcc.doc
chmod 523 tcc.doc # mudar as permissões do arquivo tcc.doc
s -l tcc.doc # listar o arquivo indicado com as permissões
# -r-x-w--wx
# c) planilha.xls, com permissão x para o dono, w para o grupo e nenhuma para os outros;
touch planilha.xls # criar o arquivo planilha.xls
chmod 120 planilha.xls # mudar as permissões do arquivo planilha.xls
ls -l planilha.xls # listar o arquivo planilha.xls com as permissões
# ---x-w----
# d) foto.png, com rwx para o dono, grupo e outros.
touch foto.png # criar o arquivo foto.png
chmod 777 foto.png # mudar as permissões do arquivo foto.png
ls -l foto.png # listar o arquivo foto.png com as permissões
# -rwxrwxrwx 