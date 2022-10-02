
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
###      $\textcolor{blue}{\text{Less than 1 percent of reviews in the jewelry reviews dataset are Vine reviews}}$  

In the dataset, less than 1 percent of reviews are by Vine reviewers versus non-Vine reviewers.  Analysis of datasets of additional product category reviews would be needed to determine if this is a typical percentage of Vine reviews throughout other product categories.

![Percent_Paid_to_Unpaid_Reviews](https://user-images.githubusercontent.com/107505166/193471022-d85b7bfd-e554-4e09-b950-2b375923287b.PNG)
<b>   </b>  

Even after extracting the dataset from the vine table that filters for products with more than 20 reviews and with a ratio of helpful votes to total votes > .5, the percentage of Vine to non-Vine reviews remains miniscule at less than 1 percent.
![helpful votes ratio](https://user-images.githubusercontent.com/107505166/193471783-7fec6a63-0cfd-495f-a2e6-aece0ebbecc5.PNG)

<b> 2. Usage by gender: </b>   
### $\textcolor{blue}{\text{More bike usage by males}}$  
In this visualization, unique bike trips are charted by the gender of the user.  Male users account for nearly $\textcolor{blue}{\text {two-thirds}}$  of all trips.  

<img src="https://user-images.githubusercontent.com/107505166/191404225-40fefa48-899b-43c0-b6b5-a5bfe86e23fa.PNG" width="600" height="300">

<b>   </b>  
<b>   </b> 
<b> 3. Usage trends per time of day and day of the week: </b> 
### $\textcolor{blue}{\text{Peak usage is during typical commuting hours and on weekends}}$  
This heat map visualization shows areas of concentrated bike usage by hour of day and day of week.  We can see that usage is generally heaviest during weekday morning and late afternoon hours in a pattern that correlates with typical commuter patterns, with the second heaviest concentration on weekends.   Usage on Wednesday afternoons need further exploration!  

![Heat map2](https://user-images.githubusercontent.com/107505166/191406526-73bdd1ec-aefe-4864-bc54-fa47a917ca1a.PNG)

<b>   </b>  
<b>   </b> 
<b> 4. Customer type as factor in usage </b> 
### $\textcolor{blue}{\text{Subscribers rule!}}$  
This chart showing unique CitiBike trips by user type shows that over $\textcolor{blue}{\text {eighty percent}}$ of CitiBike trips are taken by subscribers versus non-subscribing customers.


<img src="https://user-images.githubusercontent.com/107505166/191409125-92c87bd0-6859-48e3-accf-8d6e9d066ef7.PNG" width="600" height="300">
<p>&nbsp;</p>
This heat map showing the distribution of unique bike ride by time of day, hour of day, subscriber status and gender, graphically demonstrates that $\textcolor{blue}{\text{male subscribers}}$ are the $\textcolor{blue}{\text{heaviest users}}$ of CitiBikes and take the most trips.
<img src="https://user-images.githubusercontent.com/107505166/191627942-337721c6-1d3c-431d-bbdd-c152967cd601.png" width="600" height="300">


## Summary of Findings and Recommendations for further Research

* Analysis of NY CitiBike trip data shows a distribution of bike trips that mimics that of motorized vehicular traffic:  CitiBike trips are most frequent during typical work/school commute times and on the weekends.
* It also shows that the trips taken are quite short - substantially under twenty minutes.  
* This trip pattern of short trips during high traffic activity times of the day and week shows the CitBike program successfully meeting transportation needs for many customers in a high-density urban area.   It also appears to fit the needs identified for a bike sharing program in Des Moines:  an easy and enjoyable transportation alternative for residents there.  


#### Published analyses of success factors for bikesharing programs throughout the United States include these common factors:
 1. Extent of existing bike infrastructure (bike lanes and other infrastructure)
 2. Integration with an existing public transit systems to allow for easy bike-to-transit links
 3.  Moderate weather and moderate terrain 
 
* https://www.bbc.com/future/article/20210112-the-vast-bicycle-graveyards-of-china
* https://theconversation.com/heres-what-bike-sharing-programs-need-to-succeed-85969

---

  ### Des Moines currently boasts an existing bike trail system, a public transit system and a flat terrain.  The weather is similar to that of New York City. 
  
  ---

 $\textcolor{green}{\text{ Des Moines Bike Trail System}}$
 ![Des Moines Bike map](https://user-images.githubusercontent.com/107505166/191652999-eb56c0fd-f4d2-4497-89f2-990d080d457c.PNG)

 $\textcolor{green}{\text{ (Des Moines DART Public Transit System}}$
![Dart](https://user-images.githubusercontent.com/107505166/191653014-2567161c-ba72-4354-bbb3-99da336deb95.PNG)

 $\textcolor{green}{\text{ (Weather Comparison New York City vs. Des Moines)}}$
 
<img src="https://user-images.githubusercontent.com/107505166/191654357-051ca634-1d09-40fa-b341-b34ab2fffdb4.PNG" width="600" height="400">

---

### $\textcolor{blue}{\text{Recommendations for Further Analysis of NY CitiBike Data set}}$  
 * Using geographic data in the NY CitiBike data set, it is recommended to explore how the presence of bike-lane and bike-bridge infrastructure affect bike usage.   These insights may be helpful in evaluating whether Des Moines current bike trail system is ready to successfully support a bike sharing program.
 * As linkage between existing mass public transit systems and bike share programs appears to be an important factor in the success of bike sharing programs, it will be important to explore the NY CitiBike data set and investigate how many bike trips begin and end near mass public transit entry and exit points.
 *  Des Moines has similar weather to NY City except that it is slightly colder in the winter, and receives moderately more snowfall.   It will be important to investigate patterns of CitiBike usage during winter months in New York to better understand how winter weather conditions affect trip usage and to gain insights into how winter weather might affect bike share program bike usage in Des Moines in winter months.
 
