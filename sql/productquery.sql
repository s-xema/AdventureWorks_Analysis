SELECT 
	p.productid as "Product ID", 
	p.name as "Product", 
	ROUND((p.standardcost), 2) as "Cost",
	c.name as "Category",
	sc.name as "Subcategory",
	p.color as "Color"
	
	
	
	
FROM production.productsubcategory as sc
join production.product as p
on sc.productsubcategoryid = p.productsubcategoryid 
join production.productcategory as c
on sc.productcategoryid = c.productcategoryid
where p.finishedgoodsflag= 'true'