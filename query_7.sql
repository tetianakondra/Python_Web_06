SELECT gr.name as group_name, d.name as discipline, s.fullname as student, g.grade, g.date_of 
FROM grades g 
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN groups gr ON gr.id = s.group_id
WHERE gr.id = 3 AND d.id = 2
ORDER BY s.fullname DESC;