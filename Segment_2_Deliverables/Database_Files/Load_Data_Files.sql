SELECT * FROM clean_merge_df

SELECT * FROM median_house_df

CREATE TABLE complete_ca_data AS
    SELECT clean_merge_df."Year", 
	clean_merge_df."County",
	clean_merge_df."Population_Size",
	clean_merge_df."Unemployment_Rate",
	clean_merge_df."Median_Household_Income",
	median_house_df."CPI", median_house_df."Median_House_Price"
	FROM clean_merge_df
	INNER JOIN median_house_df
	ON median_house_df."Year" = clean_merge_df."Year" 
	AND median_house_df."County" = clean_merge_df."County"
	
SELECT * FROM complete_ca_data
	