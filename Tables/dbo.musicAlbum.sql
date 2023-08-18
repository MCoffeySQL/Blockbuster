USE Blockbuster
GO

DROP TABLE IF EXISTS dbo.musicAlbum;
GO

CREATE TABLE dbo.musicAlbum(
  ID INT IDENTITY(1,1) NOT NULL,
  artistID INT NULL,
  genreID INT NULL,
  [name] VARCHAR(60) NOT NULL,
  shortDescription VARCHAR(255) NULL,
  createdBy VARCHAR(60) NOT NULL,
  modifiedBy VARCHAR(60) NOT NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL
);
GO