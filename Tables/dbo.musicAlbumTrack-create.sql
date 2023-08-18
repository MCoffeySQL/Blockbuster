USE Blockbuster;
GO

DROP TABLE IF EXISTS dbo.musicAlbumTrack;
GO

CREATE TABLE dbo.musicAlbumTrack(
  ID INT IDENTITY(1,1) NOT NULL,
  albumID INT NOT NULL,
  trackNumber INT NULL,
  [name] VARCHAR(255) NOT NULL,
  shortDescription VARCHAR(255) NULL,
  createdBy VARCHAR(60) NOT NULL,
  modifiedBy VARCHAR(60) NOT NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL
);
GO