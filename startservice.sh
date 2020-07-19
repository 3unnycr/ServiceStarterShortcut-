#!/bin/bash
echo "Well-come to Service starter --made by 3unnycr"

function start_service(){
	echo "Select Service to Start"
	echo "[1] Apache2"
	echo "[2] Mysql"
	echo "[3] Apache + Mysql"
	echo "[4] Back"
	echo "[5] Exit"
	read -p "3u# " OPTION

	if [ $OPTION == 1 ]
	then
		echo "[+] Starting Apache2"
		service apache2 start
		echo "[+] Apache2 Started"
		exit 1
	elif [ $OPTION == 2 ]
	then	
		echo "[+] Starting Mysql"
		service mysql start
		echo "[+] Mysql Started"
		exit 1
	elif [ $OPTION == 3 ]
	then	
		echo "[+] Starting Apache2"
		service apache2 start
		echo "[+] Apache2 Started"
		echo "[+] Starting Mysql"
		service mysql start
		echo "[+] Mysql Started"
		exit 1
	elif [ $OPTION == 4 ]
	then
		echo "[+] Going Back"
		main_function
	else
		exit 1
	fi
}
function restart_service(){
	echo "Select Service to Restart"
	echo "[1] Apache2"
	echo "[2] Mysql"
	echo "[3] Apache + Mysql"
	echo "[4] Back"
	echo "[5] Exit"
	read -p "3u# " OPTION

	if [ $OPTION == 1 ]
	then
		echo "[+] Restarting Apache2"
		service apache2 restart
		echo "[+] Restarted Apache2"
		exit 1
	elif [ $OPTION == 2 ]
	then	
		echo "[+] Restarting Mysql"
		service mysql restart
		echo "[+] Restarted Mysql"
		exit 1
	elif [ $OPTION == 3 ]
	then	
		echo "[+] Restarting Apache2"
		service apache2 restart
		echo "[+] Restarted Apache2"
		echo "[+] Restarting Mysql"
		service mysql restart
		echo "[+] Restarted Mysql"
		exit 1
	elif [ $OPTION == 4 ]
        then
                echo "[+] Going Back"
                main_function
	else
		exit 1
	fi
}

function stop_service(){
	echo "Select Service to Stop"
        echo "[1] Apache2"
        echo "[2] Mysql"
        echo "[3] Apache + Mysql"
        echo "[4] Back"
	echo "[5] Exit"
        read -p "3u# " OPTION

        if [ $OPTION == 1 ]
        then
                echo "[+] Stoping Apache2"
                service apache2 stop
                echo "[-] Apache2 Stoped"
                exit 1
        elif [ $OPTION == 2 ]
        then    
                echo "[+] Stoping Mysql"
                service mysql stop
                echo "[-] Mysql Stoped"
                exit 1
        elif [ $OPTION == 3 ]
        then    
                echo "[+] Stoping Apache2"
                service apache2 stop
                echo "[-] Apache2 Stoped"
                echo "[+] Stoping Mysql"
                service mysql stop
                echo "[-] Mysql Stoped"
                exit 1
	elif [ $OPTION == 4 ]
        then
                echo "[+] Going Back"
                main_function
        else
                exit 1
        fi

}

function main_function(){
	echo "[1] Start service"
	echo "[2] Restart Service"
	echo "[3] Stop Service"
	echo "[4] Exit"

	read -p "3u# " OPTION
	
	if [ $OPTION == 1 ]
	then
		start_service
	elif [ $OPTION == 2 ]
	then
		restart_service
	elif [ $OPTION == 3 ]
	then
		stop_service
	else
		exit 1
	fi
}
main_function
