# Add-UrlToPiholeList
## Description:
* A simple function to add sites to your Pi-Hole server's blacklist or whitelist. 

## Parameters:
* `$piholeIP`:
    * Description: Represents the IP address of the Pi-hole server.
    * Mandatory Paramater: `$true`
* `$url`:
    * Description: The URL that you want to add to the Pi-hole list.
    * Mandatory Paramater: `$true`
* `$apikey`:
    * Description: API key used for authentication. Can be found in your Pihole server settings.
    * Mandatory Paramater: `$true`
* `list`:
    * Description: Represents the type of list, you would like to add the `$url` to.
    * Mandatory Paramater: `$true`
    * ValidateSet: `black`, `white`

## Building the API URL:
* Constructs the URL for the Pi-hole API, incorporating the provided parameters.
* ```$apiUrl = "http://$piholeIP/admin/api.php?list=$list&auth=$apikey&add=$url"```

## Error Handling:
* The code is wrapped in a try catch block to handle exceptions that may occur during the API call.

## Examples:
### Example 1:
```
    Add-UrlToPiHoleList -piholeIP 192.168.0.2 -url "google.com" -apiKey "XXXXXXXXXXXXXXXXXXXXXXXXXXX" -List black
```
### Example 2:
```
    $piHoleIP = 192.168.0.2
    $url = "google.com"
    $apikey "XXXXXXXXXXXXXXXXXXXXXXXXXX"
    $List = "white"

    Add-UrlToPiHoleList -piholeIP $piHoleIP -url $url -apiKey $apikey -List $list
```
