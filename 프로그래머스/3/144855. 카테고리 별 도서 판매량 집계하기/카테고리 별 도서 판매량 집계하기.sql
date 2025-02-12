-- 코드를 입력하세요
SELECT A.CATEGORY, SUM(B.SALES) TOTAL_SALES
FROM BOOK AS A JOIN BOOK_SALES AS B ON A.BOOK_ID = B.BOOK_ID
WHERE DATE_FORMAT(SALES_DATE,'%Y-%m') = '2022-01'
GROUP BY A.CATEGORY
ORDER BY CATEGORY ASC;

# SELECT B.CATEGORY,
#       SUM(SALES) TOTAL_SALES
#FROM BOOK_SALES S INNER JOIN BOOK B ON S.BOOK_ID = B.BOOK_ID
#WHERE DATE_FORMAT(S.SALES_DATE, '%Y-%m') = '2022-01'
#GROUP BY B.CATEGORY
#ORDER BY CATEGORY