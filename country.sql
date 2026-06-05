CREATE TABLE Country (
    CountryID INT PRIMARY KEY,
    CountryName VARCHAR(50) NOT NULL
);

INSERT INTO Country VALUES
(1,'India'),
(2,'USA'),
(3,'Canada'),
(4,'Germany'),
(5,'Japan');
SELECT * FROM Country;
