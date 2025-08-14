SELECT *
FROM dbo.VERITAS_CUST


SELECT
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
FROM VERITAS_CUST V
JOIN VERITAS_CUS VC ON
V.CustomerId = VC.CustomerId;

SELECT COUNT (Balance) zeroB
FROM dbo.VERITAS_CUS
WHERE Balance=0;