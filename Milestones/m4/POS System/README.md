# Milestone 4: PHP Project
###A POS System

## Project Background and Description
For this milestone we will build a point-of-sale (POS) system that a retailer might use to keep track of customers, invoices, and the items that are for sale. This project will be *very* light on visual design and will focus on database interactions. The project will include CRUD (Create, Retrieve, Update, Delete) on the invoices entity only. There are bonus tasks that you can do once you have **fully** met the acceptance criteria. 

## Project Scope

##Acceptance Criteria
- use the database sql file provided to create the POS database, tables, and content on your local environment
- **Home page**
  - include a header with the name of your retail store and links to a *Customers*, *Items*, and *Invoices* page
- **Customers page**
  - include a header that reads *Customers*, a link to the home page, and a table that has two columns: *Customer Name* and a link for *New Invoice*
  - this page should retrieve a list of customers from the database for the user to view
  - when the *New Invoice* link is clicked, it should take the user to a new page where he/she can add items to a new invoice that has been created(see *New Invoice* page information below)
- **Items page**
  - include a header that reads *Items*, a link to the home page, and a table that has two columns: *Item Name* and *Price*
  - this page should retrieve a list of items and the appropriate price of each item from the database for the user to view
- **Invoices page**
  - include a header that reads *Invoices*, a link to the home page, and a table that has four columns: Invoice #, Customer Name, Total (which is the total sum of the invoice), and a link that reads *Details*
  - this page will allow the user to view a list of invoices with the appropriate customer name and total for that invoice retrieved from the database
  - when the *Details* link is clicked, it should take the user to a new page where he/she can view the details of that invoice (see *Invoice Details* page information below)
- **New Invoice page**
  - this page should simply be an INSERT statement that creates a new invoice in the database for the appropriate customer, then grabs the last inserted invoice id and passes that invoice id to the invoice details page.
  - the user does not actually see this page
- **Invoice Details page**
  - include a header that reads *Invoice #`{{invoice_id}}`*, a link to take the user back to the invoices page, a link to return the user to the home page, a table that has five columns: Quantity, Item, Cost, Sub-Total (item * cost), and a link that reads *Remove*
  - also include two input fields and a link that reads *Add* below the table that allows the user to add a certain number of items to the invoice
  - the first input field should be for the number of items the customer wants to buys, and the second input field should be a drop down box that has a list of items from the database (it would also match the list of items on the items page)

##Tips

####Bonus
If you have everything under acceptance criteria **fully** functional, and you have time, then you can attempt the folloiwng bonus items:
- **Customer page**
  - add two more columns, one that has a link for *Edit* and the other has a link to *Remove*
  - add a link at the bottom of the table that allows the user to add a new customer
  - make the *Edit* link functional by allowing the user to edit the customer name and/or information
    - this link should take the user to a page that includes a header that reads *Edit Customer*, a link that returns the user to the home page, has the following input fields: First Name, Last Name, email, gender, and each field is populated with the current data of the customer
    - the input field for gender should be a drop down box that has the current gender data of the customer automatically showing
    - below the input fields should be a link for *Update* and a link for *Cancel* that are functional
  - make the *Remove* link functional by allowing the user to delete that customer and his/her information from the database
  - make the link to add a new customer functional by taking the user to a new page
    - the new page should have a header that reads *New Customer*, has a link to return to the home page, has the following input fields: First Name, Last Name, email, gender (with gender being a drop down box that defaults to 'male'), and two links below the input fields. One link for *Create* and one link for *Cancel* that are functional
- **Items page**
  - add two more columns, one that has a link for *Edit* and the other has a link to *Remove*
  - add a link at the bottom of the table that allows the user to add a new item
  - make the *Edit* link functional by allowing the user to edit the item name and/or price
    - this link should take the user to a page that includes a header that reads *Edit Item*, a link that returns the user to the home page, has the following input fields: Item Name and Price, and each field is populated with the current data for the item
    - below the input fields should be a link for *Update* and a link for *Cancel* that are functional
  - make the *Remove* link functional by allowing the user to delete that item and its price from the database
  - make the link to add a new item functional by taking the user to a new page
    - the new page should have a header that reads *New Item*, has a link to return to the home page, has the following input fields: Item Name and Price, and two links below the input fields. One link for *Create* and one link for *Cancel* that are functional

