#Most_Popular_Platform

SELECT Most_Used_Platform,
       COUNT(*) AS Users
FROM students
GROUP BY Most_Used_Platform
ORDER BY Users DESC;

#Average Stress_by Platform

SELECT Most_Used_Platform,
       ROUND(AVG(Stress_Score),2) AS Avg_Stress
FROM students
GROUP BY Most_Used_Platform;

#Average Sleep_by Platform
SELECT Most_Used_Platform,
       ROUND(AVG(Sleep_Hours_Per_Night),2) AS Avg_Sleep
FROM students
GROUP BY Most_Used_Platform;