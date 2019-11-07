#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os

from flask import Flask

app = Flask(__name__)

@app.route("/")
def main_route():
    greet = os.getenv("GREETING")
    return f"{greet}, Flask!!"

if __name__ == '__main__':
    app.run("0.0.0.0", port=80)
