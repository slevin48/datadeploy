from flask import Flask, jsonify
import pandas as pd

api = Flask(__name__)

df = pd.read_csv("data.csv")

@api.route('/')
def data():
    json = df.to_json(orient='records')
    return json

if __name__ == '__main__':
    api.run()
