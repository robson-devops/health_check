# health check
Health check Linux server.

#### How to use?
Copy the health_check_linux.sh file to your Linux server.

Add execute permission to file:

````
# chmod u+x health_check_linux.sh

```` 

Execute the script file:

````
# ./health_check_linux.sh

```` 
**_expected outcome_**
```` 
DATE:  21/06/2021

----------| CONSUMO DE CPU |------------------------------

CPU(s):              1
average: 0.00, 0.00, 0.00

----------| CONSUMO DE MEMÓRIA |------------------------------

              total        used        free      shared  buff/cache   available
Mem:           983M        179M        484M        524K        319M        671M
Swap:            0B          0B          0B

----------| CONSUMO DO DISCO |------------------------------

Tamanho: 10G
Usado:      1.8G
Disponível: 8.3G
Uso%:      18%

LOGS:
/var:  22% used
/opt:  22% used

----------| PROCESSO EM EXECUÇÃO |------------------------------

User:root PID:5868

----------| INFORMAÇÕES DA REDE |------------------------------

Interface:  inet 172.17.0.1 netmask 255.255.0.0 broadcast 172.17.255.255
DNS:
nameserver 172.31.0.2

```` 
Edite o arquivo de profile do usuário, configurando-o conforme abaixo:

```` 

# vim /home/USUARIO/.bash_profile
  ...
  /home/USUARIO/verifica_servidor.sh

# source /home/USUARIO/.bash_profile
```` 

Todas as vezes que o usuário escolhido acessar o servidor Linux, o script será executado.