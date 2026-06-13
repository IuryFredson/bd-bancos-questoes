----------------------
-- Setting auto commit
----------------------

SELECT @@AUTOCOMMIT;

SET AUTOCOMMIT=0;

------------------------------------------
-- Demonstrating ISOLATION of transactions
------------------------------------------

SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

UPDATE EMPLOYEE SET salary = 100000 WHERE fname='John';
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

-- Open new connection and execute
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

-------------------------------------------------
-- Demonstrating DURATION lasts only after commit
-------------------------------------------------

-- Kill Application and start again

SET AUTOCOMMIT=0;
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

UPDATE EMPLOYEE SET salary = 100000 WHERE fname='John';
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

COMMIT;

-- Kill Application and start again

SET AUTOCOMMIT=0;
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

-------------------------
-- Demonstrating ROLLBACK
-------------------------

UPDATE EMPLOYEE SET salary = 200000 WHERE fname='John';
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';
ROLLBACK;
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

-----------------------------------------------------
-- HOW TO USE SET TRANSACTION
-----------------------------------------------------

COMMIT;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET TRANSACTION READ ONLY;
START TRANSACTION;
ROLLBACK;
UPDATE EMPLOYEE SET salary = 200000 WHERE fname='John';
ROLLBACK;

-- Kill Application and start again
SET AUTOCOMMIT=0;
SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';
COMMIT;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET TRANSACTION READ ONLY;
START TRANSACTION;
UPDATE EMPLOYEE SET salary = 100000 WHERE fname='John';
COMMIT;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET TRANSACTION READ WRITE;
START TRANSACTION;
UPDATE EMPLOYEE SET salary = 5000 WHERE fname='John';
COMMIT;

SELECT fname, lname, salary FROM EMPLOYEE  WHERE fname='John';

