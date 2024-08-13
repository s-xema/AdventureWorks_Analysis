select 
	SOH.salesorderid as "Sales Order", 
	SOD.salesorderdetailid as "Order Detail", 
	SOH.customerid as "Customer ID",
	case 
		when SOH.salespersonid is null then 0
		else SOH.salespersonid
	end as "Sales Person ID",
	SOH.territoryid as "Territory ID", 
	PS.name as "Ship Method", 
	SOD.productid as "Product ID",
	SOD.orderqty as "Quantity", 
	SOD.specialofferid as "Offer ID", 
	SOD.unitpricediscount as "% Discount",
	SOD.unitprice as "Unit price",
	ROUND((SOD.unitprice*SOD.orderqty), 2) as "Sales", 
	ROUND((PP.standardcost*SOD.orderqty), 2) as "Cost",
	SOH.subtotal as "Subtotal",
	SOH.taxamt as "Taxes", 
	SOH.freight as "Freight", 
	SOH.totaldue as "Total Due",
	SC.tocurrencycode as "Local Currency",
	SC.endofdayrate as "Currency Rate",
	SOH.onlineorderflag "Online Flag",
	SOH.orderdate "Order Date", 
	SOH.shipdate "Ship Date"
from sales.salesorderdetail as SOD 
left join sales.salesorderheader as SOH 
on SOD.salesorderid=SOH.salesorderid
left join purchasing.shipmethod as PS
on SOH.shipmethodid=PS.shipmethodid
left join sales.currencyrate as SC
on SOH.currencyrateid = SC.currencyrateid
left join production.product as PP
on SOD.productid = PP.productid 
