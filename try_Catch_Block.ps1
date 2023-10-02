try {
    # Code that may generate an exception
    $numerator = 10
    $denominator = 0
    $result = $numerator / $denominator

    # This line will not be reached if an exception occurs
    Write-Host "Result: $result"
}
catch {
    # Code to handle the exception
    Write-Host "An error occurred: $_.Exception.Message"
}
finally {
    # Code that always executes, even if an exception occurs
    Write-Host "Finally block executed"
}
