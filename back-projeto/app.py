from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
app.config['SQLALCHEMY_DATABASE_URI'] = '' #ROTA
db = SQLAlchemy(app)

class Usuario(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(120), unique=True, nullable=False)
    senha = db.Culumn(db.String(200), nullable=False)
        
@app.route('/', methods=['POST'])
def login():
        data = request.get_json()
        usuario = Usuario.query.filter_by(email=data['email'], senha=data['senha']).first()
    
        if usuario:
            return jsonify({'success': True}), 200
        else:
            return jsonify({'success': False}), 401
    
if __name__ == '__main__':
    app.run(debug=True)