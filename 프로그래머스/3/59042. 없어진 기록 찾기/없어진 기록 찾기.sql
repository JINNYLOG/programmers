SELECT AO.ANIMAL_ID,AO.NAME
FROM ANIMAL_OUTS AS AO
LEFT JOIN ANIMAL_INS AS AI ON AI.ANIMAL_ID=AO.ANIMAL_ID
WHERE AO.ANIMAL_ID IS NOT NULL AND AI.ANIMAL_ID IS NULL
ORDER BY AO.ANIMAL_ID