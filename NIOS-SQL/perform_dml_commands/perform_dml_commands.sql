

-- insert data in learner table
INSERT INTO learner(Roll, Name, Marks)
VALUES
(111, "aaa",77),
(222, "acc",66),
(333, "beee",99);


-- update existing marks 77 to 88
UPDATE learner
SET MARKS = 88
WHERE MARKS = 77;

-- delete third row from the table
DELETE FROM learner
WHERE Roll = 333;

-- delete all rows from the learners table
DELETE FROM learner;

SELECT * FROM learner;