SELECT 
	specialofferid AS "Offer ID", 
	description AS "Offer Description", 
	discountpct AS "% Discount", 
	type as "Offer Type", 
	category as "Categroy", 
	startdate as "Start Date", 
	enddate as "End Date", 
	minqty as "Min Quantity", 
	maxqty as "Max Quantity"
FROM sales.specialoffer