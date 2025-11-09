import pandas as pd
import requests

url = "https://bulbapedia.bulbagarden.net/wiki/List_of_fully_evolved_Pok%C3%A9mon_by_base_stats"

headers = {
    "User-Agent": "Mozilla/5.0"
}

html = requests.get(url, headers=headers).text

# Bulbapedia pages often include multiple tables; this grabs all and lets you pick.
tables = pd.read_html(html)

# Identify the table you want. For this page, the first large table is usually index 0.
df = tables[0]

df.to_csv("src/assets/fully_evolved.csv", index=False)

print("Saved CSV.")
