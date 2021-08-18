$url = '<Pulse_Webhook_URL>'

$content = Get-Content "<C:\\path\\to\\results\\filename.ext>" -Raw
$bytes = [System.Text.Encoding]::ASCII.GetBytes($content)
$payload = [System.Convert]::ToBase64String($bytes)

$body = @{
 'projectId' = '<ProjectID>'
 'testcycle' = '<TestCycleID>'
 'result' = $payload
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Body $body -Method 'Post' -Uri $url
