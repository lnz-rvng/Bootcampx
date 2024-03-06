SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, assistance_requests.completed_at - assistance_requests.started_at AS duration
FROM teachers 
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;