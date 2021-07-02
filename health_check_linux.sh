#!/bin/bash

# AUTHOR : Robson Ferreira
# TIME  : DevOps
# E-MAIL: br.robsonferreira@gmail.com
# GITHUB: /robson-devops 
#------------------------------------------------------------
# BRIEF DESCRIPTION:
# THIS SCRIPT HEALTH CHECK LINUX SERVER:
#   . Disc 
#   . CPU 
#   . Memory 
#   . Network 
#   . Process
#
#-------------------------------------------------------------
# FOR EXECUTION, DO:
#    ./health_check_linux.sh
#-------------------------------------------------------------
# Changes:
# v1.0 - 17/02/2020 - Robson Ferreira: Criação do script.
# v1.1 - 01/03/2021 - Robson Ferreira: Melhoria nas funções.    
#-------------------------------------------------------------

DATE=$(date +%m/%d/%Y)

disc_check()
{
    echo "----------| DISC INFORMATION |------------------------------"
    echo " "
    echo "Size: $(df -h --total | tail -n1 | awk '{print $2}')" 
    echo "Used:      $(df -h --total | tail -n1 | awk '{print $3}')"
    echo "Avail: $(df -h --total | tail -n1 | awk '{print $4}')"
    echo "Use%:      $(df -h --total | tail -n1 | awk '{print $5}')"
    echo ""
    echo LOGS DIRECTORY AND OTHERS:
    echo "/var:  $(df -h /var | tail -n1 | awk '{print $5}') used"
    echo "/opt:  $(df -h /opt | tail -n1 | awk '{print $5}') used"
    echo ""
}

cpu_check()
{
    echo "----------| CPU INFORMATION |----------------------------------"
    echo " " 
    lscpu | head -n4 | tail -n1
    top | head -n1 | awk '{print $10" "$11" "$12" "$13" "$14 }'
    echo ""
}

memory_check()
{
    echo "----------| MEMORY INFORMATION |-------------------------------"
    echo " "
    free -h
    echo ""
}

network_check()
{
    echo "----------| NETWORK INFORMATION |------------------------------"
    echo " "
    echo "Interfaces: "$(ifconfig | grep inet | head -n2)
    echo "DNS: " 
    grep -i nameserver /etc/resolv.conf
    echo ""
}

process_check()
{
    echo "----------| PROCESS INFORMATION |------------------------------"
    echo " "
    ps aux | grep -i java | awk '{print "User:"$1 " PID:"$2" "$17}' | head -n1
    echo ""
    }


clear
echo " "
echo "DATE: " $DATE
echo " "
cpu_check
memory_check
disc_check
process_check
network_check

exit 0