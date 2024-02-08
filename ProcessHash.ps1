# Import the data from the CSV file
$processes = Import-Csv -Path ".\processes.csv"

# Create a hash-table for the processes
$processesHash = @{}

# Add the processes to the hash-table
foreach ($process in $processes) {
    $processesHash[$process.Name] = $process
}

# Export the hash-table to a file
$processesHash | Export-Clixml -Path ".\processesHash.xml"