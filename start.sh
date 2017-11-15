#!/bin/bash

function start_uwsgi() {
        
        echo "start uwsgi $1"
	local_path=`pwd`
	nohup $local_path/flask/bin/uwsgi $1 >/dev/null &
        echo "grant permission to nginx"
        sleep 1
        chmod 777 /tmp/s2.sock
}

name=$(basename $0)

function  stop_uwsgi() {
        echo "stop uwsgi"
        ps -ef | grep uwsgi
        echo $name
        
	ps -ef | grep uwsgi | grep -v $name | awk -F" " '{print $2}' | xargs kill -9
        ps -ef | grep uwsgi
}


function main() {
       stop_uwsgi
       start_uwsgi $1
}

function test_web() {
        
        sleep 3
	a=`wget --save-headers http://$1 -O /tmp/t.log && cat /tmp/t.log | grep "200 OK"`
	if [ ${#a} -ne 0 ]; then
		echo "start success"
	else
		echo "start fail "
	fi
    

}


if [ $# == 1 ]; then
   main $1
   test_web www.domain.com
elif [ $# == 2 ]; then
   main $1
   test_web $2
else
   echo "./$name uwsgi.ini www.domain.com"
fi
