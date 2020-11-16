$file = "file.txt"
$text = "text to remove"
$files = Get-ChildItem -recurse -filter $file -File -ErrorAction SilentlyContinue -Name

foreach($f in $files) {
    Echo " Working on: $f"
    ((Get-Content -path $f -Raw) -replace $text,'') | Set-Content -Path $f
}
Echo "Done!"