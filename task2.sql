SELECT
courses.code_module,
res_1.success/res_2.all_try  as success_percentage
FROM dataset_lessons.courses
JOIN (SELECT
  code_module,
  count(a.id_assessment) as success
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
  code_module)
res_1 on res_1.code_module = courses.code_module
JOIN(
SELECT
    code_module,
    count(a.id_assessment) as all_try
FROM
dataset_lessons.assessments as a
JOIN 
    dataset_lessons.studentAssessment as b
ON a.id_assessment = b.id_assessment
WHERE
    assessment_type = 'Exam'
GROUP BY
    code_module) 
res_2 on res_2.code_module = courses.code_module
ORDER BY success_percentage DESC

-- answer: DDD
-- 0.86 курс с самой высокой завершаемостью 
