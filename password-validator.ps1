Clear-Host
[string]$password = $args[0]
Write-Output $password


if ($password.length -lt 9) {
    Write-Host -ForegroundColor Red "Password must be at least 10 character"
}
elseif ($password -notmatch '(?-i)[A-Z]+') {
    Write-Host -ForegroundColor Red "Password must contain: upperCase letter"
}
elseif ($password -notmatch '(?-i)[a-z]+') {
    Write-Host -ForegroundColor Red "Password must contain: lowerCase letter"
}
elseif ($password -notmatch '(?-i)[@#$%^&*]+') {
    Write-Host -ForegroundColor Red "Password must contain: Regular expresion [@#$%^&*]"
}
elseif ($password -notmatch '(?-i)[0-9]+') {
    Write-Host -ForegroundColor Red " Password must contain: [0-9]"
}
else {
    Write-Host -ForegroundColor Green "Password vaild - Strong password"
}