-- all sales people with a base salary between $1000 and $1500 inclusive
SELECT * FROM salespeople WHERE BaseSalary >= 1000 AND BaseSalary <= 1500;

-- appliances available from stores 20 and 27
SELECT * FROM Appliances WHERE StoreID IN ('20', '27');

-- employee names who have no supervisor
SELECT EmployeeName FROM salespeople WHERE SupervisorID IS NULL;

-- details of plumbers, roofers, and electricians 
SELECT * FROM employees WHERE SkillType IN ('electrical', 'plumbing', 'roofing');