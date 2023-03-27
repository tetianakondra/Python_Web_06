SELECT t.fullname as teacher, d.name as discipline
FROM disciplines d 
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 5;