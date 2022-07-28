# SQL 

**Transaction** - A unit of work performed against a database that is treated in a coherent and reliable way; all of the work within a transaction must succeed, or it is rolled back entirely, i.e. "all or nothing".

**Normalization** - An approach to database storage that practices storing references to information that lives in a different location rather than duplicating it and storing it in multiple places.

**Programming paradigms** are just ways to classify programming languages according to their style.
### Imperative Programming:
imperative programming just feeds step-by-step instructions for the computer to execute.
### Declarative Programming: 
declarative programming describes what you want to achieve, without going into too much detail about how you're going to do it. 

### DataBase: 
To save (or persist) data, you need to somehow write the data to permanent storage, like the hard disk or the memory. Applications usually also require rich relationships between pieces of data. 


### DataBase Schema:
Database Schemas
Your database schema is a description of the organization of your database into tables and columns. 

### Relationships:
We model these relationships between entries in separate tables through foreign keys. A foreign key is a value in a database table whose responsibility is to point to a row in a different table.  

Foreign keys are how we model relationships between pieces of data across multiple tables. This also allows us to ensure that data is not duplicated across our database. 


### Joins:
SQL provides a powerful facility: the JOIN. A JOIN will do just what you'd expect it to do: join together two tables, resulting in a temporary combined table that you can query just like any other. JOIN clauses include an ON statement, in which you specify how exactly those two tables relate to one another.

[join diagrams](https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/) 

### Self Joins: 
A self join is exactly what it sounds like: an instance of a table joining with itself. The way you should visualize a self join for a given table is by imagining a join performed between two identical copies of that table. 


### Case Statements:

```sql 
select title, length, 
Case 
    when length > 0 and length < 50  Then 'Short'
    when length > 50 and length < 100 then 'Medium'
    when length > 100 then 'Long'
    else 'Unknown' 
    end as duration 
from films 
order by title;  


select sum( 
    case  
        when rental = .99 then 1 
        else 0 
    end 
    ) 'economy', 
    sum( 
        case 
            when rental = 2.99 then 1 
            else 0 
        end 
    ) 'regular',  
    sum( 
        case 
            when rental = 4.99 then 1 
            else 0 
        end 
    ) 'premium' 
from films 
```

### Coalesce: 
- Coalesce is a SQL function that returns the first non-null value in a list of values. it's the same as the mysql function ifnull. 
- we use coalesce to substitute a default value if a value is null.  

```sql 
select coalesce(1, 2, 3);  

select coalesce(excerpt, left(content, 150)) 
from posts; 

select product, (price - coalsece(discount, 0)) as price  
from products; 
== 
select product, ( 
    price - case 
                when discount is null then 0 
                else discount 
            end 
    ) as net_price
from products; 

``` 

# Sqlite3 
- to create a database in sqlite3, you need to use the sqlite3 command line tool. 
- first create file.sql and write the sql commands in it cat the file commands in file.db in the sqlite3 database. then open the database in sqlite3 using sqlite3 database_name.db. 
 ```cat import_db.sql | sqlite3 db_name.db```
- you can run sql query in pry by require sqlite3 and then run sqlite3.db.execute("query").
```ruby
# - create an instance of sqlite3 with the database file. 
sqlite3 = SQLite3::Database.new("db_name.db")
# - execute the query.
sqlite3.execute("select * from table_name")
```

## Create connection to database in sqlite3:
- initialize a new instance of SQLite3::Database and pass the db_file.db to the parent class.
```ruby 
class DBConnection < SQLite3::Database
  include Singleton

  def initialize
    super('db_name.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end 

```  

