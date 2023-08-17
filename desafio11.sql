SELECT notes FROM purchase_orders
WHERE notes LIKE 'Purchase generated based on Order #%'
AND CAST(SUBSTRING(notes, LOCATE('#', notes) + 1) AS UNSIGNED) BETWEEN 30 AND 39;
