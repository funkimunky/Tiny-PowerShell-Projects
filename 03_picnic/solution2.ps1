[CmdletBinding()]
 Param(       
        [Parameter(Mandatory=$false)]
        [switch] $sorted,
        [Parameter(ValueFromRemainingArguments=$true, Position=0, Mandatory=$true)]
        [string[]]
        $param_picnic_items
    )

if($sorted){
    $param_picnic_items = $param_picnic_items | sort-object
}
$picnic_count = $param_picnic_items.Count
$output_string = ""
if($picnic_count -eq 1){
   $output_string += "You are bringing $($param_picnic_items[0])."
}
elseif($picnic_count -eq 2){
    $output_string += "You are bringing $($param_picnic_items[0]) and $($param_picnic_items[1])."
}
else {    
    $item_array = $param_picnic_items[0..($param_picnic_items.Length-2)]
    $output_string += "You are bringing"
    foreach($item in $item_array){
        $output_string += " $item,"
    }   
    $item = $param_picnic_items[($param_picnic_items.Length-1)]
    $output_string += " and $item."
} 

 Write-Output $output_string



