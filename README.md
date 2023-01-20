Readme Working Doc

# **Final Project Proposal**

## **Google Slides Link**
https://docs.google.com/presentation/d/1pzblo4LLJfESG_tqYN_aj5bdn-KawvwrXwqA17UNVBU/edit#slide=id.g1ccf87fbd16_0_49

## **A Team Members**
Demetrice Tuttle, Vanessa Neang, Monzerrath Mazas, Irene Hoang

## **Project Topic**
*Our team was tasked by the state of California to confirm which key economic variables contributed to median house prices as a way to drive their legislative agenda for 2023. Focus of this project was to evaluate population size, unemployment rate, median household income, first time home buyer rate, and the Consumer Price Index and provide the state with an ongoing tool for future evaluation to test different changes in each variable across California and the counties of Los Angeles, Riverside, San Diego, and San Francisco as the year progresses. The state’s goal is to increase homeowner value in the state beyond standard year of year equity building.*

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

* Segment 3: 
  	* Circle: Irene Hoang - Create a dashboard to display your findings
	* Square: Vanessa Neang - Complete peer reviews on the code
	* Triangle: Monzerrath Mazas - Create a draft presentation to share with your class.
	* X: Demetrice Tuttle - Perform a quality assurance check on project deliverables against rubric requirements, and test the code

	
## **Data Sources**
* We gathered the following data points from various sources for our analysis: 
	* Year
	* County
	* Population Size
	* Unemployment Rate
	* Median Household Income
	* Median House Price
	* Consumer Price Index - Urban Consumers

## **Technologies that were Used**
* Pandas, Python, Jupyter Notebook, Tableau, pgAdmin, SQLite, ElephantSQL, SciKit

## **Data Cleaning**
During the data exploration phase, we made a decision to focus on California and the counties of Los Angeles, Riverside, San Diego, and San Francisco. The data sources had a wide range of data across many years so we focused on the year range of 2003 - 2021. After cleaning the data, it resulted in three separate CSV files with the date range of 2003 - 2022. 

## **Database**
We used the three separate CSV files to import and connect the data into ElephantSQL. The three tables were merged within SQL to a final complete_housing_data table. The Updated ERD Diagram for the model is as follows: 
<img width="791" alt="Segment2_ERD_diagram" src="https://user-images.githubusercontent.com/110875578/212241997-b5ded318-6195-4b09-8953-daf7597333dc.png">

## **Machine Learning Model**
#### *Segment 2:*
* Chosen Model: Scikit Linear Regression with Train_Test_Split

Steps: 
1. Final CSV Data was loaded into Pandas Dataframe and ‘County’ column was encoded for Machine Learning model	
2. Using Seaborn, a correlation heatmap is generated to determine X Values for linear regression model

<img width="500" alt="1" src="https://user-images.githubusercontent.com/110875578/212242079-e169ef95-8447-4631-af00-1452fc2c1127.png">

3. All variables listed were selected for linear regression model. ‘Year’ was excluded.
	* X Value(s): Population Size, Unemployment Rate, County, Median Household Income, First Time Buyer Rate, CPI
	* Y_Pred: House Price

<img width="500" alt="2" src="https://user-images.githubusercontent.com/110875578/212242087-9a71937b-5b98-4ee7-a175-bb006cd15808.png">

4. Data was split into X Train, Y Train, X Test, Y Test values based on percentage of each category in data set. Each category was had equal data rows (n = 19).

<img width="500" alt="3" src="https://user-images.githubusercontent.com/110875578/212242094-24b9df5a-c566-463f-a239-e7664174de46.png">

6. The linear regression model was chosen as it could compile all X-values and make a prediction of the Y with ease. This model, however, requires years of data that may not be available in all situations. 

7. For Segment 3, we did not re-adjust the model as the testing and training scores were both well above 90%. (Training Score = 0.95817 & Testing Score = 0.96215)

8. Ultimately, the model addresses the clients need to evaluate key economic variables against median household prices for a specific geographic area. 


## **Dashboard**
We utilized Tableau and incorporated the following views to determine trends from our data: 
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
  * Median House Income vs CPI-U
  * Median House Price vs First Time Buyer Rate
  * Median House Price vs CPI-U
  * Median House Price vs Unemployment Rate

County filter will be utilized to compare data between Los Angeles, Riverside, San Diego, San Francisco and California as a whole. We will also be additional linear regression model results as images into the dashboard.

Link to Dashboard: https://public.tableau.com/app/profile/irene.shin/viz/A_Team_Final_Project/Dashboard1 


## **Flask App**
We built a tool for future evaluation to test different changes in each variable across California and the counties of Los Angeles, Riverside, San Diego, and San Francisco as the year progresses. This form takes in the inputs of population size, unemployment rate, median household income, first time home buyer rate, and the Consumer Price Index to predict the Median House Price.

<img width="632" alt="A000993E-FA5D-49D1-B00D-2EBE86007454" src="https://user-images.githubusercontent.com/110875578/213621712-dcd49af4-034a-4996-8b97-6a5110242807.png">







