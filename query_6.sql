SELECT gr.name as group_name, s.fullname as student
FROM students s 
LEFT JOIN groups gr ON gr.id = s.group_id
WHERE gr.id = 3
ORDER BY s.fullname;