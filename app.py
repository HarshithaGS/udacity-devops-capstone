

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello, Udacity! My name is Hrshitha, You are welcome to my Capstone project'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)