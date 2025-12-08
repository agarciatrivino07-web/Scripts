
# Verificar si hay conexión a internet
$hayConexion = Test-Connection -ComputerName 8.8.8.8 -Count 1 -Quiet

# Si hay conexión, abrir Edge en modo InPrivate
if ($hayConexion) {
    Start-Process msedge.exe -ArgumentList "-new-window", "-inprivate", "https://passwordreset.microsoftonline.com/"
} else {
    # Mostrar un mensaje de error si no hay conexión
    [System.Windows.Forms.MessageBox]::Show("No hay conexión a internet. Por favor, verifica tu Wi-Fi.", "Error de Conexión", "OK", "Error")
}

