param(

)

$avidrunning = $False
$username = ""
$password = ""

function Check-Avid {
    $numtries = 0
    
    While( -not $avidrunning -and $numtries -le 5 ) {
        Start-Sleep -seconds 10
        $numtries++
        
        $drivers = driverquery.exe /v
        
        foreach( $driver in $drivers ) {
            $tokens = -split $driver
            
            if( $tokens[0].startsWith("Avid") -and $tokens[5] -eq "Running" ) {
                $avidrunning = $True
            }
        }
    }
}

function Parse-Defaults {

}

function Mount-Share {
        net use \\AvidNEXIS\RENDERFARM R: /USER:$username $password
}

function Show-Help {

    Write-Host "This is a boot time script which automatically connects the"
    Write-Host "client PC to the render farm before login."
    Write-Host ""
}
