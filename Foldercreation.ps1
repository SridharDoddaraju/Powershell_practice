# Create the folder "myfolder" in the current directory
New-Item -ItemType Directory -Path .\myfolder

# Create the file "myfirst.txt" inside "myfolder" and add content to it
Set-Content -Path .\myfolder\myfirst.txt -Value "This is my first PowerShell command."

