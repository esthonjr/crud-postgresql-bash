#!/bin/bash

# Script to exemplify psql crud with bash

opt=$1
export PGUSER=esthonjr
export PGHOST=localhost
export PGDATABASE=testdb
export PGPASSWORD=estadmin
export PGPORT=5432

# Check if psql is available
if ! command -v psql &> /dev/null; then
    echo "Error: psql command not found. Please install PostgreSQL client."
    exit 1
fi

if [ "$#" -ne 1 ]; then
    echo "Correct command is: $(basename $0) operation"
    echo "       create # para criar a tabela"
    echo "       read # para ler tabela"
    echo "       update # para fazer update dos dados"
    echo "       insert # para inserir dados"
    echo "       delete # para deletar os dados"
    echo "       drop # para deletar a tabela"
    exit
fi


if [[ $opt == "create" ]]; then 
    psql -c "CREATE TABLE users (email varchar,firstName varchar,lastName varchar,age int)"
	echo "Table created"
elif [[ $opt == "read" ]]; then 
    psql -c "SELECT * FROM users WHERE age > 0"
elif [[ $opt == "update" ]]; then 
    psql -c "UPDATE users SET age = 72 WHERE email = 'test@test.com'"
	echo "Data updated"
elif [[ $opt == "delete" ]]; then 
    psql -c "DELETE FROM users WHERE email = 'test@test.com'"
	echo "Data deleted"
elif [[ $opt == "insert" ]]; then 
    psql -c "INSERT INTO users (email, firstName, lastName, age) VALUES ('test@test.com', 'test', 'test2', 33)"
	echo "Data inserted"
elif [[ $opt == "drop" ]]; then 
    psql -c "DROP TABLE users"
	echo "Table deleted"
else
	echo "Invalid operation."
    echo "       create # para criar a tabela"
    echo "       read # para ler tabela"
    echo "       update # para fazer update dos dados"
    echo "       insert # para inserir dados"
    echo "       delete # para deletar os dados"
    echo "       drop # para deletar a tabela"
fi