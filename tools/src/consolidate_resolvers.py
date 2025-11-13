import os
import shutil

resolvers_root = "../minecraft/assets/cobblemon/bedrock/pokemon/resolvers"
textures_root = "../minecraft/assets/cobblemon/textures/pokemon"

for root, dirs, files in os.walk(resolvers_root, topdown=False):
    for d in dirs:
        resolver_path = os.path.join(root, d)

        rel_path = os.path.relpath(resolver_path, resolvers_root)
        textures_path = os.path.join(textures_root, rel_path)

        if not os.path.isdir(textures_path):
            shutil.rmtree(resolver_path)
