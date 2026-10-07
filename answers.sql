-- Question 1: Total Payment Amount for Top 5 Latest Dates
SELECT 
    paymentDate, 
    SUM(amount) AS totalAmount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;

-- Question 2: Average Credit Limit per Customer and Country
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS averageCreditLimit
FROM 
    customers
GROUP BY 
    customerName, 
    country;

-- Question 3: Total Price of Products Ordered
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM 
    orderdetails
GROUP BY 
    productCode, 
    quantityOrdered;

-- Question 4: Highest Payment Amount per Check Number
SELECT 
    checkNumber, 
    MAX(amount) AS highestAmount
FROM 
    payments
GROUP BY 
    checkNumber;
