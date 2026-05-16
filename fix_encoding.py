
import os

path = r"c:\Users\gunuu\Desktop\dinamicas PAGE\index.html"

replacements = {
    "Ãª": "ê",
    "Ã¡": "á",
    "Ã³": "ó",
    "Ã§": "ç",
    "Ãµ": "õ",
    "Ã¢": "â",
    "Ãº": "ú",
    "Ã­": "í",
    "Ã‰": "É",
    "Ã€": "À",
    "Ãƒ": "Ã",
    "Ã©": "é",
    "âœ“": "✓"
}

with open(path, "r", encoding="utf-8") as f:
    content = f.read()

for key, val in replacements.items():
    content = content.replace(key, val)

with open(path, "w", encoding="utf-8") as f:
    f.write(content)
