function rollback {

    Param(
    [String]$ID,
    [String]$CompatibilityModeSO
    )
 
if(Test-Path -Path "./rollback"){
    #Write-Host "La carpeta ya existe"
}else{
    New-Item -ItemType "directory" -Path "./rollback"
}
        
}