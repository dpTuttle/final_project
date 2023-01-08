--Merge two tables in SQL
CREATE TABLE complete_housing_data AS
SELECT clean_merge_df."Year", clean_merge_df."County",clean_merge_df."First_Time_Buyer_Rate",clean_merge_df."Median_Household_Income",
clean_merge_df."Population_Size", clean_merge_df."Unemployment_Rate",median_house_df."Median_House_Price",
median_house_df."CPI-U"
FROM clean_merge_df
LEFT OUTER JOIN
    median_house_df 
ON
    clean_merge_df."County" = median_house_df."County" AND clean_merge_df."Year" = median_house_df."Year"
	
SELECT * FROM complete_housing_data
-- Order by county and year
SELECT * FROM complete_housing_data
ORDER BY ("County"),("Year") ASC

-- DROP TABLE complete_housing_data