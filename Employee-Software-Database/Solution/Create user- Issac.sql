# user Isaac Asimov with the password iRobot2016

CREATE USER 'Isaac Asimov'@'localhost' IDENTIFIED BY 'iRobot2016';

# Grant SELECT and UPDATE privileges to user  

GRANT SELECT, UPDATE ON company.computer TO 'Isaac Asimov'@'localhost';

SHOW GRANTS FOR 'Isaac Asimov'@'localhost';