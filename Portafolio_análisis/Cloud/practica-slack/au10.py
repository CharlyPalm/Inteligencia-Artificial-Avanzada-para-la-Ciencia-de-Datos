import requests
import json


webhook_url = "https://hooks.slack.com/services/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"

def send_image(image_url, text="Imagen de URL"):
    payload = {
        "text": text,
        "attachments": [
            {
                "title": "Imagen de URL",
                "image_url": image_url
            }
        ]
    }
    headers = {'Content-Type': 'application/json'}
    response = requests.post(webhook_url, data=json.dumps(payload), headers=headers)

    if response.status_code != 200:
        raise ValueError(f"Request to slack returned an error {response.status_code}, the response is:\n{response.text}")
    else:
        print(f"Imagen enviada: {image_url}")

image_url = "https://is5-ssl.mzstatic.com/image/thumb/Purple3/v4/d3/72/5c/d3725c8f-c642-5d69-1904-aa36e4297885/source/256x256bb.jpg"
send_image(image_url)
