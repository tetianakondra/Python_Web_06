SELECT s.fullname as student, t.fullname as teacher, ROUND(AVG(g.grade), 2) as avarage_grade
FROM grades g 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 2 and t.id = 3;