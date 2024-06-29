<h1>Crowdfunding ETL Project</h1>

This project is for practicing building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, you will create four CSV files and use the CSV file data to create an ERD and a table schema and upload the CSV file data into a Postgres database.

## Instructions

[Create the Category and Subcategory DataFrames](#Create-the-Category-and-Subcategory-DataFrames)\
[Create the Campaign DataFrame](#Create-the-Campaign-DataFrame)\
[Create the Contacts DataFrame](#Create-the-Contacts-DataFrame)\
[Create the Crowdfunding Database](#Create-the-Crowdfunding-Database)

### Create the Category and Subcategory DataFrames <a name="Create-the-Category-and-Subcategory-DataFrames"></a>

Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
<li>A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories</li>
<li>A "category" column that contains only the category titles</li>
Export the category DataFrame as category.csv and save it to your GitHub repository.

Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
<li>A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories</li>
<li>A "subcategory" column that contains only the subcategory titles</li>
Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

### Create the Campaign DataFrame <a name="Create-the-Campaign-DataFrame"></a>

Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

<li>The "cf_id" column</li>
<li>The "contact_id" column</li>
<li>The "company_name" column</li>
<li>The "blurb" column, renamed to "description"</li>
<li>The "goal" column, converted to the float data type</li>
<li>The "pledged" column, converted to the float data type</li>
<li>The "outcome" column</li>
<li>The "backers_count" column</li>
<li>The "country" column</li>
<li>The "currency" column</li>
<li>The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format</li>
<li>The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format</li>
<li>The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame</li>
<li>The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame</li>\

Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

### Create the Contacts DataFrame <a name="Create-the-Contacts-DataFrame"></a>
Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

##### Option 1: Use Python dictionary methods.

##### Option 2: Use regular expressions.

If you chose Option 1, complete the following steps: <a name="Use-Python-dictionary-methods"></a>

Import the contacts.xlsx file into a DataFrame.
Iterate through the DataFrame, converting each row to a dictionary.
Iterate through each dictionary, doing the following:
Extract the dictionary values from the keys by using a Python list comprehension.
Add the values for each row to a new list.
Create a new DataFrame that contains the extracted data.
Split each "name" column value into a first and last name, and place each in a new column.
Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
If you chose Option 2, complete the following steps:

Import the contacts.xlsx file into a DataFrame.
Extract the "contact_id", "name", and "email" columns by using regular expressions.
Create a new DataFrame with the extracted data.
Convert the "contact_id" column to the integer type.
Split each "name" column value into a first and a last name, and place each in a new column.
Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.
Check that your final DataFrame resembles the one in the following image:

final contact DataFrame

### Create the Crowdfunding Database <a name="Create-the-Crowdfunding-Database"></a>
Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..

Use the information from the ERD to create a table schema for each CSV file.

Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

Create a new Postgres database, named crowdfunding_db.

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table.

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each.
