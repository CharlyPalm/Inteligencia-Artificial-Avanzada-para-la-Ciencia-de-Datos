import requests
import json

#URL #https://hooks.slack.com/services/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
webhook_url = "https://hooks.slack.com/services/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"

def send_message():
    message = {
        "text": "Hola para todos"
    }
    headers = {
        'Content-Type': 'application/json',
    }
    response = requests.post(webhook_url, headers=headers, data=json.dumps(message))
    
    if response.status_code == 200:
        print("Mensaje enviado correctamente")
    else:
        print(f"Error al enviar el mensaje: {response.status_code}, {response.text}")

send_message()

""""POST https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
Content-type: application/json
{
    "text": "Gotta get the bread and milk!"
}
"""