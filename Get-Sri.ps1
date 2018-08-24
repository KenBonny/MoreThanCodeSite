param(
    [Parameter(Mandatory=$true)]
    [string] 
    $filename
)

function GetSha($type) {
    switch($type) {
        "sha256" { return [System.Security.Cryptography.SHA256]::Create() }
        "sha384" { return [System.Security.Cryptography.SHA384]::Create() }
        "sha512" { return [System.Security.Cryptography.SHA512]::Create() }
        default { Write-Host "Unsupported SHA hashing algorithm." }
    }
}

function CalculateHash($file, $hashType) {
    $scriptText = "{0}-{1}"
    $sha = GetSha $hashType
    try {
        $bytesHash = $sha.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($file))
        $base64Hash = [System.Convert]::ToBase64String($bytesHash)
   
        $tag = [string]::format($scriptText, $hashType, $base64Hash)
        Write-Host $tag
   }
   finally {
       if ($sha -ne $null) {
           $sha.Dispose()
       }
   } 
}


$file = Get-Content $filename -Raw

CalculateHash $file "sha256"

CalculateHash $file "sha384"
  
CalculateHash $file "sha512"