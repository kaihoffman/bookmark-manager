require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'bookmark-manager-test')
  #drop existing tables
  connection.exec("DROP TABLE IF EXISTS bookmarks;")
  #create new table.
  connection.exec("CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));")
end
