
import imp


import json

text = """{
    "name": "Ukesh Aryal",
    "DOB": 2002,
    "isverified": true,
    "bestvideo": [
        "IP Video", "Flutter Video"
    ]
}"""

obj = json.loads(text)

print(obj)
