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
DATE:  07/02/2021

----------| CPU INFORMATION |----------------------------------

CPU(s):                1
average: 0.34, 0.47, 0.23

----------| MEMORY INFORMATION |-------------------------------

             total       used       free     shared    buffers     cached
Mem:          489M       419M        70M       364K        15M       280M
-/+ buffers/cache:       123M       366M
Swap:           0B         0B         0B

----------| DISC INFORMATION |------------------------------

Size: 159G
Used:      84G
Avail: 74G
Use%:      54%

LOGS DIRECTORY AND OTHERS:
/var:  4% used
/opt:  4% used

----------| PROCESS INFORMATION |------------------------------

User:root PID:4325

----------| NETWORK INFORMATION |------------------------------

Interfaces:  inet addr:10.0.2.15 Bcast:10.0.2.255 Mask:255.255.255.0 inet6 addr: fe80::a00:27ff:fe5f:bbe6/64 Scope:Link
DNS:
nameserver 10.0.2.3

```` 
Add the script to the user's bash profile:

```` 

# vim /home/<user>/.bash_profile
  ...
  /home/<user>/health_check_linux.sh

# source /home/<user>/.bash_profile
```` 

Every time the chosen user accesses the Linux server, the script will be executed😉.