USE health_data;
# A histogram to depict number of patients and their time spent in hospitals
SELECT ROUND(time_in_hospital, 1) AS bucket,
COUNT(*) AS count,
RPAD('', COUNT(*)/300, '□') AS bar  # Right Padding the column in terms of count using a symbol from utf characters; □, *, #, ○, △ or +
FROM health_dataset
GROUP BY bucket
ORDER BY bucket ASC; 