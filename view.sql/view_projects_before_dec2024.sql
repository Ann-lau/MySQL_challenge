CREATE VIEW ProjectsBeforeDec2024 AS
SELECT *
FROM Projects
WHERE Deadline < '2024-12-01';
