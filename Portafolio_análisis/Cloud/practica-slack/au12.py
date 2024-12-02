
from slack_sdk import WebClient
import slack
import pyjokes

#slack_token = "xoxb-7358260192663-7358460232071-6UpIBosd1vzVgO1XzB7ftPGL"
#slack_token = "xoxb-7358260192663-7396343207728-85eqsn8TbTUrM0UMHPl2Jt0q"#Final Final
slack_token = "xoxb-7904878222530-7904801000595-i8CXjBx5wcDdoSJ5Gm3T2KKz"#kmonito

def prueba_escucha():
    print("Prueba Escucha")
    client = WebClient(slack_token)
    #client.chat_postMessage(channel="pruebas-python", text="Good Day Raza")#conectado?
    while True:
        joke = pyjokes.get_joke(language="es", category="all")
        history= client.conversations_history(channel="C07T9KV8G00")
        if "chiste" in history["messages"][0]["text"].lower():
            client.chat_postMessage(channel="C07T9KV8G00", text= joke)

prueba_escucha()

