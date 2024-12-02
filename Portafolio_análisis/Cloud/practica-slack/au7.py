import time
import schedule
from slack_sdk import WebClient
from slack_sdk.errors import SlackApiError

#Token Bot
slack_token = "xoxb-7904878222530-7904801000595-i8CXjBx5wcDdoSJ5Gm3T2KKz"
client = WebClient(token=slack_token)

#ID del canal
channel_id = "C07T9KV8G00"

def send_message():
    try:
        response = client.chat_postMessage(
            channel=channel_id,
            text="¡Hola! Este es un mensaje automatizado."
        )
        print(f"Mensaje enviado: {response['message']['text']}")
    except SlackApiError as e:
        print(f"Error al enviar el mensaje: {e.response['error']}")

#schedule.every(1).minutes.do(send_message)
schedule.every(1).seconds.do(send_message)

print("Script iniciado. Presiona Ctrl+C para detenerlo.")

while True:
    schedule.run_pending()
    time.sleep(1)
    
