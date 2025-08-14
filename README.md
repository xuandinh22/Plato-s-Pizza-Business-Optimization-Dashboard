# Plato's Pizza Business Optimization Dashboard
## Background and Overview
Plato’s Pizza recently began collecting detailed transactional data to gain a deeper understanding of its business performance and customer behavior. With a full year data now available, the restaurant has an opportunity to move beyond intuition and make data-driven decisions. This project leverages that dataset to explore patterns in customer demand, seating utilization, and sales performance, aiming to uncover actionable insights. The ultimate goal is to identify opportunities to optimize operations, improve cost efficiency, and enhance overall profitability.

<img width="22" height="22" alt="construction" src="https://github.com/user-attachments/assets/7993f16b-7a4f-451d-9d8a-eac9cbc553cb" /> Tools: 

•	SQL: Data preparation

•	Tableau: Building dashboard

•	Draw.oi: The initial dashboard mockup 

•	Flaticon: Icon sourcing

•	Photopea: Icon customization and editing

<img width="16" height="16" alt="check" src="https://github.com/user-attachments/assets/67fba896-19e2-416e-886b-71901ae5c0d3" /> Assumptions

•	The restaurant operates every day from 9AM to 12PM.

•	Each pizza corresponds to one customer, regardless of pizza size.

•	The restaurant has 15 tables with a total seating capacity of 60 seats (4 seats per table).

•	Different customer groups do not share tables.

<img width="20" height="20" alt="analysis" src="https://github.com/user-attachments/assets/c4a6602b-bda8-461a-9764-bf2965752359" /> Insights and recommendations are provided on the following key areas:

•	Time & Operational Efficiency: Analyze demand patterns, including peak and low periods, to optimize staffing levels and food preparation schedules.

•	Seating Capacity & Operational Efficiency: Improve utilization of seating capacity by aligning table arrangements with typical customer group sizes and flow.

•	Sales Performance & Product Insights: Identify best- and worst-selling menu items to inform pricing, ingredient adjustments, or menu redesign.

Data Source: <a href="https://www.mavenanalytics.io/data-playground/pizza-place-sales?pageSize=1000">Maven Analytics: Pizza Place Sales</a>

An Interactive Tableau dashboard can be downloaded <a href="https://public.tableau.com/app/profile/xuan.dinh8619/viz/Pizza_Dashboard_17548842440700/Dashboard?publish=yes">(here)</a>,

The SQL queries utilized for Data Quality Checks & Preparation can be found <a href="https://github.com/xuandinh22/Plato-s-Pizza-Business-Optimization-Dashboard/blob/main/Data%20Quality%20Checks%20%26%20Preparation.sql">(here)</a>.

The initial dashboard mockup can be found <a href="https://github.com/xuandinh22/Plato-s-Pizza-Business-Optimization-Dashboard/blob/main/Dashboard%20Mockup.pdf">(here)</a>.

## Data Structure Overview
The dataset contains 4 tables, representing a full year of sales for a pizza restaurant: Orders, Order Details, Pizzas, and Pizza Types.

<p align="center">
<img width="400" height="400" alt="Screenshot 2025-08-09 002910" src="https://github.com/user-attachments/assets/59375784-4ce0-44d3-ba66-84e9032123e2" />
</p>

## Executive Summary
### Overview of Findings
The analysis uncovered distinct patterns in customer demand and sales throughout 2015. Notably, several peak days coincide with major events and holidays, causing significant spikes in orders. On a weekly basis, Fridays emerge as the busiest day and Sunday is the slowest. Additionally, about 67% of orders come from one- or two-person groups, indicating that smaller parties make up the majority of dine-in customers. While the Classic Deluxe pizza is the top seller by units, the Thai Chicken pizza leads in total revenue. These insights highlight opportunities to better align staffing and seating with actual customer demand, as well as to focus on menu items that drive profitability. The following sections explore these findings in more detail and offer actionable recommendations to enhance business performance.

Below is a snapshot from the Tableau dashboard; the full interactive dashboard can be downloaded <a href="https://public.tableau.com/app/profile/xuan.dinh8619/viz/Pizza_Dashboard_17548842440700/Dashboard?publish=yes">(here)</a>.

<p align="center">
<img width="1000" height="750" alt="Screenshot 2025-08-10 214731" src="https://github.com/user-attachments/assets/abbd5463-e010-41f6-afed-e8e83530afca" />
</p>

### Time & Operational Efficiency
•	Analysis of order times shows that demand during the early morning hours is quite low, with only a single order recorded at 9 AM across the entire year. On average, about 13 pizzas are made between 10 AM and 11 AM, and around 14 pizzas are made after 11 PM each week, while other moderate hours see more than 30 pizzas on average, indicating these early and late hours are underutilized. Notably no orders were recorded after 11 PM on Tuesdays and Wednesdays for the entire year.

