/* Ogni qual volta un prodotto viene venduto in un negozio, qual è la query da eseguire
per aggiornare le tabelle di riferimento? */
UPDATE STOCKLEVELS
SET Stock = Stock - 37
WHERE ProductID = 501 
  AND WarehouseID = (SELECT WarehouseID FROM STORES WHERE StoreID = 10);
  
/* Quali sono le query da eseguire per verificare quante unità di un prodotto ci sono in
un dato magazzino e per monitorare le soglie di restock? */
SELECT s.Stock,
s.ProductID,
s.WarehouseID,
c.RestockLevel,
   CASE
        WHEN c.RestockLevel >= s.Stock THEN 'RESTOCK!'
        ELSE 'OK'
    END AS StockStatus
FROM stocklevels as s
INNER JOIN category as c
ON c.CategoryID = s.CategoryID;

--
SELECT DISTINCT s.Stock,
s.ProductID,
s.WarehouseID,
c.RestockLevel
FROM stocklevels as s
INNER JOIN category as c
ON c.CategoryID = s.CategoryID
INNER JOIN product as p
ON p.CategoryID = c.CategoryID;







