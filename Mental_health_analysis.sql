# Stress_Level_Distribution
SELECT Stress_Level,
       COUNT(*) AS Students
FROM students
GROUP BY Stress_Level
ORDER BY Students DESC;

# Average_Sleep_by_Stress_Level
SELECT Stress_Level,
       ROUND(AVG(Sleep_Hours_Per_Night),2) AS Avg_Sleep
FROM students
GROUP BY Stress_Level;

# Average Social Media Usage_by Stress_Level
SELECT Stress_Level,
       ROUND(AVG(Avg_Daily_Usage_Hours),2) AS Avg_Usage
FROM students
GROUP BY Stress_Level;

