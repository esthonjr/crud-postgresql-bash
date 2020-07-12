# crud-postgresql-bash

Este pacote é um exemplo simples de CRUD (Create, read, update and delete) com bash + postgresql.

- [crud-postgresql-bash](#crud-postgresql-bash)
  - [Configuração do export das variáveis de ambiente](#configuração-do-export-das-variáveis-de-ambiente)
  - [Utilização](#utilização)

## Configuração do export das variáveis de ambiente
Editar o arquivo crud.sh:
```bash
export PGUSER=esthonjr
export PGHOST=localhost
export PGDATABASE=testdb
export PGPASSWORD=estadmin
export PGPORT=5432
```

## Utilização

Comandos disponíveis:

```bash
$ ./crud.sh create # para criar a tabela
$ ./crud.sh read # para ler tabela
$ ./crud.sh update # para fazer update dos dados
$ ./crud.sh insert # para inserir dados
$ ./crud.sh delete # para deletar os dados
$ ./crud.sh drop # para deletar a tabela
```
