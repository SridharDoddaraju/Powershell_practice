# Generate an array of names
$names = "Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hannah", "Isaac", "Jack"

# Use the pipeline to filter, manipulate, and display data
$names |
    # Step 1: Filter names that start with "A"
    Where-Object { $_ -like "A*" } |

    # Step 2: Convert names to uppercase
    ForEach-Object { $_.ToUpper() } |

    # Step 3: Sort the names
    Sort-Object |

    # Step 4: Display the sorted names
    ForEach-Object { Write-Host $_ }
