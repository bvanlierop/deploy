# Credentials
$db   = 'MyDatabase'
$creds = '-uMyUserName', '-pMyPassword'
$mysql  = 'mysql'

# Example, show all databases
& $mysql @creds $db -e "SHOW DATABASES;"

# Example, drop database
& $mysql @creds $db -e "DROP DATABASE $db;"

# Execute SQL file
& $mysql @creds $db -e "source C:\MyFile.sql"

# Execute SQL file that contains parameters
& &mysql @creds $db -e "set @MY_VAR=1; set @MY_VAR=2; `\. C:\MyFile.sql"
