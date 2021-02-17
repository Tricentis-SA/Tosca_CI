$url = 'https://pulse-7.qtestnet.com/webhook/ea99f7b9-7a0a-4dcd-b99d-1a11e7c4c8e3'

$content = Get-Content "C:\temp\result.xml" -Raw
$bytes = [System.Text.Encoding]::ASCII.GetBytes($content)
$payload = [System.Convert]::ToBase64String($bytes)

$body = @{
 'projectId' = '87143'
 'testcycle' = '2294484'
 'result' = $payload
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Body $body -Method 'Post' -Uri $url
