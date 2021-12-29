from flask import Flask

app= Flask(__name__)

#Homepage
@app.route('/')
def hello():
    return "Hello, Welcome to Harshithas Capstone Project."
    
#run on port 80
if __name__=="__main__":
    app.run(host='0.0.0.0', port=80, debug=True)
    
    
    
   