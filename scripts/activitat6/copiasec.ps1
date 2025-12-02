# Parametros para carpeta y destino de carpeta
param(
    [string]$Folder,
    [string]$Destination
)

Write-Host "Haciendo la copia de seguridad de $Folder a $Destination."

# Formato para la fecha y hora para asignarle a la copia de seguridad
$Date = Get-Date -Format "yyyyMMdd_HHmmss"

# Copiamos la carpeta con la hora como nombre
Copy-Item $Folder -Destination "$Destination\$Date" -Recurse
