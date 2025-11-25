Write-Host "Quieres buscar un archivo o una carpeta?"
# Escogemos entre buscar archivos o carpetas
$choose = Read-Host

# Dependiendo de lo elegido realizara una acción o otra
if ($choose -eq "archivo") {
    # Pedimos nombre del archivo con extension y la ruta absoluta donde buscar
    $get_file = Read-Host "Ingrese el nombre del archivo que desea buscar y su extension (example.txt)"
    $get_location = Read-Host "Ingrese la ruta absoluta"

    # Prueba si existe en archivo
    if (Test-Path $get_location$get_file) {
        # Si lo encuentra lo muestra por pantalla
        Get-ChildItem -Path $get_location -Filter $get_file
    } else {
        # Si no lo encuentra, nos avisa que no lo ha encontrado en los datos proporcionados
        Write-Host "No se ha encontrado el archivo $get_file en $get_location."
    }
} elseif ($choose -eq "carpeta") {
    # Pedimos nombre de la carpeta y ruta absoluta
    $get_folder = Read-Host "Ingrese el nombre de la carpeta que desea buscar"
    $get_location = Read-Host "Ingrese la ruta absoluta"

    # Prueba si la carpeta existe
    if (Test-Path $get_location$get_folder) {
        # Si lo encuentra lo muestra por pantalla
        Get-ChildItem -Path $get_location -Directory $get_folder
    } else {
        # Si no lo encuentra, nos avisa que no lo ha encontrado en los datos proporcionados
        Write-Host "No se ha encontrado la carpeta $get_folder en $get_location."
    }
}

