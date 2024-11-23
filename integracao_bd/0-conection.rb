require 'pg'

def create_connection
  PG.connect(
    dbname: 'fliperama', 
    user: 'postgres', 
    password: 'postgres', 
    host: 'localhost', 
    port: 5432
  )
end