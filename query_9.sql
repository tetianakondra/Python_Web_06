SELECT s.fullname as student, d.name as discipline
FROM grades g 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN students s ON s.id = g.student_id
WHERE s.id = 4
GROUP BY d.name;