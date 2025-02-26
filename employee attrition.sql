-- creating table and importing data
CREATE TABLE employee_attrition (
    Age INT,
    Attrition VARCHAR(3),  -- 'Yes' or 'No'
    BusinessTravel VARCHAR(20),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education VARCHAR(20),
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction VARCHAR(20),
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement VARCHAR(20),
    JobSatisfaction VARCHAR(20),
    RelationshipSatisfaction VARCHAR(20),
    JobLevel INT,
    JobRole VARCHAR(50),
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(3),  -- 'Yes' or 'No'
    OverTime VARCHAR(3),  -- 'Yes' or 'No'
    PercentSalaryHike INT,
    PerformanceRating INT,
    StandardHours INT,  -- Likely always 80
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance VARCHAR(20),
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);
---------------------------------------------------------------------------------------------


-- drop table EmployeeAttrition
---------------------------------------------------------------------------------------------

-- employee attrition data
select * from employee_attrition
where attrition='Yes'
---------------------------------------------------------------------------------------------

-- Count of Attrition 
select count(*) from  employee_attrition
where attrition= 'Yes'
---------------------------------------------------------------------------------------------

--employee data with the top 5 highest monthly income
select * from employee_attrition order by monthlyincome desc limit(15) --where Attrition='No'
---------------------------------------------------------------------------------------------

-- Checking for duplicates
SELECT distinct count(*) from employee_attrition

select count(*) from employee_attrition
---------------------------------------------------------------------------------------------

select * from employee_attrition order by monthlyincome desc  offset(1455)

alter table employee_attrition  drop column over18













