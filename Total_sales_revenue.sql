SELECT SUM(OD.Quantity * OD.Price) AS TotalRevenue
FROM OrderDetails OD
  JOIN Orders O ON OD.OrderID = O.OrderID
WHERE O.OrderDate BETWEEN 'start_date' AND 'end_date';