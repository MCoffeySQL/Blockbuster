USE Blockbuster;
GO

DROP TABLE IF EXISTS dbo.moviesGenre;
GO

CREATE TABLE dbo.moviesGenre(
  ID INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(60) NOT NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy VARCHAR(60) NOT NULL,
  modifiedBy VARCHAR(60) NOT NULL
);
GO