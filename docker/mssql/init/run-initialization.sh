# Wait for it to be available
echo "Waiting for MS SQL to be available... ⏳"

/opt/mssql-tools/bin/sqlcmd -l 30 -S localhost -h-1 -V1 -U sa -P ${SA_PASSWORD} -Q "SET NOCOUNT ON SELECT \"MS SQL is up 🟢\" , @@servername"
is_up=$?
while [ $is_up -ne 0 ] ; do 
    echo -e $(date) 
    /opt/mssql-tools/bin/sqlcmd -l 30 -S localhost -h-1 -V1 -U sa -P ${SA_PASSWORD} -Q "SET NOCOUNT ON SELECT \"MS SQL is up 🟢\" , @@servername"
    is_up=$?
    sleep 5 
done

# Run every script in /scripts
# TODO set a flag so that this is only done once on creation, 
#      and not every time the container runs
for foo in scripts/*.sql
    do /opt/mssql-tools/bin/sqlcmd -U sa -P ${SA_PASSWORD} -l 30 -e -i $foo
done

# So that the container doesn't shut down, sleep this thread
sleep infinity