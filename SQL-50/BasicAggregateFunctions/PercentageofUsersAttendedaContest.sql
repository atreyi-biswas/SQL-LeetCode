SELECT 
    Register.contest_id,
    ROUND(COUNT(Register.user_id) * 100.0 / COUNT(Users.user_id), 2) AS percentage
FROM Users
JOIN Register
ON Users.user_id = Register.user_id
GROUP BY Register.contest_id;
