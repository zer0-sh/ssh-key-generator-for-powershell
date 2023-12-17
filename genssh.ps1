Write-Host @"
⠀⢀⣠⣤⣤⣄⡀⠀
⣴⣿⣿⣿⣿⣿⣿⣦
⣿⣿⣿⣿⣿⣿⣿⣿
⣇⠈⠉⡿⢿⠉⠁⢸      "Memento Mori" 
⠙⠛⢻⣷⣾⡟⠛⠋
⠀⠀⠀⠈⠁⠀⠀⠀
"@

# Obtener la ruta del script
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition

# Configurar la codificación UTF-8 para los mensajes
$OutputEncoding = [System.Text.Encoding]::UTF8

# Solicitar la dirección de correo electrónico asociada a GitHub
$email = Read-Host "Ingresa tu dirección de correo electrónico asociada a GitHub"

# Verificar si se proporcionó una dirección de correo electrónico
if (-not $email) {
    Write-Error "Error: Debes proporcionar una dirección de correo electrónico asociada a GitHub."
    exit 1
}

# Generar la clave SSH
ssh-keygen -t rsa -b 4096 -C $email

# Verificar si se generó la clave con éxito
if ($LASTEXITCODE -eq 0) {
    Write-Host "Clave SSH generada con éxito."

    # Mostrar la clave pública
    Write-Host "`nAquí está tu clave pública:"
    Get-Content "$env:USERPROFILE\.ssh\id_rsa.pub"

    # Construir la ruta del archivo en el mismo directorio que el script
    $filePath = Join-Path $scriptPath "clave_ssh.pub"

    # Guardar la clave en un archivo en el mismo directorio que el script
    Get-Content "$env:USERPROFILE\.ssh\id_rsa.pub" | Set-Content -Path $filePath
    Write-Host "Clave SSH guardada en $filePath."

} else {
    Write-Error "Error al generar la clave SSH."
    exit 1
}
