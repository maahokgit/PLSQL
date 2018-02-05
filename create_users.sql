/*
Script Name: create_users.sql
log file: log_create_users.lst
Purpose: To create users
Author: Edward Ma
Date: 09.29.2017
*/

/* spool for log */
spool /home/oracle/logs/log_create_users.lst

/* set server output */
SET serveroutput on
/* show time on SQL ex 01:10 SQL> */
set time on

/* make SQL type in upper case, ex SELECT * FROM etc */
set sqlcase lower

/* display data with heading */
set heading on

/* making sure line size are default at 80 */
set linesize 80

/* making sure page size are default at 14 */
set pagesize 14

/* Display commands as they are executed */
set echo on

/* Error Trapping from www.orafaq.com/wiki/SQL%2APlus_FAQ#How_does_one_trap_errors_in_SQL.2APlus.3F */

WHENEVER OSERROR  EXIT 9
WHENEVER SQLERROR EXIT SQL.SQLCODE

/* drop user... just in case */
DROP USER datadev;
DROP USER dataqa;
DROP USER dataprd;

/* create users datadev, dataqa, dataprd, edma */
CREATE USER datadev IDENTIFIED BY edward;
CREATE USER dataqa IDENTIFIED BY edward;
CREATE USER dataprd IDENTIFIED BY edward;

/* check if users is in database */
SELECT username FROM dba_users WHERE username LIKE 'data%';

/* grant datadev privilage to connect and ALL table */
GRANT connect,create table, create view, create any index TO datadev;
/* apparently create any index is a bad idea...? 
Turning off spool*/
spool off
