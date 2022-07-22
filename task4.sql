SELECT 
MAX(data_registration) AS max_count,
code_module
 FROM (
SELECT 
  COUNT(date_registration) as data_registration,
  code_module
FROM
    dataset_lessons.studentRegistration
GROUP BY
    code_module)
GROUP BY code_module
ORDER BY 
    max_count DESC
LIMIT 3

-- answer: BBB, FFF, DDD 
-- топ 3 курса по количесту регистраций
