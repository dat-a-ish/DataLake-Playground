from flask import Flask, jsonify

app = Flask(__name__)

# Mock data for demonstration
users = [
    {"id": 1, "name": "Alice"},
    {"id": 2, "name": "Bob"}
]


@app.route('/', methods=['GET'])
def main():
    return 'Test'


# Route to get all users
@app.route('/users', methods=['GET'])
def get_users():
    return jsonify(users)


# Run the app
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
