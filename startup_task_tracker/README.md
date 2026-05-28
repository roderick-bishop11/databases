Small Startup Task Tracker

Project Overview

A 10-person software startup needs a simple internal system to track engineering projects, employee assignments, task status, and time spent. The database should support basic reporting such as overdue tasks, employee workload, and project summaries through joins and views.


How to use:
- spin up a docker container for the db to build and run. 
    ` docker-compose up -d` this will startup and build the db. 

- connect to your local instance of DB using whatever app you'd like. see docker-compose for details. 

- run the startup scripts to initialize the database. see `startup` folder. 

- open up a query console, and run the queries in `general_queries.sql` to demonstrate what I've built. 


Database Design

The schema uses 6 tables with clear one-to-many and many-to-many relationships. Foreign keys enforce integrity, and simple indexes are suggested on join columns.



