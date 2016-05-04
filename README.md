
## Docker RethinkDB Python Driver

Docker container for RethinkDB Python driver on Alpine, for backup/restore.

Has the following commands:

- rethinkdb-dump
- rethinkdb-export
- rethinkdb-import
- rethinkdb-index-rebuild
- rethinkdb-restore


Backup
```
docker run --rm --link rethinkdb:rethinkdb -v $(pwd):/backup egopulse/rethinkdb-python rethinkdb-dump -c rethinkdb -f /backup/rdb_dump.tar.gz
```

Restore
```
docker run --rm --link rethinkdb:rethinkdb -v $(pwd):/backup egopulse/rethinkdb-python rethinkdb-restore -c rethinkdb /backup/rdb_dump.tar.gz
```
