Readme Working Doc

# **Final Project Proposal**

## **Google Slides Link**
https://docs.google.com/presentation/d/1pzblo4LLJfESG_tqYN_aj5bdn-KawvwrXwqA17UNVBU/edit#slide=id.g1ccf87fbd16_0_49

## **A Team Members**
Demetrice Tuttle, Vanessa Neang, Monzerrath Mazas, Irene Hoang

## **Project Topic**
*Per the Los Angeles Almanac (https://www.laalmanac.com/economy/ec37.php) the median house price in LA County in 1992 was $214,005. The median house price in 2022 was $826,500 for the same county. This represents a 286% increase over 30 years.  Many factors may contribute to the rise in median house prices in a particular county. The goal of our project is to use Los Angeles. Riverside, San Diego and San Francisco counties as a sample and determine if population size, unemployment rate, median household income, the first time home buyer rate, and the Consumer Price Index influence median housing prices. If so, can these measures be used to predict the median house price in a particular county?*

## **Roles & Responsibilities**
* Segment 1: 
	* Circle: Vanessa Neang - Responsible for creating a database mockup with sample data
	* Square: Irene Hoang - Responsible for Github Repository
	* Triangle: Monzerrath Mazas - Responsible for list of technologies that will be used
	* X: Demetrice Tuttle - Responsible for Machine Learning Model Mockup

* Segment 2: 
  * Circle: Monzerrath Mazas - Responsible for creating data analysis charts
	* Square: Demetrice Tuttle - Responsible for Machine Learning Model
	* Triangle: Vanessa Neang - Responsible for database
	* X: Irene Hoang - Responsible for creating dashboard and Google Slides
	* Communication Protocol: Utilize the Tuesday & Thursday classes as well as using our slack channel for anything else we need to connect on offline.

## **Data Sources**
* We gathered the following data points from various sources for our analysis: 
	* Year
	* County
	* Population Size
	* Unemployment Rate
	* Median Household Income
	* Median House Price
	* Consumer Price Index - Urban Consumers

## **Technologies that will be Used**
* Pandas, Python, Jupyter Notebook, Tableau, pgAdmin, SQLite

## **Data Cleaning**
#### *Segment 2:* 
During the data exploration phase, we made a decision to focus on California and the counties of Los Angeles, Riverside, San Diego, and San Francisco. The data sources had a wide range of data across many years so we focused on the year range of 2003 - 2021. After cleaning the data, it resulted in three separate CSV files with the date range of 2003 - 2022. 

## **Database**
#### *Segment 2:* 
We used the three separate CSV files to import and connect the data into ElephantSQL. The three tables were merged within SQL to a final complete_housing_data table. The Updated ERD Diagram for the model is as follows: 
<img width="791" alt="Segment2_ERD_diagram" src="https://user-images.githubusercontent.com/110875578/212241997-b5ded318-6195-4b09-8953-daf7597333dc.png">

## **Machine Learning Model**
#### *Segment 2:*

Some of the analysis we have completed so far: 

Correlation:

<img width="500" alt="1" src="https://user-images.githubusercontent.com/110875578/212242079-e169ef95-8447-4631-af00-1452fc2c1127.png">

BoxPlot:

<img width="500" alt="2" src="https://user-images.githubusercontent.com/110875578/212242087-9a71937b-5b98-4ee7-a175-bb006cd15808.png">

Testing vs Training Data:

<img width="500" alt="3" src="https://user-images.githubusercontent.com/110875578/212242094-24b9df5a-c566-463f-a239-e7664174de46.png">



## **Dashboard**
#### *Segment 2:*
We will be utilizing Tableau and incorporating the following views to determine trends from our data: 
* Standard Views: 
  * Population of each county
  * Median House Income by Year
  * CPI-U by Year
  * First Time Buyer Rate by Year
  * Unemployment Rate by Year
  * Median House Price by Year
* Correlation Analysis of Multiple Metrics
  * Median House Income vs First Time Buyer Rate
  * Median House Income vs Median House Price
  * Median House Price vs First Time Buyer Rate
  * Median House Price vs CPI-U
  * Median House Price vs Unemployment Rate

County filter will be utilized to compare data between Los Angeles, Riverside, San Diego, San Francisco and California as a whole. We will also be additional linear regression model results as images into the dashboard.

Link to Dashboard: https://public.tableau.com/app/profile/irene.shin/viz/A_Team_Final_Project/Dashboard1 








