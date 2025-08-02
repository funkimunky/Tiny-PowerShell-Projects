[CmdletBinding()]
 Param(
        [Parameter(ValueFromPipeline)]
        [string]
        $InputObject,
        [Parameter(ValueFromRemainingArguments,Position=0)]
        [string[]]
        $StringObject
    )


[string[]]$vowel_array = @('a', 'e', 'i', 'o', 'u')

if($InputObject) {
    $string = $InputObject
} elseif ($StringObject) {
    $string = $StringObject -join ''
} else {
    Write-Error "No input provided."
    return
}

$firstChar = $string.Substring(0,1)

if($firstChar -in $vowel_array) {
    $response_string = "Ahoy, Captain, an $string off the larboard bow!"
} else {
    $response_string = "Ahoy, Captain, a $string off the larboard bow!"
}
$response_string