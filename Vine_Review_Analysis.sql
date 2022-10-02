--Filter the data and create a new DataFrame or table to retrieve all the rows where the total_votes count is equal to or greater than 20 to pick reviews that are more likely 
--to be helpful and to avoid having division by zero errors later on.
select * into votes_over_20 from vine_table where total_votes > 20

--Filter the new DataFrame or table created in Step 1 and create a new DataFrame or 
--table to retrieve all the rows where the number of helpful_votes divided by total_votes is \
--is equal to or greater than 50%.
select * into helpful_votes_ratio from votes_over_20 WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5

--create a new DataFrame or table that retrieves all the rows where a review was 
--written as part of the Vine program (paid)
select * into paid_ratings from helpful_votes_ratio where vine = 'Y'
select count(*) from paid_ratings

--create a new DataFrame or table that retrieves all the rows where a review was 
--NOT written as part of the Vine program (unpaid)
select * into unpaid_ratings from helpful_votes_ratio where vine = 'N'
select count(*) from unpaid_ratings

--get total number of paid reviews and total number of 5 star paid reviews
select count(review_id) from paid_ratings --Total_Paid_Reviews
select count(review_id) from paid_ratings where star_rating = '5' --Five_star_Paid_Reviews

--get total number of unpaid reviews and total number of 5 star unpaid reviews
select count(review_id) from unpaid_ratings --Total_UnPaid_Reviews
select count(review_id) from unpaid_ratings where star_rating = '5' --Five_star_UnPaid_Reviews

-- get count of 1,2,3,4 and 5-star ratings per review type (Vine vs. non-Vine)
select star_rating, vine as vine_review, count(star_rating) from helpful_votes_ratio group by star_rating, vine order by 1,2

--get percent of 5 star paid reviews vs. percent of 5 star unpaid reviews
select ( 
	    CAST(paid_five_star_reviews AS FLOAT)/CAST(total_paid_reviews AS FLOAT))  as percent_5_star_paid_reviews,
        CAST(unpaid_five_star_reviews AS FLOAT)/CAST(total_unpaid_reviews AS FLOAT)  as percent_5_star_unpaid_reviews		
	   from (
	select
    count(case when star_rating = '5' and vine = 'Y' then 1 end) as paid_five_star_reviews,
    count(case when vine = 'Y' then 1 end) as total_paid_reviews,
	count(case when star_rating = '5' and vine = 'N' then 1 end) as unpaid_five_star_reviews,
    count(case when vine = 'N' then 1 end) as total_unpaid_reviews
  from
    helpful_votes_ratio) as x

--get everything in one statement - tot reviews for paid, unpaid; tot 5 star reviews for paid, unpaid; 
-- percent 5 star paid reviews vs. percent of 5 star unpaid reviews
select (
  
	    CAST(paid_five_star_reviews AS FLOAT)/CAST(total_paid_reviews AS FLOAT))  as percent_5_star_paid_reviews,
		paid_five_star_reviews as tot_paid_5_star_reviews,
		total_paid_reviews  as tot_all_paid_reviews,
        CAST(unpaid_five_star_reviews AS FLOAT)/CAST(total_unpaid_reviews AS FLOAT)  as percent_5_star_unpaid_reviews,
		unpaid_five_star_reviews as tot_unpaid_5_star_reviews,
		total_unpaid_reviews as tot_all_unpaid_reviews
		
	   from (
	select
    count(case when star_rating = '5' and vine = 'Y' then 1 end) as paid_five_star_reviews,
    count(case when vine = 'Y' then 1 end) as total_paid_reviews,
	count(case when star_rating = '5' and vine = 'N' then 1 end) as unpaid_five_star_reviews,
    count(case when vine = 'N' then 1 end) as total_unpaid_reviews
  from
    helpful_votes_ratio) as x
