--���� Ŀ�� Ȯ��
SHOW AUTOCOMMIT;

--���� Ŀ�� ON
SET AUTOCOMMIT ON;

--���� Ŀ�� OFF
SET AUTOCOMMIT OFF;


SELECT * FROM DEPTS;

DELETE FROM DEPTS
WHERE DEPARTMENT_ID = 10;

SAVEPOINT DEL1; --ù��° ���� ���� ����

DELETE FROM DEPTS
WHERE DEPARTMENT_ID = 20;

SAVEPOINT DEL2; --�ι�° ���� ���� ����

ROLLBACK TO DEL1;
ROLLBACK TO DEL2;

SELECT * FROM DEPTS;

COMMIT; --���̺� �ݿ� (Ŀ�� ���Ŀ��� � ����� ������ �ǵ��� �� ����.)