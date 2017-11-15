#!/usr/bin/env python
#coding:utf-8


import os
from app import app
from flask import Flask, request, redirect, url_for, render_template, abort, session, escape, send_from_directory, flash
from werkzeug import secure_filename
import subprocess
import thread
import traceback

import sys
reload(sys)
sys.setdefaultencoding('utf-8')

@app.route("/h")
def hello():
    return "Hello World!"


@app.route("/plugin_config")
def plugin_config():
    lang = request.args.get("language")
    if lang != "zh":
        return redirect("/uploads/plugin_com.json")
    else:
        return redirect("/uploads/plugin_cn.json")