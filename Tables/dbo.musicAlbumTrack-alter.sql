USE Blockbuster;
GO

--Primary Key [ID]
ALTER TABLE dbo.musicAlbumTrack
  DROP CONSTRAINT IF EXISTS pk_musicAlbumTrack;
GO

ALTER TABLE dbo.musicAlbumTrack
  ADD CONSTRAINT pk_musicAlbumTrack
  PRIMARY KEY CLUSTERED (id);
GO

--Unique Key [name]
ALTER TABLE dbo.musicAlbumTrack
  DROP CONSTRAINT IF EXISTS u_musicAlbumTrack_name;
GO

ALTER TABLE dbo.musicAlbumTrack
  ADD CONSTRAINT u_musicAlbumTrack_name
  UNIQUE([name]);
GO

--Default [dateCreated]
ALTER TABLE dbo.musicAlbumTrack
  DROP CONSTRAINT IF EXISTS dv_musicAlbumTrack_dateCreated;
GO

ALTER TABLE dbo.musicAlbumTrack
  ADD CONSTRAINT dv_musicAlbumTrack_dateCreated
  DEFAULT GETDATE() FOR dateCreated;
GO

--Default [dateModified]
ALTER TABLE dbo.musicAlbumTrack
  DROP CONSTRAINT IF EXISTS dv_musicAlbumTrack_dateModified;
GO

ALTER TABLE dbo.musicAlbumTrack
  ADD CONSTRAINT dv_musicAlbumTrack_dateModified
  DEFAULT GETDATE() FOR dateModified;
GO

--Default [createdBy]
ALTER TABLE dbo.musicAlbumTrack
  DROP CONSTRAINT IF EXISTS dv_musicAlbumTrack_createdBy;
GO

ALTER TABLE dbo.musicAlbumTrack
  ADD CONSTRAINT dv_musicAlbumTrack_createdBy
  DEFAULT SUSER_SNAME() FOR createdBy;
GO

--Default [modifiedBy]
ALTER TABLE dbo.musicAlbumTrack
  DROP CONSTRAINT IF EXISTS dv_musicAlbumTrack_modifiedBy;
GO

ALTER TABLE dbo.musicAlbumTrack
  ADD CONSTRAINT dv_musicAlbumTrack_modifiedBy
  DEFAULT SUSER_SNAME() FOR modifiedBy;
GO