from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics

app = Flask(__name__)
metrics = PrometheusMetrics(app)

@app.route('/')
def hello():
    return "Hello, World!"

if __name__ == '__main__':
    # app.run(debug=True, host='0.0.0.0')
    app.run(debug=True, host='0.0.0.0', port=9000)