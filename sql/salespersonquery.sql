SELECT 
	ssp.businessentityid "Sales Person ID", 
	concat (p.firstname, ' ', p.middlename, ' ', p.lastname) as "Name",
	st.territoryid as "Region ID",
	ssp.salesquota "Target", 
	ssp.bonus "Bonus", 
	ssp.commissionpct "% Commision", 
	round((ssp.salesytd),0) as "Sales Ytd", 
	round((ssp.saleslastyear), 0) as "Sales Last Year"
	


FROM sales.salesperson as ssp
left join sales.salesterritory as st
on ssp.territoryid = st.territoryid
left join person.countryregion as c
on st.countryregioncode = c.countryregioncode
join person.person as p
on ssp.businessentityid = p.businessentityid
order by ssp.businessentityid 


