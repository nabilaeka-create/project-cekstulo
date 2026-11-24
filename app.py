import sqlite3
from flask import Flask, render_template

app = Flask(__name__)

def get_db():
    con = sqlite3.connect("cekstulo.db")
    con.row_factory = sqlite3.Row
    return con

@app.route("/")
def home():
    con = get_db()
    lokasi = con.execute("SELECT * FROM lokasi").fetchall()
    con.close()
    return render_template("index.html", lokasi=lokasi)

if __name__ == "__main__":
    app.run(debug=True)