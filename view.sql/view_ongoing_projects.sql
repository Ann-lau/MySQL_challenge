CREATE VIEW OngoingProjects AS
SELECT *
FROM Projects
WHERE Deadline > CURDATE();
