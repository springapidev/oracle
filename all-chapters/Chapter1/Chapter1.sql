==============================================
Chapter - 1
Retrieving Data Using the SQL SELECT Statement
==============================================

Selecting All Columns with Duplicate Values
-------------------------------------------
SELECT *
FROM tableName;

Selecting Specific Columns
--------------------------
SELECT attribute1, attribute2
FROM tableName;

Using Arithmetic Operators
--------------------------
SELECT attribute1, attribute2+300
FROM tableName;

Operator Precedence
-------------------
SELECT attribute1, 12*attribute2+300
FROM tableName;

SELECT attribute1, 12*(attribute2+300)
FROM tableName;

Null Values in Arithmetic Expressions
-------------------------------------
SELECT attribute1, 12*attribute2*attribute3WithNullValue
FROM tableName;

Using Column Aliases
--------------------
SELECT attribute1 AS alias, attribute2 alias, attribute3 AS "ali as", attribute4 "ali as"
FROM tableName;

Concatenation Operator
-----------------------
SELECT attribute1 ||'_'|| attribute2 AS "alias"
FROM tableName;

Using Literal Character Strings
-------------------------------
SELECT attribute1 ||' is a '|| attribute2 AS "alias"
FROM tableName;

Alternative Quote (q) Operator
------------------------------
SELECT attribute1 ||q'[ is a ]'|| attribute2 AS "alias"
FROM tableName;

Duplicate Rows Not Allowed
--------------------------
SELECT DISTINCT attribute1
FROM tableName;

Displaying the Table Structure
------------------------------
DESC tableName;
DESC[RIBE] tableName;
DESCRIBE tableName;