•	The busiest periods occur between 12 PM and 1 PM, with roughly 130 pizzas ordered, and again between 6 PM and 7 PM, with around 100 pizzas sold. This pattern suggests that the majority of customer base consider pizza primarily a lunch or dinner option, leading to lower activity during early or late hours.

•	Throughout the year, demand peaks on specific days linked to major events and holidays. Notably, sales surge during sporting events such as the Super Bowl in February and the MLB postseason and Mid-NFL season in October. Other significant spikes occur around Independence Day in July and in November, right before Thanksgiving and on Black Friday. Conversely, there is a marked decline in sales during the days following Christmas in late December. 

•	In addition to these seasonal and event-driven trends, Fridays usually emerge as the busiest day of the week, while Sundays tend to be the slowest, reflecting typical consumer behavior patterns throughout the week.

### Seating Capcity & Operational Efficiency

•	About 67% of orders come from one- or two-person groups, yet these smaller parties occupy four-seat tables, leading to underutilized seating capacity. During peak hours, demand for dine-in tables can exceed the restaurant’s 15-table capacity, highlighting potential challenges in accommodating customers efficiently.

•	This is further supported by the Max Table Demand – Peak Hour heat map, which indicates that on multiple occasions throughout the week and across the 12-month period, the number of tables requested by customers could exceed the number of tables available in the restaurant. These findings highlight the need for better seating management or potential adjustments in table configurations to optimize capacity utilization and improve customer experience during busy periods.

### Sales Performance & Product Insights

<p align="center">
<img width="700" height="600" alt="image" src="https://github.com/user-attachments/assets/142ac23c-5364-474a-ad48-f4c7c36452c4" />
</p> <p align="center"> Units Sold </p> 
<p align="center">
<img width="700" height="600" alt="image" src="https://github.com/user-attachments/assets/111d04be-b9bf-41ef-9f95-155915e8f9a9" />
</p> <p align="center"> Revenue </p> 

•	In terms of sales performance, the Thai Chicken pizza generates the highest revenue, while the Classic Deluxe pizza is the most popular by units sold. 

•	The Brie Carre ranks last (32nd out of 32) in both revenue and popularity, indicating it is the poorest performing pizza on the menu. 

•	The Green Garden pizza ranks 23rd out of 32  in units sold but 31st out of 32 in revenue, suggesting it sells moderately but contributes very little to overall revenue.

These findings highlight opportunities to optimize the menu by focusing on high revenue and popular items, while reconsidering or improving low-performing pizzas.

## Recommendations
### Operational Hours and Staffing 

•	Consider opening later than 9 AM to better align with low morning demand.

•	Reduce staffing after 10 PM, especially on Tuesdays and Wednesdays when customer volume begins to decrease, to lower labor costs without impacting service quality. Increase staff during peak lunch hours (12 PM–1 PM), dinner hours (6 PM–7 PM), and on Fridays when demand is highest, to ensure efficient service and faster order fulfillment.

•	Prepare for sales surges during major sporting events (Super Bowl, MLB postseason, NFL mid-season) and holidays (Independence Day, Thanksgiving period, Black Friday) by increasing inventory, staffing, and marketing efforts. The notable sales dip after Christmas suggests reduced inventory and staffing, possible early closures or limited hours during this slow period to save costs.

### Seating Capacity & Operational Efficiency

•	Consider reducing the number of four-seat tables and increasing smaller tables to better align with customer group sizes (2/3 of orders come from group of 1 or 2).

•	Incorporate smaller tables (2-seat) that can be combined or separated easily to better accommodate one- and two-person groups, as well as larger groups that do not fully utilize four-seat tables (e.g., groups of 5 or 9), minimizing wasted seating capacity.

### Sales Performance & Product Insights

•	Consider featuring Thai Chicken pizza and Classic Deluxe pizza as signature items or chef’s specials to further boost their visibility and sales.

•	Evaluate the Brie Carre pizza’s ingredients, pricing, and appeal to identify reasons for poor performance. Consider reformulating, or removing it from the menu to streamline offerings and reduce waste.

•	For pizzas like the Green Garden, which sell moderately but generate low revenue, explore options to increase profitability, such as adjusting the price, enhancing toppings, or tweaking the recipe. Alternatively, consider replacing the Green Garden pizza with new, higher-margin options that align better with customer preferences.

## Future Analysis and Next Steps
Future analysis will focus on ingredient usage and menu optimization to improve cost efficiency and operational planning. By identifying the most frequently used ingredients, the business can make bulk purchasing decisions to reduce costs and ensure consistent supply. Understanding ingredient demand will also support better daily preparation planning, minimizing waste and ensuring readiness during peak hours. In parallel, analyzing menu performance will provide insights into how each pizza contributes to sales.





