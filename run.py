#!flask/bin/python
#coding:utf-8

from app import app
import sys

if __name__=="__main__":
    arg=sys.argv
    if len(arg)==2:
        p=int(arg[1])
        app.run(host="0.0.0.0",port=p,debug = True)
    else:
        p=5000
        app.run()
