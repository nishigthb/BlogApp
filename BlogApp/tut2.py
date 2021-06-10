from flask import Flask,render_template
app=Flask(__name__)
@app.route("/")
def hello():
    return render_template('index.html')
@app.route("/about")
def nishi():
    name = "nishi"
    clg = "KJSCE"
    branch = "Computer"
    year = "TY"
    return render_template("about.html",name=name,clg=clg,branch=branch,year=year)
@app.route("/bootstrap")
def homepage():
    return render_template('bootstrap.html')

app.run(debug=True)
