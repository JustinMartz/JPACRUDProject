# JPACRUDProject

Week 9 homework by Justin Martz

### Description

My project models a web portal a therapist might use to keep track of her clients.

In the database, several columns are defined, only three of which are non-null: <code>id</code>, <code>first_name</code>, and <code>last_name</code>. 

When the index JSP loads the user can see a list of all entries in the database with the option to create a new entry, or display all columns of an existing entry by clicking on the client's name. When a client's full details are displayed the user has the option of updating those details or deleting the whole client entry.

When creating a new client entry via the JSP, <code>id</code> is auto-generated and <code>first_name</code> and <code>last_name</code> are required to be filled out by the user.





### Technologies Used

- Java
- Java Persistence API
- Spring / Spring Boot
- HTML / CSS
- MySQL / MySQL Workbench

### Lessons Learned

This assignment hammered home doing CRUD operations in a database with the JPA. It also allowed me to learn and apply more CSS.
