-- �ǽ�����


-- 1. employees���̺��� �� ����� �μ��� �μ� ��ȣ(department_id)�� 
--    ��� �޿�(salary)�� ��ȸ�ϼ���. 
--    ��, �μ���ȣ�� null�̸� 0���� �����Ͽ� ��ȸ����.
SELECT
    NVL(department_id, 0) �μ���ȣ,
    AVG(salary) ��ձ޿�
FROM employees
GROUP BY NVL(department_id, 0)
;

-- 2. employees���̺��� �μ��� �μ� ��ȣ(department_id)�� �μ��� �� ��� ���� ��ȸ�ϼ���.
--    ��, �μ���ȣ�� null�̸� 0���� �����Ͽ� ��ȸ����.
SELECT
    NVL(department_id, 0) �μ���ȣ,
    COUNT(*) "�� ��� ��"
FROM employees
GROUP BY NVL(department_id, 0)
;


-- 3. employees���̺��� �μ��� �޿� ����� 8000�� �ʰ��ϴ� �μ��� �μ���ȣ�� �޿� ����� ��ȸ�ϼ���.
SELECT
    department_id �μ���ȣ,
    AVG(salary) ��ձ޿�
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 8000
ORDER BY 1 
;



-- 4. employees���̺��� �޿� ����� 8000�� �ʰ��ϴ� �� ����(job_id)�� ���Ͽ� 
--    ���� �̸�(job_id)�� SA�� �����ϴ� ����� �����ϰ� ���� �̸��� ������ �޿� ����� 
--    �޿� ����� ���� ������ �����Ͽ� ��ȸ�ϼ���.
SELECT
    job_id ����,
    AVG(salary) ��ձ޿�
FROM employees
WHERE job_id NOT LIKE 'SA%'
GROUP BY job_id
ORDER BY 2 DESC
;