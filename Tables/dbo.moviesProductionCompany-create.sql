USE BlockBuster;
GO

DROP TABLE IF EXISTS dbo.moviesProductionCompany;
GO

CREATE TABLE dbo.moviesProductionCompany(
  ID INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(60) NOT NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy VARCHAR(60) NOT NULL,
  modifiedBy VARCHAR(60) NOT NULL
);
GO