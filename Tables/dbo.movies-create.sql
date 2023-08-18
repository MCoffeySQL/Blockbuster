USE Blockbuster
GO

DROP TABLE IF EXISTS dbo.movies;
GO

CREATE TABLE dbo.movies(
  id INT IDENTITY(1,1) NOT NULL,
  genreID INT NULL,
  productionCompanyID INT NULL,
  [name] VARCHAR(60) NOT NULL,
  releaseDate DATE NULL,
  rating INT NULL,
  [length] TIME NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy VARCHAR(60) NOT NULL,
  modifiedBy VARCHAR(60) NOT NULL
);
GO