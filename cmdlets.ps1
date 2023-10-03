# Define a custom PowerShell function
function Get-MyInfo {
    [CmdletBinding()]
    param (
        [string]$Name,
        [int]$Age
    )

    # Perform some action with the provided parameters
    Write-Host "Name: $Name"
    Write-Host "Age: $Age"
}

# Call the custom function with your desired parameters
Get-MyInfo -Name "John Doe" -Age 30
