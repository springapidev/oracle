CREATE USER student
IDENTIFIED BY student;



GRANT connect, resource
TO student; 


CREATE SEQUENCE student_id_seq
INCREMENT BY 1
START WITH 10000
MAXVALUE 99999
NOCACHE
NOCYCLE;


CREATE SEQUENCE payment_id_seq
INCREMENT BY 1
START WITH 55000
MAXVALUE 99999
NOCACHE
NOCYCLE;


CREATE SEQUENCE mark_id_seq
INCREMENT BY 1
START WITH 100
MAXVALUE 999
NOCACHE
NOCYCLE;



CREATE SEQUENCE exam_id_seq
INCREMENT BY 10
START WITH 1000
MAXVALUE 9999
NOCACHE
NOCYCLE;


CREATE TABLE students
(student_id NUMBER(5) CONSTRAINTS student_id_pk PRIMARY KEY,
student_name VARCHAR(25),
batch_id NUMBER(10),
phone_no NUMBER(15) UNIQUE,
email VARCHAR(25) UNIQUE 
)




CREATE TABLE payments 
(pay_serial_no NUMBER(5) CONSTRAINTS pay_serial_no_pk PRIMARY KEY,
student_id NUMBER(5),
pay_amount NUMBER(10),
pay_date DATE,
pay_type varCHAR(25) 
)



CREATE TABLE exams 
(exam_id NUMBER(5) CONSTRAINTS exam_id_pk PRIMARY KEY,
exam_type varCHAR(25),
exam_schedule DATE,
batch_id varCHAR(10) 
)



CREATE TABLE marks 
(mark_serial NUMBER(5) CONSTRAINTS mark_serial_pk PRIMARY KEY,
student_id NUMBER(5),
exam_id NUMBER(5),
subject_id NUMBER(10),
total_mark NUMBER(3),
obtain_mark NUMBER(3),
result varCHAR(25)
)



CREATE TABLE subjects 
(subject_id NUMBER(10) CONSTRAINTS subject_id_pk PRIMARY KEY,
subject_name varCHAR(25),
duration varCHAR(25)
)



CREATE TABLE batch  
(batch_id NUMBER(10) CONSTRAINTS batch_id_pk PRIMARY KEY,
batch_name varCHAR(25),
course varCHAR(25),
start_date DATE,
end_date DATE
)



CREATE TABLE attendance   
(attend_date DATE,
attend_status varCHAR(25),
student_id NUMBER(5),
CONSTRAINTS attend_cpk PRIMARY KEY (attend_date,student_id)
);




CREATE SEQUENCE batch_id_seq
INCREMENT BY 5
START WITH 10
MAXVALUE 999
NOCACHE
NOCYCLE;



CREATE SEQUENCE subject_id_seq
INCREMENT BY 6
START WITH 50
MAXVALUE 999
NOCACHE
NOCYCLE;



ALTER TABLE exams
MODIFY batch_id NUMBER(10);


ALTER TABLE payments 
DROP CONSTRAINTS pay_student_id_fk;


ALTER TABLE students 
ADD CONSTRAINTS pay_student_id_fk FOREIGN KEY(student_id) REFERENCES students(student_id) ON DELETE SET NULL;



ALTER TABLE students 
ADD CONSTRAINTS std_batch_id_fk FOREIGN KEY(batch_id) REFERENCES batch (batch_id) ON DELETE SET NULL;




ALTER TABLE exams 
ADD CONSTRAINTS exam_batch_id_fk FOREIGN KEY(batch_id) REFERENCES batch (batch_id) ON DELETE SET NULL;


ALTER TABLE marks 
DROP CONSTRAINTS mark_student_id_fk;



ALTER TABLE marks 
DROP CONSTRAINTS  mark_subject_id_fk;


ALTER TABLE marks 
ADD (CONSTRAINTS mark_student_id_fk FOREIGN KEY(student_id) REFERENCES students (student_id) ON DELETE SET NULL,
CONSTRAINTS mark_exam_id_fk FOREIGN KEY(exam_id) REFERENCES exams (exam_id) ON DELETE SET NULL,
CONSTRAINTS mark_subject_id_fk FOREIGN KEY(subject_id) REFERENCES subjects (subject_id) ON DELETE SET NULL);


ALTER TABLE attendance 
DROP CONSTRAINTS atten_student_id_fk;


ALTER TABLE attendance 
ADD CONSTRAINTS atten_student_id_fk FOREIGN KEY(student_id) REFERENCES students (student_id) ON DELETE SET NULL;


INSERT INTO batch(batch_id, batch_name, course, start_date, end_date)
VALUES(batch_id_seq.NEXTVAL, 'JAS', 'JAVA', sysdate-100, sysdate+50);


INSERT INTO students
VALUES(student_id_seq.NEXTVAL, 'noman', 10, 01711458256, 'noman@2013');


INSERT INTO students
VALUES(student_id_seq.NEXTVAL, 'rowsan', 25, 01999855874, 'row@2011');


INSERT INTO payments
VALUES (payment_id_seq.NEXTVAL, 10001, 12000, sysdate, 'Monthly');


INSERT INTO payments
VALUES (payment_id_seq.NEXTVAL, 10008, 4000, sysdate-6, 'Monthly');


INSERT INTO subjects 
VALUES (subject_id_seq.NEXTVAL, 'ORACLE', '150 Hours');


INSERT INTO marks 
VALUES (mark_id_seq.NEXTVAL, 10001, 1000, 50, 100, 80, 'pass' );


INSERT INTO marks 
VALUES (mark_id_seq.NEXTVAL, 10005, 1050, 68, 100, 88, 'Pass' );


SELECT student_id, count(attend_status) Present
FROM attendance
WHERE attend_status='Present'
GROUP BY student_id;



SELECT student_id, count(attend_status) absent 
FROM attendance
WHERE attend_status='Absent'
GROUP BY student_id;


select a.student_id,PRESENT,ABSENT   FROM
(select  student_id, COUNT(attend_status) PRESENT
from attendance
where attend_status='Present'
GROUP BY student_id) a FULL OUTER JOIN  
(select  student_id, COUNT(attend_status) ABSENT
from attendance
where attend_status='Absent'
GROUP BY student_id) b 
on( a.student_id=b.student_id)



select a.student_id || b.student_id "Student ID", PRESENT,ABSENT   FROM
(select  student_id, COUNT(attend_status) PRESENT
from attendance
where attend_status='Present'
GROUP BY student_id) a FULL OUTER JOIN  
(select  student_id, COUNT(attend_status) ABSENT
from attendance
where attend_status='Absent'
GROUP BY student_id) b 
on( a.student_id=b.student_id)






