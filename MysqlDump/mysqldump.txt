Backup do banco de dados Mysql


-> Usar o comando mysqldump no terminal:

$ mysqldump -u root -p nome_do_banco > backup.sql


→ EXEMPLO:   

$ mysqldump -u root -p db_Biblioteca > /home/mateus/db_Biblioteca.sql

    • DICA:  Você pode abrir o arquivo resultante com algum editor de textos no terminal para ver seu conteúdo.

