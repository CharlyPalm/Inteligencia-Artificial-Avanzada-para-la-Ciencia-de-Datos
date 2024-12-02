
import pandas as pd
import requests

# Reemplaza 'https://hooks.slack.com/services/your/webhook/url' con tu URL de webhook
webhook_url = "https://hooks.slack.com/services/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"

df= pd.read_csv("netflix.csv")
df=df.head()
df_string = df.to_string(index=False)

def send_message(texto):
    payload = {
        'text': f'```\n{texto}\n```'
    }

    response = requests.post(webhook_url, json=payload)

    if response.status_code == 200:
        print('Mensaje enviado con éxito')
    else:
        print(f'Error al enviar el mensaje: {response.status_code}')

send_message(df_string)