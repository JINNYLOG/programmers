WITH T1 AS(
    SELECT EMP_NO, SUM(SCORE) SCORE
    FROM HR_GRADE
    GROUP BY EMP_NO
)
SELECT T1.SCORE SCORE, E.EMP_NO EMP_NO, EMP_NAME, POSITION, EMAIL
FROM HR_EMPLOYEES E
JOIN T1 USING(EMP_NO)
WHERE SCORE = (SELECT MAX(SCORE) FROM T1)
ORDER BY SCORE DESC;