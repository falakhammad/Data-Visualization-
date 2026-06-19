#Students Sleeping Less Than 5_Hours
SELECT COUNT(*) AS High_Risk_Students
FROM students
WHERE Sleep_Hours_Per_Night < 5;

#Students_with_High Stress
SELECT COUNT(*) AS High_Stress
FROM students
WHERE Stress_Level IN ('High','Very High');

#High Usage + High Stress
SELECT COUNT(*) AS At_Risk_Students
FROM students
WHERE Avg_Daily_Usage_Hours > 5
AND Stress_Level IN ('High','Very High');

# Summary 
SELECT
COUNT(*) AS Total_Students,
ROUND(AVG(Avg_Daily_Usage_Hours),2) AS Avg_Social_Media_Hours,
ROUND(AVG(Sleep_Hours_Per_Night),2) AS Avg_Sleep,
SUM(CASE WHEN Stress_Level='Very High' THEN 1 ELSE 0 END) AS Very_High_Stress_Students
FROM students;


#student_at_Risk
SELECT
Avg_Daily_Usage_Hours,
Sleep_Hours_Per_Night,
Stress_Level
FROM students
WHERE Avg_Daily_Usage_Hours > 5
AND Sleep_Hours_Per_Night < 6
AND Stress_Level IN ('High','Very High')
ORDER BY Avg_Daily_Usage_Hours DESC;