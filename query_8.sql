SELECT t.fullname as teacher, d.name as discipline, ROUND(AVG(g.grade), 2) as avarage_grade
FROM grades g 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 1
GROUP BY d.name;