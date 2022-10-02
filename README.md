
# $\textcolor{brown}{\text{Amazon Vine Review Analysis}}$  
<img src="https://user-images.githubusercontent.com/107505166/193470149-07a213e4-298d-4a2a-a235-127d78963a3d.PNG" width="400" height="400"> 

## Overview of the Project:
The purpose of this project, using a dataset of Amazon product reviews available through Amazon AWS, is to analyze a set of reviews for one distinct product category - in this case the Jewelry product category - and try to determine if there is a bias toward favorable ratings when the reviewer is part of the Vine program.  Reviewers who are not part of the Vine program receive no compensation for the product reviews they provide on Amazon's website, but Vine program reviewers are compensated by being allowed to keep the product that they review free of charge.  

## Dataset 
The dataset contains this information:
![dataset](https://user-images.githubusercontent.com/107505166/193470925-d9e45131-e929-4c4e-9d14-57c0e4587df7.PNG)

## Results  
<b>   </b>  
### 1. Number of Vine reviews versus non-Vine reviews:</b>   
###  *    $\textcolor{blue}{\text{Less than 1 percent of reviews in the jewelry reviews dataset are Vine reviews}}$  

In the dataset, less than 1 percent of reviews are by Vine reviewers versus non-Vine reviewers.  Analysis of datasets of additional product category reviews would be needed to determine if this is a typical percentage of Vine reviews throughout other product categories.

![Percent_Paid_to_Unpaid_Reviews](https://user-images.githubusercontent.com/107505166/193471022-d85b7bfd-e554-4e09-b950-2b375923287b.PNG)
<b>   </b>  

Even after filtering the table to use only those rows with more than 20 total-votes and with a ratio of helpful votes to total votes > 50%, the percentage of Vine to non-Vine reviews remains miniscule at less than 1 percent.
![helpful votes ratio](https://user-images.githubusercontent.com/107505166/193471783-7fec6a63-0cfd-495f-a2e6-aece0ebbecc5.PNG)
<b>   </b>  



### 2.Prevalance of 5 star ratings: 
The query output below shows the prevalance of 5-star ratings in the dataset and in Vine and non-Vine reviews.   There are many more non-Vine reviews in the dataset than Vine reviews, so we'll need to look at the percentage of 5 star ratings in bullet point #3 to get a sense of what the proportion of 5-star ratings is in each set of review type (Vine, non-Vine).
<b>   </b> 
![5-star-ratings](https://user-images.githubusercontent.com/107505166/193473202-d9f2cd41-f5c9-4243-8734-927d44a8456e.PNG)


### 3.Percentage of 5 star ratings for Vine reviews versus non-Vine reviews: 
###   *   $\textcolor{blue}{\text{Non-Vine reviews have a higher percentage of 5-star ratings}}$  
The query output below shows that the percentage of 5 star ratings for unpaid non-Vine reviews is approx. 57% , versus a slightly lower 50% for the paid Vine reviews.
<b>   </b>  
![Paid_UnPaid_Reviews_Analysis](https://user-images.githubusercontent.com/107505166/193471956-f9c143ba-375d-43ba-9268-721d924e779b.PNG)

## Summary of Findings 

* In the Amazon Jewelry product category review dataset there are very few Vine reviews proportionally to non-Vine program reviews.
* The analysis of the dataset shows that there is a slight bias for 5-star ratings in the non-Vine reviews versus the Vine reviews.


### $\textcolor{blue}{\text{Recommendations for Further Analysis}}$  
 * It will be helpful to understand whether the jewelry review dataset is an anomaly in having such a small percentage of Vine reviews - it's recommended to extract proportion of Vine reviews to non-Vine reviews from several other product category datasets for comparison.
 * With the jewlery review dataset used here, further analysis of the star ratings could be done - for example, an analysis of average star-rating for Vine reviews versus average star-ratings for non-Vine reviews would be a useful measure of positivity of Vine reviews vs. non-Vine reviews.
 
 
