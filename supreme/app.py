from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World!'

@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/logout')
def logout():
    return 'You have successfully logged out!'

if __name__ == '__main__':
    app.run()
    