function menu {

    Param(
    [String]$ID,
    [String]$CompatibilityModeSO
    )

## ---- Obtener datos para el Menú.

    ## ---- Versión del Sistema Operativo.
    $versionSO = (Get-WmiObject -class Win32_OperatingSystem).Caption

    ## ---- Nombre del servidor.
    $HostName = Hostname
    
## ----  Mostrar Menú.

Write-Host "*--------------------------------------------------------------------------------*"
Write-Host "* Sistema Operativo detectado: $versionSO"
Write-Host "* Modo de compatibilidad: $CompatibilityModeSO"
Write-Host "* Nombre del servidor: $HostName"
Write-Host "* ID para esta ejecución: $ID"
Write-Host "*--------------------------------------------------------------------------------*"
Write-Host "* 1.- Revisar Hardening"
Write-Host "* 2.- Aplicar Hardenning"
Write-Host "* 3.- Realizar RollBack"
Write-Host "* q.- Salir"
Write-Host ""
        
}