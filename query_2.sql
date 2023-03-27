SELECT s.fullname, d.name, ROUND(AVG(g.grade), 2) as avarage_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id
WHERE d.id = 1
GROUP BY s.id 
ORDER BY AVG(g.grade) DESC
LIMIT 1;