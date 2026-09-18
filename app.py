# Importando dependencias
from flask import Flask 
 
 # Inicializar variáveis e Componentes

 # Inicializa o aplicativo Flask (HTTP)
app = Flask(__name__) 
 

 # Rota da página inicial (rota raíz ou root)
@app.route("/") 
def hello_world(): 
   return "<p>Hello, World!</p>"

# Uma rota bem simples
@app.route("/about")
def about():
    output = "Sobre nós..."
    return output
 

# Ativa o modo DEBUG e o main loop no localhost
if __name__ == "__main__": 
   app.run(debug=True) 