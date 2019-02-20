param (
    [parameter( Mandatory = $true, ValueFromPipeline = $true, HelpMsg = "Enter default render share username: ")],
    [string]$username
    [parameter( Mandatory = $true, ValueFromPipeline = $true, HelpMsg = "Enter password: " )],
    [string]$password
)

$installpath
$

function Show-Help {
    Write-Host
    Write-Host "This script prepares a workstation to join the DMW render farm"
    Write-Host
    Write-Host "Installation on Windows requires:"
    Write-Host "    Name of the Avid share used for distributing render jobs to client PCs"
    Write-Host "        (Defaults to RENDERFARM)"
    Write-Host "    Name of the AD user used to mount the share"
    Write-Host "        (Defaults to rendermonkey)"
    Write-Host "    Standard AD password for the user mounting the render data share"
    Write-Host "        (This is known to technicians responsible for maintaining the farm)"
    Write-Host "    The password is not optional and must be supplied to this script"
    Write-Host
    Write-Host "Written by : John Cox"
    Write-Host "    j.cox@mdx.ac.uk"
    Write-Host
    
    Exit 1
}

if( $password.Trim( ) -eq "" ) {
    Show-Help
}

function Parse-Defaults {
    $defaults = Get-Content -path "defaults.xml"
}


function Write-Files {
    param( [string]$path = "C:\render\etc" )
    
    
}
