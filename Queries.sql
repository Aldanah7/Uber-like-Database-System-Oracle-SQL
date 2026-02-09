-- JOIN
SELECT d.FirstN, d.LastN AS Driver_Name, r."Comment", r.Rate
FROM Driver d
JOIN Rating r
ON d.Phone_Number = r.D_Phone_No;

-- WHERE
SELECT FirstN, LastN AS Driver_Name, DOB, Vehicle_Info
FROM Driver
WHERE MONTHS_BETWEEN(SYSDATE, DOB)/12 > 30;

-- DELETE
DELETE FROM Rating
WHERE D_Phone_No IN (
    SELECT Phone_Number
    FROM Driver
    WHERE Vehicle_Info LIKE '%2018%'
);


-- GROUP BY
SELECT Vehicle_Info, COUNT(*) AS Total_Drivers
FROM Driver
GROUP BY Vehicle_Info;

-- GROUP BY + HAVING
SELECT D_Phone_No,
       COUNT(*) AS Num_of_Ratings,
       AVG(Rate) AS Avg_Rating
FROM Rating
GROUP BY D_Phone_No
HAVING AVG(Rate) > 3;

-- AGGREGATION FUNCTION
SELECT MAX(Rate) AS Highest_Rating
FROM Rating;

-- NESTED QUERY
SELECT t.Trip_No,
       t.Start_Point,
       t.Destination,
       p.Amount
FROM Trip t
JOIN Payment p ON t.Trip_No = p.Trip_No
WHERE p.Amount > (
    SELECT AVG(Amount)
    FROM Payment
);

-- UNION
SELECT Payment_No, Status, Payment_Method, Amount
FROM Payment
WHERE Status = 'Completed'
UNION
SELECT Payment_No, Status, Payment_Method, Amount
FROM Payment
WHERE Payment_Method = 'Apple Pay';

-- UPDATE
UPDATE Payment
SET Status = 'Completed'
WHERE Payment_No = 4;

-- SELECT ALL

SELECT * FROM Payment;
