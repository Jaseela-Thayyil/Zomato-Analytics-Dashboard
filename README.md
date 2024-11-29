# Zomato-Analytics-Dashboard
# Project Objective
To analyze Zomato's restaurant data and gain insights into restaurant distribution, customer preferences, and operational performance across multiple countries using data visualization tools like Excel, Power BI, Tableau, and SQL.
# Dataset Used
The project uses Zomato's restaurant dataset with the following key fields:

#### Restaurant Details:
Restaurant ID, Name, Address, Locality, and Country Code.
#### Operational Metrics:
Average Rating, Average Cost for Two, Table Booking Option, and Online Delivery Option.
#### Categorical Data: 
Cuisines, Votes, and Price Buckets.
The dataset also includes a Country Code Mapping file to associate country names with respective codes.
<a href="https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/Zomato%20%20Data.x">Dataset</a>
# Key Questions (KPIs)
The analysis addresses the following business questions:

1. How many restaurants are there in each country and city?

2. What is the year-wise and month-wise trend of restaurant openings?

3. What percentage of restaurants offer table booking and online delivery?

4. How are restaurants distributed by price buckets?

5. Which countries and cities have the highest number of restaurants?

6. What are the top-rated restaurants and their distribution across ratings?

7. Which restaurants have the most votes?

8. Cards: Total Restaurant count,total cities,total cuntries,cuisines,Average Ratings..

# Process
The project followed a structured process to analyze and visualize the data:
### Step 1: Data Cleaning and Preparation (SQL)
1. Used SQL queries to clean and structure the raw data for analysis.

2. Merged the country code mapping with the main dataset.

### Step 2: Exploratory Data Analysis (Excel)
1. Conducted initial exploration of the data using pivot tables and charts.

2. Created basic dashboards to identify trends and patterns.

### Step 3: Advanced Visualization (Power BI & Tableau)
1. Built interactive dashboards in Power BI and Tableau for deep dives into metrics like restaurant trends, ratings, and delivery options.

2. Added slicers for year, country, and financial quarters to enable detailed filtering.
### Step 4: Insights Extraction
1. Analyzed KPIs using visualizations to identify actionable business insights.
# Dashboards
### Excel Dashboard


![Screenshot of Applicatio ](https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/zomato%20excel%20db.png)
<a href="https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/Zomato%20project%20excel.xlsx">view dashbord</a>
### Power Bi Dashboard
![Screenshot of Applicatio ](https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/Zomato%20powe%20bi%20db-1.png)

![Screenshot of Applicatio](https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/Zomato%20power%20bi%20db-2.png)
<a href="https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/Power%20bi%20project.pbix">view Dashboard</a>
### Tableau Dashboard
![Screenshot of Applicatio](https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/Zomato%20tableau%20db.png)
<a href="https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/Zomato%20Dashboard%20tableau.twbx">View Dashboard</a>
### SQL Queries: 
Used to extract insights from the dataset for visualization.
<a href="https://github.com/Jaseela-Thayyil/Zomato-Analytics-Dashboard/blob/main/zomatodash.sql">viewquery</a>
# Insights
Key insights derived from the analysis include:

#### 1. Country Distribution: 
India dominates with the highest number of restaurants (8.7k).
#### 2. Trends in Openings:
Highest restaurant openings in 2018 with a consistent increase since 2010.
March and September show peak restaurant openings.
#### 3. Booking Options:
Only 12.12% of restaurants offer table booking.
25.66% provide online delivery services.
#### 4. Price Buckets:
The majority of restaurants (3,512) fall into the lowest price range (0–300).
#### 5. Top Restaurants by Votes:
"Barbeque Nation" leads with the highest votes (28k).
# Final Conclusion
The analysis highlights key areas where Zomato can focus to improve its services and operational strategies:

Invest in promoting online delivery and table booking to increase adoption rates.
Target markets in high-potential countries and cities with fewer restaurants.
Focus marketing efforts on mid-to-high price bucket restaurants to improve profitability.
