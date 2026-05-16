
$path = "c:\Users\gunuu\Desktop\dinamicas PAGE\index.html"
$content = [System.IO.File]::ReadAllText($path)

$replacements = @{
    "Ãª" = "ê"
    "Ã¡" = "á"
    "Ã³" = "ó"
    "Ã§" = "ç"
    "Ãµ" = "õ"
    "Ã¢" = "â"
    "Ãº" = "ú"
    "Ã­" = "í"
    "âœ“" = "✓"
    "Ã©" = "é"
    "â„¹" = "ℹ"
    "Ã‡ÃƒO" = "ÇÃO"
    "ÃƒO" = "ÃO"
    "Ã‡Ãƒo" = "ção"
    "Ã£o" = "ão"
}

foreach ($key in $replacements.Keys) {
    $content = $content.Replace($key, $replacements[$key])
}

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
