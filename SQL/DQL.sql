1//
SELECT * FROM STUDENT;

2//
SELECT C.NAME MOTHERNAME,D.NAME FATHERNAME FROM CARETAKER C,CARETAKER D WHERE C.STDID=D.STDID AND C.RELATION='MOTHER' AND D.RELATION='FATHER';

3//
SELECT S.STDID,S.NAME,C.NAME GUARDIAN_NAME,C.RELATION FROM STUDENT S,CARETAKER C WHERE C.STDID=S.STDID AND C.RELATION NOT IN ('MOTHER','FATHER');

4//
SELECT S.STDID,S.NAME CHILD_NAME,C.NAME MOTHERNAME,D.NAME FATHERNAME FROM CARETAKER C,CARETAKER D,STUDENT S WHERE S.STDID=C.STDID AND C.STDID=D.STDID AND C.RELATION='MOTHER' AND D.RELATION='FATHER';

7//
SELECT * FROM STUDENT WHERE ADMISSION>=TO_DATE('12/5/2012','DD/MM/YYYY') AND ADMISSION<=TO_DATE('12/5/2021','DD/MM/YYYY') AND CLASSID IN (SELECT CLASSID FROM CLASS);

8//
SELECT S.STDID,S.NAME CHILD_NAME,C.NAME MOTHERNAME,D.NAME FATHERNAME FROM CARETAKER C,CARETAKER D,STUDENT S WHERE S.STDID=C.STDID AND C.STDID=D.STDID AND C.RELATION='MOTHER' AND D.RELATION='FATHER' AAND S.ADMISSION>=TO_DATE('12/5/2012','DD/MM/YYYY'); AND S.ADMISSION<=TO_DATE('12/5/2021','DD/MM/YYYY'));

SELECT CLASSID FROM STUDENT GROUP BY CLASSID ORDER BY CLASSID;

9//
SELECT S.STDID,S.NAME CHILD_NAME,C.NAME MOTHERNAME,D.NAME FATHERNAME FROM CARETAKER C,CARETAKER D,STUDENT S WHERE S.STDID=C.STDID AND C.STDID=D.STDID AND C.RELATION='MOTHER' AND D.RELATION='FATHER' AND S.AGE<=4 AND S.COURSEID!='NONE';

10//
SELECT * FROM STUDENT_HISTORY;

UPDATE STUDENT
    SET AGE=AGE-1;