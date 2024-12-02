
from slack_sdk import WebClient

slack_token = "xoxb-7904878222530-7904801000595-i8CXjBx5wcDdoSJ5Gm3T2KKz"
client = WebClient(token=slack_token)

def prueba_envio():
    upload_text_file = client.files_upload_v2(
    channel="C07T9KV8G00",#Este ID se saca del Slack Channel en descripción hasta abajo
    title="Test text",
    file="resultado.pdf",
    initial_comment="Here is the file:",
    )

prueba_envio()
