SQL> conn sys as sysdba
Enter password:
Connected.
SQL> create user j2ee identified by j2ee;

User created.

SQL> grant dba to j2ee;

Grant succeeded.

SQL> show user
USER is "SYS"
SQL> disconnect
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> conn j2ee/j2ee;
Connected.
SQL> create user joperator identified by joperator;

User created.

SQL> grant create session to joperator;

Grant succeeded.

SQL> disconnect
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> conn j2ee/j2ee
Connected.

SQL> create table teacher(teacher_id number(10) primary key, name varchar2(20) not null, school_name varchar2(20),
  2  salary number(6));

Table created.

SQL> insert into teacher(teacher_id, name, school_name, salary)
  2  values(1001, 'Md. Amjad Hossain', 'Dhaka School', 30000);

1 row created.

SQL> select *
  2  from teacher;

TEACHER_ID NAME                 SCHOOL_NAME              SALARY
---------- -------------------- -------------------- ----------
      1001 Md. Amjad Hossain    Dhaka School              30000

SQL> show user;
USER is "J2EE"
SQL> disconnect
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> conn joperator/joperator;
Connected.
SQL> disconnect;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> disconnect
SQL> conn j2ee/j2ee;
Connected.
SQL> grant select, insert, update on teacher to joperator with grant option;

Grant succeeded.

SQL> disconnect;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> conn joperator/joperator;
Connected.
SQL> select * from j2ee.teacher;

TEACHER_ID NAME                 SCHOOL_NAME              SALARY
---------- -------------------- -------------------- ----------
      1001 Md. Amjad Hossain    Dhaka School              30000

SQL> disconnect;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> connect j2ee/j2ee;
Connected.
SQL> show user
USER is "J2EE"
SQL> create user jguest identified by jguest;

User created.

SQL> grant create session to jguest;

Grant succeeded.

SQL> grant select on teacher to jguest with grant option;

Grant succeeded.

SQL> disconnect
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> connect jguest/jguest;
Connected.
SQL> select * from j2ee.teacher;

TEACHER_ID NAME                 SCHOOL_NAME              SALARY
---------- -------------------- -------------------- ----------
      1001 Md. Amjad Hossain    Dhaka School              30000

SQL> disconnect;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> connect joperator/joperator;
Connected.
SQL> insert into j2ee.teacher(teacher_id, name, school_name, salary)
  2  values(1002, 'Protap Sing', 'Rangpur School', 35000);

1 row created.

SQL> select *
  2  from j2ee.teacher;

TEACHER_ID NAME                 SCHOOL_NAME              SALARY
---------- -------------------- -------------------- ----------
      1001 Md. Amjad Hossain    Dhaka School              30000
      1002 Protap Sing          Rangpur School            35000


SQL> show user;
USER is "JOPERATOR"
SQL> disconnect
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
SQL> connect j2ee/j2ee;
Connected.
SQL> show user;
USER is "J2EE"

SQL> create table student(student_id number(10) primary key,
  2   student_name varchar2(20) not null,
  3   teacher_id number(10),
  4   constraint st_fk foreign key(teacher_id) references teacher(teacher_id));

Table created.