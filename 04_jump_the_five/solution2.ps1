[CmdletBinding()]
 param(
        [Parameter(Mandatory=$true)]        
        [string]
        $input_string
    )

$jump = @{
    0 = 5
    1 = 9
    2 = 8
    3 = 7
    4 = 6
    5 = 0
    6 = 4
    7 = 3
    8 = 2
    9 = 1
}

$input_array = $input_string.ToCharArray()

foreach ($i in 0..($input_array.Length - 1)) {
    if ($input_array[$i] -match '\d') {
        $digit = [int]::Parse($input_array[$i])
        $input_array[$i] = $jump[$digit].ToString()
    }
}

Write-Output ($input_array -join '')
# This script replaces each digit in the input string with its corresponding value from the jump table.