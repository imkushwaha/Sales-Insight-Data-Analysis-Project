# Problem Statement

Atliq Hardware is a Computer Hardware & Peripheral Manufacturer company which supplies computer hardware and peripherals to many of the clients.
Their clients are Surge stores, Nomad Stores, Excel Stores and Electricalsara Stores across India and they supply all these equipmets to them. Now Atliq Hardware has a Head offfice in Delhi India and they have lot of regional
offices throughout the india. Bhavan Patel is a sales director for this company and he is facing a lot of challenges. The challenge is that the market is growing dynamically and then he is facing issues in terms of tracking the sales in this dynamically growing market and he is having issues with the insights of his business so he has this Regional Managers for North India, South India and Central India whenever he wants to get insights in these regions he would call these people and on the phone this local regional manager will give him some insights that this was the sales last quarter and we are going to grow by this much in the next quarter. The problem is the conversation which are happening they are all verbal and you
you know there is this habit that all managers have which is they try to paint a rosy picture you know they don't want to look bad so sometimes they will lie or even if they are not lying they will try to sugarcoat the facts. So Bhavan Patel who is sales director is extremely frustrated with this because he sees that overall the sales decling but when he is talking with his regional managers he is not getting a complete picture when he asked for numbers what these people will do is they will give him a lot of Excel files okay and this Atliq Hardware is a pretty big business and they have so many clients so that
these Excel files that he get there are so many excel files with so many rows in it. Bhavan Patel is very frustrated he is like why are giving me the 69 Excel files just tell me in simplistic terms
how our business is doing what are the biggest areas where we need to focus. You know so if there is a region where the sales numbers are decling maybe we can start some promotion offer or may be we can engage with customers in a more better way So
that we can increase of ourselves so he is interested in getting a simple understanding digestible insights but what these guys are giving is so many excel files and you know we as humans can not cconsume so much numbers actually so there is a saying which says a picture is worth a thousand words so he is more interested in a dashboard which he can go and he can look at the real data because data will speak the truth. If the data is coming from a correct source and if you build a 
visualization for Bhavan Patel it becomes very easy to see what and how the numbers are trending. He can also set monthly email remainder where you know at the end of the month Power BI will send him an email saying that this is how the business looks basically in terms of 
revenues customers and so on so that way now Bhavan does not have to call these managers and whatever information he is getting from Power BI will be
the actual information. It will be telling him the truth and then as a sales director he can make data driven decisions and this data-driven decisions will help him
increase the sales for this company.

# Project Planning using AIMS Grid

AIMS Grid: It is a project management tool and it has four component to it. 
- Purpose: To unlock sales insights that are not visible before for sales team for decision support & automate them to reduced manual time spent in data gathering.

- StakeHolders: Sales Director, Marketing Team, Customer Service Team, Data & Analytic Team, IT 

- End Result: An automated dashboard providing quick and latest sales insights in order to support data driven decision making.

- Success Criteria: Dashboard(s) uncovering sales order insights with latest data available. Sales team able to take better decision & prove 10% cost savings of total spend. Sales Analysts stop data gathering manually in order to save 20% of their business time and reinvest it value added activity.

Atliq Hardware has sales management system which is just a simple softeware that is keeping 
track of all the sales number so whenever they sell any computer or any
hard disk in any local regions this software is printing the invoice so it has all the records stored in any
MySQL database and this database and this application is owned by IT Team. Data Analyst team will reach out to IT team and ask for SQL database because this is the database which has all the records that we need for our analytics and what we will do is we will integrate MYSQL
with Power BI tool and we will build dashboard on top of it. 

When the data volume is high, we want to make sure that MySQL database is not affected by the queries that we are doing in Power BI so IT team design a data warehouse. Data warehouse is basically we take the data
from MySQL which is also known as OLTP (Online Transactions Processing System). We pull the data from OLTP which is MySQL in our case, and do all transfomations which is also called ETL. And after doing the transformation they store the data in a data warehouse.

Data Engineers job is to do this transfomation and maintain the data warehouse infrastructure and after that our data analyst will come in play. They pull the data from data warehouse and they will build the power BI dashboard.




