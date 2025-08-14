Select *
from dbo.VERITAS_CUS;

Select COUNT(distinct CustomerId) AS TOTALCUSTOMER
from dbo.VERITAS_CUST;

SELECT COUNT (CreditScore) AS ELIGIBLE
From dbo.VERITAS_CUS
WHERE CreditScore > 500
GROUP BY Exited;

SELECT COUNT(*) as assets
FROM dbo.VERITAS_CUS
WHERE Tenure>0 
GROUP BY Exited
;



SELECT count (CustomerId) as customers,
	
	Country as region
FROM dbo.VERITAS_CUST
group by Country ;

SELECT COUNT (Gender) as no,
		Gender as Types,
		Country as Region
From dbo.VERITAS_CUST
group by Gender,Country;

SELECT SUM (Balance) as DEPOSIT,
		count(CreditScore) as noperind,
		SUM(Tenure) as Duration,	
			Creditscore as LEVELIND
FROM dbo.Veritas_CUS
group by CreditScore 
order by DEPOSIT desc;


select count(ActiveMember) as LIFESYCLE,
		count(Products) as cengagement,
		count(Exited) as CURRENTSTAT,
		ActiveMember AS LIFESPAN
	
FROM dbo.VERITAS_CUS
where ActiveMember IN (0,1)

GROUP BY ActiveMember
order by cengagement;



select count (CustomerId) as totalcustomer,
		Tenure as cengagement,
		sum(Balance) as Deposit,
		Exited AS status
	
FROM dbo.VERITAS_CUS
where Exited IN (0,1)


GROUP BY Exited,Tenure
order by cengagement;


select
	V.CustomerId,
	V.LastName,
	V.Country,
	V.Gender,
	V.Age,
	VC.CreditScore,
	VC.Tenure,
	VC.Balance,
	VC.Products,
	VC.CreditCard,
	VC.ActiveMember,
	VC.Exited
from dbo.VERITAS_CUST V 
RIGHT JOIN	
	dbo.VERITAS_CUS VC on
	VC.CustomerId=V.CustomerId;
 