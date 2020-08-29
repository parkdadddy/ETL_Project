# ETL_Project

## Group member:
Kom
Parker

### Police Shooting vs. Gun Violence vs. U.S State income & education
Source of data:

csv:
Gun Violence Data Comprehensive record of over 260k US gun violence incidents from 2013-2018 (https://www.kaggle.com/jameslko/gun-violence-data)
Data Police shootings Database of every fatal shooting in the United States by a police officer (https://www.kaggle.com/mrmorj/data-police-shootings)

Web scraping:
List of U.S. states and territories by educational attainment (https://en.wikipedia.org/wiki/List_of_U.S._states_and_territories_by_educational_attainment)
House income in the united states (https://en.wikipedia.org/wiki/Household_income_in_the_United_States)

*** note: the gun violence is over 100mb which cannot be uploaded to github repo

### Transfoamtion of the data
The tranformation that was required:

- renaming the columns so that the table can be loaded into sql database
- remove any uneccessary columns 
- convert string into datetime for the gun violence and police shooting data
- aggregating the two state income and education tables
- the state code in the table needed to bechanged to the full state name

### The type of final production database to load the data into (relational or non-relational)
We are choosing realtional database for this project which is PostgresSQL, we will be using 'state' as our primary key, the common identifier.

### The final tables or collections that will be used in the production database
We have created three tables in SQL database, the person can link the databse via 'State'

For further analysis, the person can look into:
How will the income and education level impact on the happening of gun violence and police shooting of each state respectively?


