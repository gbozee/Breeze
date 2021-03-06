function ftpPutFile($targetUri, $username, $password, $sourcePath) {
    $client = New-Object System.Net.WebClient
    $client.Credentials = New-Object System.Net.NetworkCredential($username,$password)
    $client.UploadFile($targetUri, $sourcePath)
}

$srcDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$credentialsFile = $srcDir+"\GetFtpCredential.ps1"
$textArray = get-content $credentialsFile
$executableString = [string]::join("`n",$textArray)
# should set $ftpUser and $ftpPassword
invoke-expression $executableString
$baseFileName = "testFile.txt"
$target = "ftp://www.breezejs.com/sites/all/packages/" + $baseFileName

$sourceFileName = $srcDir + "\" + $baseFileName
ftpPutFile $target $ftpUser $ftpPassword $sourceFileName