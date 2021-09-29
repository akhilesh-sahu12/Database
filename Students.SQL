/*
 DataBase-: Is a collection of data stored in a format that can easily access.
             Any collection of related information-:
                                      1. Best friend name
                                      2. Shopping list
                                      3. Phone Book
                                      4. Facebook User Info
                                      5. Todo List

             Database can be stored in any format-:
                                       1. In your mind
                                       2. On Paper
                                       3. Powerpoints
                                       4. On a Computer
                                       5. Comments section of any application

 Database Management System-: A special software program that helps user to create and Maintain a database.
                              Any DBMS is not the actual database. But In order to Create/Manage 
                              the Databese we need a software apllication that is Database Management System.
                              DBMs is a software that allow access to data stored in a database and provide an easy 
                              and effective method of
                                                  1. Defining the information.
                                                  2. Storing the information.
                                                  3. Manipulating the information.
                                                  4. Reterving the information.
                                                  5. Protecting the information.
                                                  6. Differenctiating access permission for different users
   Advanatages-:
                  1. Makes it easy to handled large amount of data.
                  2. Import/Export data easily.
                  3. Security-: Only authentic user can see the data.
                  4. Backups
                  5. Concurrency-: many users can access data same time.
                  6. Interact with software application 

Real Example-:
             Amozon.com (Database)
                              amozon    <-> DBMS ->database
                              Amozon.com will interact with dbms in order to create, read, update and delete information
                                                                            create read update delete
                                                                              |      |     |      |
                                                                              C      R     U      D
 Types Of DataBase Management System-:
                   1. SQL
                   2. NoSQL 

        SQL(Structered Query Language)                            NoSQL(Not ony SQL)
1. SQL database are primarly called as Relational Database       1. NoSQL databsae are primarily called as Non-relational 
                                                                  or distributed database.
2. Organize data into one or more table                          2. Organize data is anything but a traditional table(Graph, Document Based, key-value pairs)                                                                                                
3. Each table has columns and rows.                              3. Document (JSON, XML)
4. MySQL, Oracle, Postgres, Maria DB etc.                        4. MongoDB, dynamo DB, apache, firebase, Redis, Neo4j, cassandra etc.

                      Student Table(Rows-Columns)                                      Student Document(Value-Key)
     Stu_id        stu_name         major                         [{  
     1            Akhilesh sahu    Computer Science                   "stu_id": 1,
     2            Sachin Sahu      Commerce                           "stu_name": "Akhilesh Sahu",
     3.           Reshma Sahu      Biology                            "major": " Computer Science"
     4.           Pooja Sahu       Biotechnology                      },
                                                                   {
                                                                     "stu_id": 2,
                                                                     "stu_name": "Sachin Sahu",
                                                                     "major": " Commerce"
                                                                      },
                                                                   {
                                                                     "stu_id": 3,
                                                                     "stu_name": "Reshma Sahu",
                                                                     "major": " Biology"
                                                                      }]

                                                                                     Student Key-Value
                                                                        Keys                               Values
                                                                        1                          {"stu_id": 1,"stu_name": "Akhilesh Sahu","major": " Computer Science" }
                                                                        2                          {"stu_id": 2,"stu_name": "Sachin Sahu","major": " Commerce" }
                                                                        3                          {"stu_id": 3,"stu_name": "Reshma Sahu","major": " Biology" }
                                                                        4                          {"stu_id": 4,"stu_name": "Pooja Sahu","major": " Biotechnology" }

                                                                                         Graph Database
                                                                       
                                                                                           "stu_id": 2,
                                                                                           "stu_name": "Sachin Sahu",
                                                                                          "major": " Commerce"
                                                                                       / /                 \ \
                                                                                      / /                   \ \
                                                                                     / /                     \ \
                                                                                  stu_id:1                     "stu_id": 3
                                                                                  stu_name:Akhilesh Sahu ---   "stu_name": "Reshma Sahu"
                                                                                  major:Computer Science  ---  "major": " Biology"

*/
/*
SQL-Structure Query Language is standard language
     We use to interact to our databses
   query- find all detail of student
           Student Table(Rows-Columns)                                     
     Stu_id        stu_name         major                        
     1            Akhilesh sahu    Computer Science                 
     2            Sachin Sahu      Commerce                           
     3.           Reshma Sahu      Biology                           
     4.           Pooja Sahu       Biotechnology

*/
    select * from student;    
    /*                             
     Stu_id        stu_name         major                        
     1            Akhilesh sahu    Computer Science                 
     2            Sachin Sahu      Commerce                           
     3.           Reshma Sahu      Biology                           
     4.           Pooja Sahu       Biotechnology
     */


     select * from student where major="computer Science";
/*
      Stu_id        stu_name         major                        
     1            Akhilesh sahu    Computer Science   
*/
/*
How to create Database-:
              create database <databaseName>; */
                    create database student;
/*
How to delete database-:
              drop database <databaseName>; */
                    drop database student;
/*
     // show database;
             describe databasename;*/
                    describe student;

              use databasename; 
/*

 /*
            DataType-: Numeric Types 
                                 -> int
                                 -> smallint
                                 -> tinyint
                                 -> mediumint
                                 -> bigint
                                 -> decimal
                                 -> Numeric
                                 -> float
                                 -> double
                                 -> bit
                       String Types
                                  -> char
                                  -> varchar
                                  -> binary
                                  -> varbinary
                                  -> blob
                                  -> tinyblob
                                  -> mediumblob
                                  -> longblob
                                  -> text
                                  -> tinytext
                                  -> mediumtext
                                  -> longtext
                                  -> enum
                        Date Types
                                  -> Date
                                  -> datetime
                                  -> timestamp
                                  -> time
                                  -> year

/*
/* most used datatpye-:
                 int (11 digit )
                 varchar (1 to 255 character) variable length
                 date(yyyy-mm-dd)

*/

creating tables-:
          create table tablename
              (
                column_name1 data_type,
                column_name2 data_type,
                column_name3 data_type,
                column_name4 data_type,
              );

          -> create table students
            (
            stu_id int,
            stu_name varchar(55),
            major varchar(100)
            );

describe students;   
or
desc students;
or
show columns from students;  

Field     Type         Null Key  Default Extra
stu_id	  int        	 YES			 null
stu_name  varchar(55)	 YES			 null
major	    varchar(100) YES			 null

Delete table 
        drop table tablename;
          -> drop table students;

Insert data into 
         insert into table_name(column1,column2,column3,....)
                     values(values1,values2,values3,.....);
            or
         insert into table_name values(values1,values2,values3,.....);           
             -> insert into students values(1,'Akhilesh Sahu','computer Science');

show databses;

show tablename;
     ->show students;
  
  Null -: the value is not known.
           null does means zero.

  not null-: we can not this fieald is blank
   create table students
            (
            stu_id int not null,
            stu_name varchar(55) not null,
            major varchar(100)
            );

   select * from students;
    Stu_id        stu_name         major                        
     1            Akhilesh sahu    Computer Science                 
     2            Sachin Sahu      Commerce                           
     3.           Reshma Sahu      Biology                           
     4.           Pooja Sahu       Biotechnology

Default value-:
  alter table student modify(major Default "not alloted");
          

     


                                    
