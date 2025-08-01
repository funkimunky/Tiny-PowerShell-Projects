
 [CmdletBinding()]
param (
    [Parameter(Mandatory = $false, Position = 0)]
    [string]$name
)
if (-not $name) {
    $name = "World"
}

"Hello, $name!"    
