
-- CTE (Common Table Expression)
with cteQuery as 
(
	select 
		c.AccountNumber, 
		c.TerritoryID,
		soh.RevisionNumber
	from [Sales].[Customer] as c
	inner join [Sales].[SalesOrderHeader] as soh
	on soh.CustomerID = c.CustomerID
	where RevisionNumber = 8
),
cteQuery2 as 
(
	select TerritoryID, count(*) as qty 
	from cteQuery
	group by TerritoryID
)

select * from cteQuery

-- select * from cteQuery where cteQuery.TerritoryID = 5




select t2.TerritoryID, count(*) as Qty from (

select * from (
	select 
		c.AccountNumber, 
		c.TerritoryID,
		soh.RevisionNumber
	from [Sales].[Customer] as c
	inner join [Sales].[SalesOrderHeader] as soh
	on soh.CustomerID = c.CustomerID
	where RevisionNumber = 8) as t

where t.TerritoryID in (5,4)) as t2
group by t2.TerritoryID



 

 

select * from (
	select 
		c.AccountNumber, 
		c.TerritoryID,
		soh.RevisionNumber
	from [Sales].[Customer] as c
	inner join [Sales].[SalesOrderHeader] as soh
	on soh.CustomerID = c.CustomerID
	where RevisionNumber = 8) as t

where t.TerritoryID = 5






