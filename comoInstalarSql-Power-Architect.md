### ---> Costumo colocar todos os arquivos não essenciais para o sistema lá em /opt , logo:
cd /opt

### ---> Dentro de /opt crie um diretório exclusivo para o software Sql Power Architect:
sudo mkdir sql-power-architect

### ---> Entrar no diretório de Downloads, por exemplo:
cd ~/Downloads

### ---> Link para Download do software:
https://8hi8a2.p3cdn1.secureserver.net/wp-content/uploads/2022/10/SQL-Power-Architect-generic-1.0.9.tar.zip

### ---> Para descompactar o arquivo do software em questão:
sudo unzip SQL-Power-Architect-generic-1.0.9.tar.zip && tar -xvzf SQL-Power-Architect-generic-1.0.9.tar.gz

### ---> Renomear a pasta que contém o nosso software dentro de /opt/sql-power-architect:
sudo mv architect-* architect

### ---> Faça o Download da imagem que será utilizada como atalho:
sudo curl -o /opt/sql-power-architect/architect/architect.png -OL https://github.com/SQLPower/power-architect/raw/master/src/main/resources/icons/architect128.png

### ---> Renomear imagem:
sudo mv architect128.png architect.png

### Crie o seu arquivo de atalho para o software:
sudo vim /usr/share/applications/SQLarchitect.desktop
