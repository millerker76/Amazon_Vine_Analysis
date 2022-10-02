
# $\textcolor{brown}{\text{Amazon Vine Review Analysis}}$  
<img src="https://user-images.githubusercontent.com/107505166/193470149-07a213e4-298d-4a2a-a235-127d78963a3d.PNG" width="400" height="400"> 

## Overview of the Project:
The purpose of this project, using a data set of Amazon product reviews available through Amazon AWS, is to analyze a set of reviews for one distinct product category - in this case the Jewelry product category - and try to determine if there is a bias toward favorable ratings when the reviewer is part of the Vine program.  Reviewers who are not part of the Vine program receive no compensation for the product reviews they provide on Amazon's website, but Vine program reviewers are compensated by being allowed to keep the product that they review free of charge.  

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

Even after extracting the dataset from the vine table that filters for products with more than 20 reviews and with a ratio of helpful votes to total votes > 50%, the percentage of Vine to non-Vine reviews remains miniscule at less than 1 percent.
![helpful votes ratio](https://user-images.githubusercontent.com/107505166/193471783-7fec6a63-0cfd-495f-a2e6-aece0ebbecc5.PNG)
<b>   </b>  



### 2.Prevalance of 5 star ratings: 
###   *   $\textcolor{blue}{\text{Non-Vine reviews have a higher percentage of 5-star ratings}}$  
The query output below shows the prevalance of 5-star ratings in the dataset.
<b>   </b> 
![5-star-ratings](https://user-images.githubusercontent.com/107505166/193473202-d9f2cd41-f5c9-4243-8734-927d44a8456e.PNG)


### 3.Prevalance and Percentage of 5 star ratings for Vine reviews versus non-Vine reviews: 
###   *   $\textcolor{blue}{\text{Non-Vine reviews have a higher percentage of 5-star ratings}}$  
The query output below shows that the percentage of 5 star ratings for unpaid non-Vine reviews is approx. 57% , versus a slightly lower 50% for the paid Vine reviews.
<b>   </b>  
![Paid_UnPaid_Reviews_Analysis](https://user-images.githubusercontent.com/107505166/193471956-f9c143ba-375d-43ba-9268-721d924e779b.PNG)

## Summary of Findings and Recommendations for further Research

* In the Amazon Jewelry product category review data set there are very few Vine reviews proportionally to non-Vine program reviews.
* There are many more 5 star 
* The analysis of the dataset shows that there is a slight bias for 5-star ratings in the non-Vine review


### $\textcolor{blue}{\text{Recommendations for Further Analysis of NY CitiBike Data set}}$  
 * Using geographic data in the NY CitiBike data set, it is recommended to explore how the presence of bike-lane and bike-bridge infrastructure affect bike usage.   These insights may be helpful in evaluating whether Des Moines current bike trail system is ready to successfully support a bike sharing program.
 * As linkage between existing mass public transit systems and bike share programs appears to be an important factor in the success of bike sharing programs, it will be important to explore the NY CitiBike data set and investigate how many bike trips begin and end near mass public transit entry and exit points.
 *  Des Moines has similar weather to NY City except that it is slightly colder in the winter, and receives moderately more snowfall.   It will be important to investigate patterns of CitiBike usage during winter months in New York to better understand how winter weather conditions affect trip usage and to gain insights into how winter weather might affect bike share program bike usage in Des Moines in winter months.
 
