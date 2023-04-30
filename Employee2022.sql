select *
from PortfolioProject.dbo.[employee info]

--check attrition by level of education

SELECT Attrition, Education
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND Education ='5'

--selecting the columns we mainly want to look at

SELECT Age, Attrition, Gender, MonthlyIncome, JobSatisfaction, JobInvolvement, Education, Department
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND Gender ='Female'

SELECT COUNT(Gender)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND Gender ='Female'

SELECT COUNT(Gender)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND Gender ='Male'


--of the employees who left, 87 were female and 150 were male

--lets check of the employees who left, were they above the age of 40 or below 40 years

SELECT COUNT(Age)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND Age > '40'

SELECT COUNT(Age)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND Age < '40'

--180 employees younger than 40 and 52 employees older than 40 years of age


--lets check job satisfaction

SELECT COUNT (JobSatisfaction)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND JobSatisfaction ='1'

--66


SELECT COUNT (JobSatisfaction)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND JobSatisfaction ='2'

--46

SELECT COUNT (JobSatisfaction)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND JobSatisfaction ='3'

--73


SELECT COUNT (JobSatisfaction)
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND JobSatisfaction ='4'

--52

--lets look at monthly income

SELECT COUNT(MonthlyIncome)
FROM PortfolioProject.dbo.[employee info]
WHERE MonthlyIncome BETWEEN 0 AND 10000 AND Attrition ='1'

SELECT COUNT(MonthlyIncome)
FROM PortfolioProject.dbo.[employee info]
WHERE MonthlyIncome BETWEEN 10001 AND 20000 AND Attrition ='1'

SELECT COUNT(MonthlyIncome)
FROM PortfolioProject.dbo.[employee info]
WHERE MonthlyIncome BETWEEN 20001 AND 30000 AND Attrition ='1'




SELECT MAX(MonthlyIncome)
FROM PortfolioProject.dbo.[employee info]


--look at highest rate of Attrition by EducationField

SELECT Attrition, EducationField, Gender, MonthlyIncome
FROM PortfolioProject.dbo.[employee info]

SELECT DISTINCT(EducationField)
FROM PortfolioProject.dbo.[employee info]

--7 total education fields


SELECT DISTINCT(EducationField), Attrition
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1'

SELECT EducationField, Attrition
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition = '1' 
ORDER BY EducationField 

SELECT Attrition, JobSatisfaction
FROM PortfolioProject.dbo.[employee info]
WHERE Attrition ='1' AND JobSatisfaction ='4'

--USING COUNT function also to determine certain attributes for attrition
SELECT COUNT(CASE WHEN JobSatisfaction= 1 AND Attrition =1 THEN 1 END)
FROM PortfolioProject.dbo.[employee info]

SELECT COUNT(CASE WHEN Education= 3 AND Attrition =1 THEN 1 END)
FROM PortfolioProject.dbo.[employee info]
WHERE Gender= 'Male'

--61 males 

SELECT COUNT(CASE WHEN Education= 3 AND Attrition =1 THEN 1 END)
FROM PortfolioProject.dbo.[employee info]
WHERE Gender= 'Female'

--38 females




