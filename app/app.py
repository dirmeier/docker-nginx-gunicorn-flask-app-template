from flask import Flask, render_template
from werkzeug.contrib.fixers import ProxyFix

app = Flask(__name__)
app.wsgi_app = ProxyFix(app.wsgi_app)

@app.route('/index.html')
@app.route('/')
def start():
    return render_template('index.html')

@app.route('/hello/')
@app.route('/hello/<name>')
def hello(name=None):
    return render_template('index.html', name=name)

if __name__ == "__main__":
    app.run()
