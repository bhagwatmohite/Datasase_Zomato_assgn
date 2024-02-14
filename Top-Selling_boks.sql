SELECT B.Title,
  A.AuthorName,
  COUNT(OD.BookID) AS SalesCount
FROM OrderDetails OD
  JOIN Books B ON OD.BookID = B.BookID
  JOIN Authors A ON B.AuthorID = A.AuthorID
GROUP BY B.Title,
  A.AuthorName
ORDER BY SalesCount DESC;