SELECT 
    a1.machine_id, 
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity AS a1
INNER JOIN Activity AS a2                  -- Explicit join keyword
    ON a1.machine_id = a2.machine_id       -- The join conditions move to ON
    AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start'           -- WHERE is kept only for filtering
  AND a2.activity_type = 'end'
GROUP BY a1.machine_id;

--self join 