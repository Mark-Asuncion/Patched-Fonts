function install([string]$dir){
    Write-Output "Installing $dir ..."
    Get-ChildItem -Path "$dir" -Filter "*.ttf" -File | ForEach-Object {
        Install-Font -FilePath $_.FullName
    }
    Write-Output "Done installing $dir"
}

install .\FiraSans
install .\JetBrains
install .\Roboto
install .\SpaceMono
