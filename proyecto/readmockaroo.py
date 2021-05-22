
import json
import requests

def merge(d1, d2, merge):
    result = dict(d1)
    for k,v in d2.items():
        if k in result:
            result[k] = merge(result[k], v)
        else:
            result[k] = v
    return result

with open('credentials.json', 'r') as file:
    user = json.load(file)
resp = requests.get('https://my.api.mockaroo.com/week7.json?key=4134a690')
datos = json.loads(resp.content)
nuevos = user['@user1']
nuevos1 = datos['@user1']
merged = merge(nuevos, nuevos1, lambda x, y:(x,y))
datos["@user1"] = merged
with open('kraken_properties_mockaroo.json', 'w') as file:
    json.dump(datos, file, indent=4)
