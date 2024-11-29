create database zomato;
use zomato;
select count(*) from zomatofile;
select * from zomatofile;

 #--- for null
 
select count(*) as totalcount,
      count(`RestaurantID`)-count(case when `RestaurantID` is null then 1 end)as resturantid,
       count(`Resturant Name`)-count(case when  `Resturant Name`is null then 1 end)as resturant, 
       count(`CountryCode`)-count(case when `CountryCode` is null then 1 end)as CTYCD,
       count(`Country name`)-count(case when `Country name` is null then 1 end)as CTYN,
        count(`City`)-count(case when `City` is null then 1 end)as CT,
         count(`locality`)-count(case when `locality` is null then 1 end)as LOC,
         count(`Longitude`)-count(case when `Longitude`is null then 1 end)as LONGH,
         count(`Latitude`)-count(case when `Latitude` is null then 1 end)as LAT,
         count(`Cuisines`)-count(case when `Cuisines` is null then 1 end)as CUSIN,
         count(`Currency`)-count(case when `Currency` is null then 1 end)as CU$,
         count(`Has_Table_booking`)-count(case when `Has_Table_booking`is null then 1 end)as HTB,
         count(`Has_Online_delivery`)-count(case when `Has_Online_delivery` is null then 1 end)as HOD,
         count(`Is_delivering_now`)-count(case when `Is_delivering_now` is null then 1 end)as IDN,
         count(`Switch_to_order_menu`)-count(case when `Switch_to_order_menu` is null then 1 end)as STOM,
         count(`Votes`)-count(case when `Votes` is null then 1 end)as VT,
         count(`Price_range`)-count(case when `Price_range` is null then 1 end)as PR,
         count(`Financial Month`)-count(case when `Financial Month` is null then 1 end)aS FN,
         count(`Average_Cost_for_two`)-count(case when `Average_Cost_for_two`is null then 1 end)as ACF2,
         count(`Rating`)-count(case when `Rating` is null then 1 end)as RAT,
         count(`Year`)-count(case when `Year` is null then 1 end)as YR,
         count(`Date`)-count(case when `Date` is null then 1 end)as DAT,
         count(`Month no.`)-count(case when `Month no.` is null then 1 end)as MNO,
         count(`Month Name`)-count(case when `Month Name` is null then 1 end)as MN,
         count(`Quarter`)-count(case when `Quarter` is null then 1 end)as QR,
         count(`YearMonth`)-count(case when `YearMonth`is null then 1 end)as YM,
         count(`Week no.`)-count(case when `Week no.` is null then 1 end)as WN,
         count(`Day Name`)-count(case when `Day Name` is null then 1 end)as DN,
         count(`Financial Quarter`)-count(case when `Financial Quarter` is null then 1 end) as FNQR
FROM zomatofile;

#---for duplicate

select count(`RestaurantID`) as duplicateid from zomatofile group by`RestaurantID` having count(*)>1;

  #--- 1 number of restaurants based on City and Country:
  
  SELECT City, `Country name`, COUNT(RestaurantID) AS Restaurant_Count
FROM zomatofile
GROUP BY City, `Country name` order by  Restaurant_Count desc;

#--- 2 Number of restaurants opening based on Year, Quarter, and Month:

SELECT Year, Quarter,`Month Name`, COUNT(RestaurantID) AS Restaurant_Openings
FROM zomatofile
GROUP BY Year, Quarter, `Month Name`ORDER BY YEAR,quarter ;

#--- 3 Count of restaurants based on Rating:

SELECT Rating, COUNT(RestaurantID) AS Restaurant_Count
FROM zomatofile
GROUP BY Rating;


#--- 4 Create buckets based on average price and find how many restaurants fall in each bucket:

SELECT
    CASE 
        WHEN Average_Cost_for_two < 500 THEN 'Below 500'
        WHEN Average_Cost_for_two BETWEEN 500 AND 1000 THEN '500-1000'
        WHEN Average_Cost_for_two BETWEEN 1001 AND 2000 THEN '1001-2000'
        WHEN Average_Cost_for_two > 2000 THEN 'Above 2000'
    END AS Price_Bucket,
    COUNT(RestaurantID) AS Restaurant_Count
FROM zomatofile
GROUP BY Price_Bucket;


#--- 5 Percentage of restaurants based on "Has_Table_booking":

SELECT 
    Has_Table_booking,
   CONCAT(FORMAT((COUNT(RestaurantID) * 100.0 / (SELECT COUNT(*) FROM zomatofile)),2),"%") AS Percentage
FROM zomatofile
GROUP BY Has_Table_booking;

#--- 6 Percentage of restaurants based on "Has_Online_delivery":

SELECT 
    Has_Online_delivery,
    CONCAT(FORMAT((COUNT(RestaurantID) * 100.0 / (SELECT COUNT(*) FROM zomatofile)),2),"%") AS Percentage
FROM zomatofile
GROUP BY Has_Online_delivery;


#--- 7 Resturant count based on Cuisines, City, and Ratings:

SELECT City,`Country name`, Cuisines, Rating, COUNT(RestaurantID) AS Restaurant_Count
FROM zomatofile
GROUP BY City,`Country name`, Cuisines, Rating order by rating desc,Restaurant_Count desc;
