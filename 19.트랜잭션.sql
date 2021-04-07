--오토 커밋 확인
SHOW AUTOCOMMIT;

--오토 커밋 ON
SET AUTOCOMMIT ON;

--오토 커밋 OFF
SET AUTOCOMMIT OFF;


SELECT * FROM DEPTS;

DELETE FROM DEPTS
WHERE DEPARTMENT_ID = 10;

SAVEPOINT DEL1; --첫번째 저장 지점 생성

DELETE FROM DEPTS
WHERE DEPARTMENT_ID = 20;

SAVEPOINT DEL2; --두번째 저장 지점 생성

ROLLBACK TO DEL1;
ROLLBACK TO DEL2;

SELECT * FROM DEPTS;

COMMIT; --테이블에 반영 (커밋 이후에는 어떤 방법을 쓰더라도 되돌릴 수 없다.)