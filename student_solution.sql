CREATE TABLE course(
courseID INT,
courseName VARCHAR(30),
credits int
);
INSERT INTO course VALUES
(201,'DATABASE SYSTEMS',4),
(202,'DATA STRUCTURES',3),
(203,'MATHEMATICS',4);
CREATE TABLE enrollment(
enrollmentID INT,
studentID INT,
courseID INT,
);
INSERT INTO enrollment VALUES
(1,1001,201),
(2,1001,202),
(3,1002,203),
(4,1003,201);
SELECT course.courseID,
course.courseName,
enrollment.studentID
FROM course
LEFT JOIN enrollment
ON course.courseID=enrollment.courseID;
SELECT course.courseID,
course.courseName,
enrollment.studentID
FROM course
RIGHT JOIN enrollment
ON course.courseID=enrollment.courseID;


