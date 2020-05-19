# sync_core
sync_core is a framework that has everything to start a simple server, it will be updated constantly, there are a lot of errors and bugs. If you are a developer, feel free to fork my project and remake it. :)

## Requirements
- [mysql-async](https://github.com/brouznouf/fivem-mysql-async)

## How to install?
- First, 
download sync_core and mysql-async
go to the server.cfg file and add:
ensure mysql-async
ensure sync_core

 - Second,
 add the following in server.cfg:
  set mysql_connection_string "server=localhost;uid=mysqluser;database=sync_core"
  
  - Third,
  import sync_core.sql into your database
  
  - And you are done!
