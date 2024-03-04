function Add-UrlToPiholeList
{
    param (
        [Parameter(Mandatory=$true)]
        [string]$piholeIP,
        [Parameter(Mandatory=$true)]
        [string]$url,
        [Parameter(Mandatory=$true)]
        [string]$apikey,
        [Parameter(Mandatory=$true)]
        [ValidateSet("black","white")]
        [string]$List
    )
    
    $apiUrl = "http://$piholeIP/admin/api.php?list=$list&auth=$apikey&add=$url"

    try {
        Invoke-RestMethod -Uri $apiUrl -Method Post
        Write-Host "URL has been successfully added to the Pi-hole $($list)list."
    } catch {
        Write-Host "Failed to add URL to the Pi-hole $($list)list. Error: $_"
    }
}