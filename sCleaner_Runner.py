import os
import requests
from time import sleep

print("Fetching latest script version...")

URL = "https://raw.githubusercontent.com/AWeirDKiD/SimpleTempCleaner/main/sCleaner.bat"
response = requests.get(URL)
open("sCleaner.bat", "wb").write(response.content)

print("sCleaner.bat will automatically run  in 3 seconds...")
delay = 3
sleep(delay)

os.system("sCleaner.bat")
