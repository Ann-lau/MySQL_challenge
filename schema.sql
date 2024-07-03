-- Create Clients table
CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    ClientName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255) NOT NULL,
    ContactEmail VARCHAR(255) NOT NULL
);

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeName VARCHAR(255) NOT NULL
);

-- Create Projects table
CREATE TABLE Projects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectName VARCHAR(255) NOT NULL,
    Requirements VARCHAR(255),
    Deadline DATE,
    ClientID INT,
    CONSTRAINT FK_ClientID FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

-- Create Team Members table
CREATE TABLE TeamMembers (
    ProjectID INT,
    EmployeeID INT,
    PRIMARY KEY (ProjectID, EmployeeID),
    CONSTRAINT FK_ProjectID FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create Project Team table
CREATE TABLE ProjectTeam (
    ProjectID INT,
    EmployeeID INT,
    TeamLead ENUM('Yes', 'No') DEFAULT 'No',
    PRIMARY KEY (ProjectID, EmployeeID),
    CONSTRAINT FK_ProjectTeam_ProjectID FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    CONSTRAINT FK_ProjectTeam_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Populate Tables

INSERT INTO Clients (ClientName, ContactName, ContactEmail)
VALUES
    ('Big Retail Inc.', 'Peter Parker', '[p.parker@gmail.com]'),
    ('EduTech Solutions', 'Walter White', '[w.white@gmail.com]'),
    ('Trendsetters Inc.', 'Sandra Bullock', '[s.bullock@gmail.com]'),
    ('Gearhead Supply Co.', 'Daniel Craig', '[d.craig@gmail.com]'),
    ('Fine Dine Group', 'Olivia Rodriguez', '[o.rodriguez@gmail.com]'),
    ('Green Thumb Gardens', 'Mark Robinson', '[m.robinson@gmail.com]'),
    ('Busy Bees Daycare', 'Emily Blunt', '[e.blunt@gmail.com]'),
    ('Acme Pharmaceuticals', 'David Kim', '[d.kim@gmail.com]'),
    ('Knowledge Stream Inc.', 'Matthew McConaughey', '[m.McConaughey@gmail.com]'),
    ('Software Craft LLC', 'Jennifer Lopez', '[j.lopez@gmail.com]');

INSERT INTO Employees (EmployeeName)
VALUES
    ('Alice Brown'),
    ('David Lee'),
    ('Jane Doe'),
    ('Michael Young'),
    ('Emily Chen'),
    ('William Green'),
    ('Sarah Jones');


INSERT INTO Projects (ProjectName, Requirements, Deadline, ClientID)
VALUES
    ('E-commerce Platform', 'Extensive documentation', '2024-12-01', 1),
    ('Mobile App for Learning', 'Gamified learning modules', '2024-08-15', 2),
    ('Social Media Management Tool', 'User-friendly interface with analytics', '2024-10-31', 3),
    ('Inventory Management System', 'Barcode integration and real-time stock tracking', '2024-11-01', 4),
    ('Restaurant Reservation System', 'Online booking with table management', '2024-09-01', 5),
    ('Content Management System (CMS)', 'Drag-and-drop interface for easy content updates', '2024-12-15', 6),
    ('Customer Relationship Management (CRM)', 'Secure parent portal and communication tools', '2024-10-01', 7),
    ('Data Analytics Dashboard', 'Real-time visualization of key performance indicators (KPIs)', '2024-11-30', 8),
    ('E-learning Platform Development', 'Interactive course creation and delivery tools', '2024-09-15', 9),
    ('Bug Tracking and Issue Management System', 'Prioritization and collaboration features for bug reporting', '2024-12-31', 10);

