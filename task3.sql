SELECT
    code_module,
    avg(date_submitted)
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
    code_module
    
    -- answer: CCC 239 дней, DDD 238 дней 
    -- средний срок сдачи экзаменов
    
