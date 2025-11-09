import pandas as pd
import json
import os

df = pd.read_csv("assets/fully_evolved.csv")

col1 = df.iloc[:, 0].astype(str).str.zfill(4)
col3 = df.iloc[:, 2].astype(str).str.lower()

with open("src/shapes/resolver.json", "r", encoding="utf-8") as f:
    resolver_template = f.read()

base_path = "../resourcepack/assets/cobblemon/bedrock/pokemon/resolvers"

for number, species in zip(col1, col3):
    if (" " in species): 
        continue

    out_dir = os.path.join(base_path, f"{number}_{species}") 
    os.makedirs(out_dir, exist_ok=True)

    formatted = resolver_template.replace("{{SPECIES}}", species).replace("{{NUMBER}}", number)
    out_path = os.path.join(out_dir, f"0_{species}_alpha.json")

    with open(out_path, "w", encoding="utf-8") as f:
        f.write(formatted)
