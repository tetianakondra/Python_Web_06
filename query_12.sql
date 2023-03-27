SELECT gr.name as group_name, d.name as discipline, s.fullname as student, g.grade, g.date_of as last_lesson_date
FROM grades g 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN groups gr ON gr.id = s.group_id 
LEFT JOIN teachers t ON t.id = d.teacher_id 
WHERE gr.id = 3 and d.id = 2 AND g.date_of = (
SELECT g.date_of
FROM grades g 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN groups gr ON gr.id = s.group_id 
LEFT JOIN teachers t ON t.id = d.teacher_id 
WHERE gr.id = 3 and d.id = 2
GROUP BY s.id 
ORDER BY g.date_of DESC
LIMIT 1)
GROUP BY s.id 
ORDER BY g.date_of DESC;