SELECT COUNT(*) FROM 
(SELECT
  id_student,
  COUNT(code_module)
FROM 
  dataset_lessons.assessments as a
JOIN 
    dataset_lessons.studentAssessment as b
ON a.id_assessment = b.id_assessment
WHERE 
    score>40
AND
    assessment_type = 'Exam'
GROUP BY 
    id_student
HAVING COUNT(code_module) = 1)


-- answer:  3706
