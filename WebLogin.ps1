$username = "zmink@phoenixcon.com"
$password = "Fernando04"
$account = "PHO17005US"
$ie = New-Object -com InternetExplorer.Application
$ie.visible = $true
$ie.navigate("https://us.cloud.mguard.com/#")
while($ie.ReadyState -ne 4) {start-sleep -m 100}
$ie.document.getElementById("account").value="$account"
$ie.document.getElementById("username").value="$username"
$ie.document.getElementById("password").value="$password"
$Button=$ie.Document.getElementById("bt_login") | where-object {$_.type -eq "submit"}
if ($Button -eq $null) {
    Write-Host "this crap is null yo"
}
$Button.click();
start-sleep 20
