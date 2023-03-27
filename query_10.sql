SELECT d.name as discipline, s.fullname as student, t.fullname as teacher
FROM grades g 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 4 and t.id = 5
GROUP BY d.name;