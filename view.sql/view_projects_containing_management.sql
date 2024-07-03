CREATE VIEW ProjectsContainingManagement AS
SELECT *
FROM Projects
WHERE ProjectName LIKE '%Management%';
