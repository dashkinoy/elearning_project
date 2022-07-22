SELECT 
MAX(date_unregistration) AS max_count,
code_module
 FROM (
SELECT 
  COUNT(date_unregistration) as date_unregistration,
  code_module
FROM
    dataset_lessons.studentRegistration
GROUP BY
    code_module)
GROUP BY code_module
ORDER BY 
    max_count DESC
LIMIT 3

-- answer: FFF - 2380, BBB - 2377, DDD - 2235
-- курсы с самым большим оттоком 
