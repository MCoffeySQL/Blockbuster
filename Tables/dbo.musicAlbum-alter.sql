USE Blockbuster;
GO

--Primary Key [ID]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS pk_musicAlbum;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT pk_musicAlbum
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key [artistID]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS fk_musicAlbum_artistID;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT fk_musicAlbum_artistID FOREIGN KEY (artistID)
  REFERENCES dbo.musicArtist(id)
  ON DELETE SET NULL
  ON UPDATE CASCADE;
GO

--Foreign Key [genreID]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS fk_musicAlbum_genreID;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT fk_musicAlbum_genreID FOREIGN KEY (genreID)
  REFERENCES dbo.musicGenre(id)
  ON DELETE SET NULL
  ON UPDATE CASCADE;
GO

--Unique Key [name]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS u_musicAlbum_name;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT u_musicAlbum_name
  UNIQUE([name]);
GO

--Default [dateCreated]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS dv_musicAlbum_dateCreated;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT dv_musicAlbum_dateCreated
  DEFAULT GETDATE() FOR dateCreated;
GO

--Default [dateModified]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS dv_musicAlbum_dateModified;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT dv_musicAlbum_dateModified
  DEFAULT GETDATE() FOR dateModified;
GO

--Default [createdBy]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS dv_musicAlbum_createdBy;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT dv_musicAlbum_createdBy
  DEFAULT SUSER_SNAME() FOR createdBy;
GO

--Default [modifiedBy]
ALTER TABLE dbo.musicAlbum
  DROP CONSTRAINT IF EXISTS dv_musicAlbum_modifiedBy;
GO

ALTER TABLE dbo.musicAlbum
  ADD CONSTRAINT dv_musicAlbum_modifiedBy
  DEFAULT SUSER_SNAME() FOR modifiedBy;
GO