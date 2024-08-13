SELECT 
	sc.customerid as "Customer ID",
	sc.personid as "Contact ID",
	concat (pp.firstname, ' ', pp.middlename, ' ', pp.lastname) as "Contact Name",
	ss.name as "Store",
	sc.territoryid  AS "Region ID"
	
FROM sales.customer as sc
left join person.person as pp
on sc.personid = pp.businessentityid
left join sales.store as ss
on sc.storeid = ss.businessentityid
