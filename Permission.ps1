# Define the path to the file or folder
$filePath = "C:\Path\To\YourFile.txt"

# Define the user or group to grant permissions to
$identity = "DOMAIN\Username"  # Replace with the actual username or group

# Define the permission to grant (e.g., FullControl, Modify, Read)
$permission = "FullControl"    # Replace with the desired permission level

# Get the current ACL (Access Control List) of the file or folder
$acl = Get-Acl -Path $filePath

# Create a new access rule
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($identity, $permission, "Allow")

# Add the access rule to the ACL
$acl.SetAccessRule($accessRule)

# Apply the modified ACL to the file or folder
Set-Acl -Path $filePath -AclObject $acl
