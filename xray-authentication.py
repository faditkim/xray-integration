# This code sample uses the 'requests' library:
# http://docs.python-requests.org
import requests
from requests.auth import HTTPBasicAuth
import json
import base64

url = "https://jira.puc.services/rest/raven/1.0/api/test/TEST-7990/step"


credentials = "Bearer Nzk5ODcxOTIxMDc2OvYrJjcgL7DBsOnV4bhY0kiFHIVb"
# credentials = "Basic " + base64.b64encode("p349743:Nzk5ODcxOTIxMDc2OvYrJjcgL7DBsOnV4bhY0kiFHIVb".encode("ascii")).decode("ascii")

# Here you will have Bearer token
print(credentials)

headers = {
"Accept": "application/json",
"Authorization": credentials
}

response = requests.request(
"GET",
url,
headers=headers
)

print(response.text)

# print(json.dumps(json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")))