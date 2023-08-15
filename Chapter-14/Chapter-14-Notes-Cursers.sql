SELECT r.id, r.[Description], r.total, rl.Quantity, p.price, (RL.Quantity * p.price) LineTotal
FROM Requests R
JOIN RequestLines RL on r.id = rl.RequestId
Join products p on p.id = rl.ProductId
