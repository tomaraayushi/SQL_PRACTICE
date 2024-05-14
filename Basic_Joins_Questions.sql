--LEETCODE INTERVIEW QUESTIONS SERIES
--BASIC JOINS
--Q1 
SELECT
    CASE
        WHEN COUNT(u.unique_id) OVER(PARTITION BY u.unique_id) > 1 THEN NULL
        ELSE u.unique_id 
    END AS unique_id,
    e.name 
FROM Employees e
LEFT JOIN EmployeeUNI u
    ON e.id = u.id;

--Q2
SELECT
    p.product_name,
    s.year,
    s.price
FROM Product p
RIGHT JOIN Sales s
ON p.product_id = s.product_id;

--Q3
SELECT
    v.customer_id,
    COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

--Q4
SELECT
    w1.id
FROM Weather w1
INNER JOIN Weather w2 
    ON w1.recordDate = w2.recordDate + INTERVAL'1 day'
WHERE w1.temperature > w2.temperature;

--Q5
SELECT 
    e.name,
    b.bonus
FROM Employee e 
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE 
    b.bonus < 1000 OR b.bonus IS NULL;

--Q6
SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
    ON s.student_id = e.student_id
    AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id,
    s.student_name,
    sub.subject_name
ORDER BY 
    s.student_id,
    s.student_name;

--Q7
SELECT
    e1.name
FROM Employee e1
JOIN 
    (SELECT
        managerId,
        COUNT(id) AS count_direct
    FROM Employee
    WHERE managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(id) >= 5) AS e2
ON e1.id = e2.managerId;
     

    





























	
	
	
	
	
	
	
	
	
	
	
