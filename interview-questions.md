# ASSESSMENT 6: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. As a developer, I am creating a Rails application with a model called Cohort that has_many students, but OOPS! I forgot to add the foreign key. How can I fix this mistake? What is the name of the foreign key? Would the foreign key be on the Cohort model or the Student model?

Your answer: I would first need to create a migration folder and would name it related to the foreign key name. In the terminal, I would type rails generate migration (folder name). That would create a folder in the migration folder. Inside the folder, I would need to add column to create the foreign key. The name of the foreign key is cohort_id. This name is based on the name of the model table that I already created. The foreign key should be included in the student table since it is created together with the student table data.

Researched answer: Create a migration file. Inside the file, add a column with the name of the foreign key to create the foriegn key. Then do rails db:migrate on a terminal to apply changes to the database of the student table. The name of the foreign key is cohort_id and will be inside the student model.

2. Which RESTful routes must always be passed params? Why?

Your answer: There are 5 restful routes that I believe that needs to have a params. Show is required to have a params because it need to have an ID to get the information that you want. Create needs an ID to create another data. Edit needs it to pull information from the database using the ID. Update needs the ID to find the data to replace the old information with the new information you just created and the last one is destroy, as it need to find a data using the ID params and delete the data that you selected.

Researched answer: Show, edit, update and destroy are the only restful routes that always passed params, like their ID as they need to have parameter to pull from for their function to work.

3. Name three rails generator commands. What is created by each?

Your answer: Model is one of the rails generator command and by typing this, it would create a table for your database. This includes data information inside your table together with the the type of data. For example, after generating a model Student, information about student should also be included like the name of a student, which is a string and the age which is an integer. Another one is the migrations folder. This folder is use to modify your database. It can be use to add more columns, delete, update the type of data on a table or rename a table. The last one is the rspect, where you can test every data you have and check whether it pass or fail the expected outcome.

Researched answer: The model generator create a table in the database together with the data and data type. Controller method creates a class that runs the restful routes that create, read, update and delete files inside database. Migration generator helps add, delete, rename and replace columns of the database.

4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

action: "GET" location: /students
INDEX controller would be called and would show all the data inside the table of the student.

action: "POST" location: /students
The CREATE method is called and will create a new data for the the table student.

action: "GET" location: /students/new
This will call on the NEW method and will show a form use to create a new data for the table student.

action: "GET" location: /students/2
The SHOW method will be use and will give the student information with and ID number base on the params which is 2.

action: "GET" location: /students/2/edit
EDIT controller method is use and will direct you to the data with and ID number 2, and inside this webpage, it would let you edit information.

action: "PATCH" location: /students/2
The UPDATE method lets you update the information inside the EDIT webpage, it would take all the information and replace the data inside the table base on the information you selected, in this case, the ID number 2 will be replace with a new information.

action: "DELETE" location: /students/2
This will use the DESTROY method inside the controller and will delete table data depending on the ID number. Clicking a column data will send ID information to DESTROY method and will delete information base on the ID.

5. As a developer, you are making an application to manage your to do list. Create 10 user stories that will help you get your application started. Read more about [user stories](https://www.atlassian.com/agile/project-management/user-stories).

=> As a user, I can see all my to do list on the home page
=> As a user, I can create a to do list by clicking create a to do list
=> As a user, I can see a form after clicking create
=> As a user, I can submit my to do list and show it at home page
=> As a user, I can update my to do list by clicking update on the home page
=> As a user, I can see a form to edit my to do list
=> As a user, I can update my selected to do list to a new list.
=> As a user, I can see the update to do list in my home page
=> As a user, I can delete my to do list
=> As a user, I will be redirected to home page after creating, deleting and updating my to do list
