#!/bin/bash
# 
# By Thomas Bourcey
# Tomzone.fr
 
# Corrige un problème lors de l'utilisation du scp et de WinSCP
# http://winscp.net/forum/viewtopic.php?t=1510
if [ "$TERM" != "dumb" ]; then
        # Si un groupe Admin existe alors on active le dynmotd
        $( which id ) | grep 'admin' > /dev/null
        RETURN=$?
        if [ $RETURN = 0 ]; then
                /usr/local/bin/dynmotd;
        # Si root se connecte on active le dynmotd
        elif [ $EUID = 0 ]; then
                /usr/local/bin/dynmotd;
        # Sinon on affiche un message "standard" pour les simples utilisateurs
        else
                echo ""
                echo ""
                echo "---> Welcome $USER on $(hostname)"
                echo ""
                echo "###########################################################################"
                echo "#                                                                         #"
                echo "#  ALERT! You are entering into a secured area! Your IP, Login Time,      #"
                echo "#  Username has been noted and has been sent to the server administrator! #"
                echo "#  This service is restricted to authorized users only. All activities on #"
                echo "#  this system are logged.                                                #"
                echo "#                                                                         #"
                echo "#  Unauthorized access will be fully investigated and reported to the     #"
                echo "#  appropriate law enforcement agencies.                                  #"
                echo "#                                                                         #"
                echo "###########################################################################"
                echo ""
                echo ""
        fi
fi
