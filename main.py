import os
from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_geek():
    env_var = os.getenv("HELLO_NAME", "world")
    return {"message": f"hai {env_var}!"}


if __name__ == "__main__":
    app.run(debug=True)
