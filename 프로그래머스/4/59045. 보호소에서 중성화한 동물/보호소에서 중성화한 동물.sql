-- 코드를 입력하세요
#SELECT B.ANIMAL_ID, B.ANIMAL_TYPE, B.NAME
#FROM ANIMAL_INS A JOIN ANIMAL_OUTS B ON A.ANIMAL_ID=B.ANIMAL_ID
#WHERE SEX_UPON_OUTCOME IN (SELECT SEX_UPON_INTAKE FROM ANIMAL_INS WHERE SEX_UPON_INTAKE LIKE "Intact%" )
#ORDER BY B.ANIMAL_ID ASC;

#SELECT i.animal_id, i.animal_type, i.name
#from animal_ins as i left join animal_outs as o on i.animal_id = o.animal_id
#where i.sex_upon_intake != o.sex_upon_outcome;

SELECT AO.ANIMAL_ID, AI.ANIMAL_TYPE, AO.NAME
FROM ANIMAL_INS AI,
      ANIMAL_OUTS AO
WHERE AI.ANIMAL_ID = AO.ANIMAL_ID
AND AI.ANIMAL_ID IN (SELECT ANIMAL_ID
                      FROM ANIMAL_INS 
                      where SEX_UPON_INTAKE NOT IN('Neutered Male','Spayed Female')
                 )
AND AO.SEX_UPON_OUTCOME IN('Neutered Male','Spayed Female')
ORDER BY AI.ANIMAL_ID