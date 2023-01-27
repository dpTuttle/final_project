Readme Working Doc

# **Final Project Proposal**

## **Google Slides Link**
https://docs.google.com/presentation/d/1pzblo4LLJfESG_tqYN_aj5bdn-KawvwrXwqA17UNVBU/edit#slide=id.g1ccf87fbd16_0_49

## **A Team Members**
Demetrice Tuttle, Vanessa Neang, Monzerrath Mazas, Irene Hoang

## **Project Topic**
*Our team was tasked by the state of California to confirm which key economic variables contributed to median house prices as a way to drive their legislative agenda for 2023. Focus of this project was to evaluate population size, unemployment rate, median household income, first time home buyer rate, and the Consumer Price Index and provide the state with an ongoing tool for future evaluation to test different changes in each variable across California and the counties of Los Angeles, Riverside, San Diego, and San Francisco as the year progresses. The state’s goal is to increase homeowner value in the state beyond standard year of year equity building.*

## **Data Sources**
* We gathered the following data points from various sources for our analysis: 
	* Year
	* County
	* Population Size
	* Unemployment Rate
	* Median Household Income
	* Median House Price
	* Consumer Price Index - Urban Consumers

## **Technologies Used**
* Pandas, Python, Jupyter Notebook, Tableau, pgAdmin, SQLAlchemy, ElephantSQL, SciKit (Linear Regression Model), Flask, Vercel

## **Data Exploration**
During the data exploration phase, we made a decision to focus on California and the counties of Los Angeles, Riverside, San Diego, and San Francisco. The data sources had a wide range of data across many years so we focused on the year range of 2003 - 2021. After cleaning the data, it resulted in three separate CSV files with the date range of 2003 - 2022. 

## **Database**
We used the three separate CSV files to import and connect the data into ElephantSQL. The three tables were merged within SQL to a final complete_housing_data table. The Updated ERD Diagram for the model is as follows: 
<img width="791" alt="Segment2_ERD_diagram" src="https://user-images.githubusercontent.com/110875578/212241997-b5ded318-6195-4b09-8953-daf7597333dc.png">

## **Dashboard**
We used Tableau as our tool for data visualization by using the exported database CSV file from Elephant SQL. In this dashboard, on the top right, we have 5 filters for the 4 counties and all of California. Clicking on this will adjust the data in the entire dashboard.To answer the initial question: “How do certain variables affect housing prices in an area?”, we first mapped out the 5 different variables across time.

* First Time Buyer Rate is highest in Riverside, trending above the average for California. San Francisco has the lowest rate out of all the counties. The FTB rates were highest between 2008 - 2011 and have been steadily decreasing since then.

* Median House Prices are highest in San Francisco, trending above the California average, while Riverside is the lowest. After a drop in 2008, prices have been steadily increasing the last several years, with San Francisco increasing at a faster rate than the other counties.

* Unemployment Rate spiked in 2008 and then steadily decreased up through 2019. All counties are shown to have spiked in 2020, most likely due to the COVID pandemic causing economic uncertainty.

* Median House Income is highest in San Francisco, and all counties have been steadily increasing since 2003.

* Consumer Price Index of Urban Workers is lowest in Riverside while San Diego and San Francisco counties lead with the highest rates.

Next, we looked at the different variables against Median House Price to determine whether a correlation can be determined.

* We see a negative correlation between Median House Price and First Time Buyer rate, where we see MHP increasing as FTB decreases and vice versa. 

* Median House Price and Unemployment rate have a negative correlation until 2019. Starting in 2019, a positive correlation that can be seen where both increases together. 

* The other variables, Median House Income, CPI, and Population seem to have no correlation with Median House Price.

After reviewing the dashboard, we used the machine learning model to further determine the correlation of the variables that affect median housing prices.

Link to Tableau Dashboard: https://public.tableau.com/app/profile/irene.shin/viz/A_Team_Final_Project/Dashboard1 


## **Machine Learning Model**
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


## **Flask App**
We built a tool for future evaluation to test different changes in each variable across California and the counties of Los Angeles, Riverside, San Diego, and San Francisco as the year progresses. This form takes in the inputs of population size, unemployment rate, median household income, first time home buyer rate, and the Consumer Price Index to predict the Median House Price.

<img width="632" alt="A000993E-FA5D-49D1-B00D-2EBE86007454" src="https://user-images.githubusercontent.com/110875578/213621712-dcd49af4-034a-4996-8b97-6a5110242807.png">

## **Conclusion**
With analyzing population size, unemployment rate, median household income, first time home buyer rate, and the Consumer Price Index, we saw the impact that these economic variables have on the median house price and it encourages people to rent rather than to buy houses. It would be ideal that the government focused on improving these variables in median household income because it can promote owning houses rather than buying and it can also benefit those who own houses by increasing home value. 






