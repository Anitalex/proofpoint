$username = Read-Host "What is the username" 
$password = Read-Host "What is the password" 
$domain = Read-Host "what is the domain"
$Headers = @{
    'X-user' = $username
    'X-password' = $password
}
$URI = "https://us3.proofpointessentials.com/api/v1/orgs/$domain/users"
$body = @{
}
$results = Invoke-WebRequest -Uri $URI -Method 'GET' -Headers $headers


($results.content | Convertfrom-Json).users | Out-GridView