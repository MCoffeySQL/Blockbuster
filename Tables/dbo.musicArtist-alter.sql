USE Blockbuster;
GO

--Primary Key [ID]
ALTER TABLE dbo.musicArtist
  DROP CONSTRAINT IF EXISTS pk_musicArtist;
GO

ALTER TABLE dbo.musicArtist
  ADD CONSTRAINT pk_musicArtist
  PRIMARY KEY CLUSTERED (id);
GO

--Unique Key [name]
ALTER TABLE dbo.musicArtist
  DROP CONSTRAINT IF EXISTS u_musicArtist_name;
GO

ALTER TABLE dbo.musicArtist
  ADD CONSTRAINT u_musicArtist_name
  UNIQUE([name]);
GO

--Default [dateCreated]
ALTER TABLE dbo.musicArtist
  DROP CONSTRAINT IF EXISTS dv_musicArtist_dateCreated;
GO

ALTER TABLE dbo.musicArtist
  ADD CONSTRAINT dv_musicArtist_dateCreated
  DEFAULT GETDATE() FOR dateCreated;
GO

--Default [dateModified]
ALTER TABLE dbo.musicArtist
  DROP CONSTRAINT IF EXISTS dv_musicArtist_dateModified;
GO

ALTER TABLE dbo.musicArtist
  ADD CONSTRAINT dv_musicArtist_dateModified
  DEFAULT GETDATE() FOR dateModified;
GO

--Default [createdBy]
ALTER TABLE dbo.musicArtist
  DROP CONSTRAINT IF EXISTS dv_musicArtist_createdBy;
GO

ALTER TABLE dbo.musicArtist
  ADD CONSTRAINT dv_musicArtist_createdBy
  DEFAULT SUSER_SNAME() FOR createdBy;
GO

--Default [modifiedBy]
ALTER TABLE dbo.musicArtist
  DROP CONSTRAINT IF EXISTS dv_musicArtist_modifiedBy;
GO

ALTER TABLE dbo.musicArtist
  ADD CONSTRAINT dv_musicArtist_modifiedBy
  DEFAULT SUSER_SNAME() FOR modifiedBy;
GO